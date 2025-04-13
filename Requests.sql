-- 1. Запрос на поиск "VIP-клиентов" - тех, кто потратил больше 10,000 рублей и имеет более 1 велосипеда
-- Выводит клиентов с высокими тратами и несколькими велосипедами, ранжируя их по общей сумме расходов
SELECT 
    c.ClientID,
    c.Name,
    c.Phone,
    COUNT(DISTINCT b.BicycleID) AS BicycleCount,
    SUM(p.Amount) AS TotalSpent,
    ROUND(SUM(p.Amount) / COUNT(DISTINCT p.PaymentID), 2) AS AvgPayment,
    DENSE_RANK() OVER (ORDER BY SUM(p.Amount) DESC) AS SpendingRank
FROM Clients c
JOIN Bicycles b ON c.ClientID = b.ClientID
JOIN Services s ON c.ClientID = s.ClientID
JOIN Payments p ON s.ServiceID = p.ServiceID
GROUP BY c.ClientID, c.Name, c.Phone
HAVING SUM(p.Amount) > 10000 AND COUNT(DISTINCT b.BicycleID) > 1
ORDER BY TotalSpent DESC;

-- 2. Запрос на поиск самых популярных категорий запчастей
-- Выводит топ-5 категорий запчастей по количеству использований в услугах
SELECT sc.CategoryID, sc.Name, COUNT(sw.SpareID) AS UsageCount
FROM SpareCategories sc
LEFT JOIN Spares s ON sc.CategoryID = s.CategoryID
LEFT JOIN ServiceWorks sw ON s.SpareID = sw.SpareID
GROUP BY sc.CategoryID, sc.Name
ORDER BY UsageCount DESC
LIMIT 5;

-- 3. Запрос на анализ доходов по месяцам
-- Выводит ежемесячную статистику доходов, отсортированную по убыванию суммы
SELECT 
    YEAR(PaymentDate) AS Year,
    MONTH(PaymentDate) AS Month,
    SUM(Amount) AS TotalIncome,
    ROUND(AVG(Amount), 2) AS AvgPayment,
    COUNT(*) AS PaymentCount
FROM Payments
GROUP BY YEAR(PaymentDate), MONTH(PaymentDate)
HAVING COUNT(*) > 3
ORDER BY TotalIncome DESC;

-- 4. Запрос на поиск мастеров с наибольшим количеством выполненных услуг
-- Выводит мастеров и количество выполненных ими услуг, ранжируя их по убыванию
SELECT 
    s.ServicemanID,
    s.Name,
    COUNT(sh.ServiceID) AS CompletedServices,
    RANK() OVER (ORDER BY COUNT(sh.ServiceID) DESC) AS Rank
FROM Servicemen s
JOIN ServiceHistory sh ON s.ServicemanID = sh.ChangedBy
WHERE sh.Status = 'Выполнено'
GROUP BY s.ServicemanID, s.Name
ORDER BY CompletedServices DESC;

-- 5. Запрос на анализ длительности выполнения услуг
-- Выводит среднее время выполнения услуг по каждому типу услуги
SELECT 
    sv.Name,
    AVG(TIMESTAMPDIFF(HOUR, 
        MIN(CASE WHEN sh.Status = 'Принято' THEN sh.ChangeDate END),
        MAX(CASE WHEN sh.Status = 'Выполнено' THEN sh.ChangeDate END)
    )) AS AvgHoursToComplete
FROM Services sv
JOIN ServiceHistory sh ON sv.ServiceID = sh.ServiceID
GROUP BY sv.Name
HAVING AvgHoursToComplete IS NOT NULL
ORDER BY AvgHoursToComplete DESC;

-- 6. Запрос на поиск клиентов с неоплаченными услугами
-- Выводит клиентов, у которых есть выполненные, но не оплаченные услуги
SELECT DISTINCT c.ClientID, c.Name, c.Phone
FROM Clients c
JOIN Services s ON c.ClientID = s.ClientID
WHERE s.ServiceID IN (
    SELECT sh.ServiceID 
    FROM ServiceHistory sh 
    WHERE sh.Status = 'Выполнено'
    AND sh.ServiceID NOT IN (
        SELECT p.ServiceID 
        FROM Payments p
        JOIN ServiceHistory sh2 ON p.ServiceID = sh2.ServiceID 
        WHERE sh2.Status = 'Оплачено'
    )
)
ORDER BY c.Name;

-- 7. Запрос на анализ эффективности мастеров
-- Выводит статистику по мастерам: количество услуг, общая сумма, среднее время выполнения
SELECT 
    s.ServicemanID,
    s.Name,
    COUNT(DISTINCT sv.ServiceID) AS ServiceCount,
    SUM(p.Amount) AS TotalRevenue,
    AVG(TIMESTAMPDIFF(HOUR, 
        MIN(CASE WHEN sh.Status = 'Принято' THEN sh.ChangeDate END),
        MAX(CASE WHEN sh.Status = 'Выполнено' THEN sh.ChangeDate END)
    )) AS AvgHoursPerService,
    ROUND(SUM(p.Amount) / COUNT(DISTINCT sv.ServiceID), 2) AS AvgRevenuePerService
FROM Servicemen s
LEFT JOIN Services sv ON s.ServicemanID = sv.ServicemanID
LEFT JOIN ServiceHistory sh ON sv.ServiceID = sh.ServiceID
LEFT JOIN Payments p ON sv.ServiceID = p.ServiceID
GROUP BY s.ServicemanID, s.Name
HAVING ServiceCount > 0
ORDER BY TotalRevenue DESC;

-- 8. Запрос на поиск наиболее прибыльных услуг
-- Выводит топ-3 услуги по общей прибыли с разбивкой по месяцам
WITH MonthlyServiceRevenue AS (
    SELECT 
        sv.ServiceID,
        sv.Name,
        YEAR(p.PaymentDate) AS Year,
        MONTH(p.PaymentDate) AS Month,
        SUM(p.Amount) AS MonthlyRevenue
    FROM Services sv
    JOIN Payments p ON sv.ServiceID = p.ServiceID
    GROUP BY sv.ServiceID, sv.Name, YEAR(p.PaymentDate), MONTH(p.PaymentDate)
)
SELECT 
    ServiceID,
    Name,
    Year,
    Month,
    MonthlyRevenue,
    RANK() OVER (PARTITION BY Year, Month ORDER BY MonthlyRevenue DESC) AS RevenueRank
FROM MonthlyServiceRevenue
QUALIFY RevenueRank <= 3
ORDER BY Year, Month, RevenueRank;

-- 9. Запрос на анализ запасных частей
-- Выводит запчасти с низким запасом и высокой популярностью
SELECT 
    s.SpareID,
    s.Name,
    s.QuantityInStock,
    COUNT(sw.ServiceWorkID) AS UsageCount,
    CASE 
        WHEN s.QuantityInStock < 5 THEN 'Критически низкий'
        WHEN s.QuantityInStock < 10 THEN 'Низкий'
        ELSE 'Достаточный'
    END AS StockStatus,
    ROUND(COUNT(sw.ServiceWorkID) / (SELECT COUNT(*) FROM ServiceWorks) * 100, 2) AS UsagePercentage
FROM Spares s
LEFT JOIN ServiceWorks sw ON s.SpareID = sw.SpareID
GROUP BY s.SpareID, s.Name, s.QuantityInStock
HAVING QuantityInStock < 10 AND UsageCount > 0
ORDER BY UsageCount DESC, QuantityInStock ASC;

-- 10. Запрос на поиск клиентов с наибольшими тратами
-- Выводит топ-10 клиентов по общей сумме оплаченных услуг с разбивкой по годам
SELECT 
    c.ClientID,
    c.Name,
    YEAR(p.PaymentDate) AS Year,
    SUM(p.Amount) AS TotalSpent,
    RANK() OVER (PARTITION BY YEAR(p.PaymentDate) ORDER BY SUM(p.Amount) DESC) AS RankByYear,
    SUM(SUM(p.Amount)) OVER (PARTITION BY c.ClientID ORDER BY YEAR(p.PaymentDate)) AS CumulativeSpent
FROM Clients c
JOIN Services s ON c.ClientID = s.ClientID
JOIN Payments p ON s.ServiceID = p.ServiceID
GROUP BY c.ClientID, c.Name, YEAR(p.PaymentDate)
HAVING TotalSpent > 0
QUALIFY RankByYear <= 10
ORDER BY Year, TotalSpent DESC;