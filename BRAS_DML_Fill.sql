-- Заполнение таблицы Servicemen (Мастера)
INSERT INTO Servicemen (Name, Phone, Email) VALUES
('Алексей', '+79161234567', 'alexey.mountainbike@yandex.ru'),
('Дмитрий', '+79262345678', 'dmitriy.speed@mail.ru'),
('Анна', '+79373456789', 'anna.wheels@gmail.com'),
('Максим', '+79484567890', 'max.bikefix@list.ru'),
('Игорь', '+79595678901', 'igor.velomaster@yandex.by'),
('Елена', '+79606789012', 'elena.cycle@yandex.ru'),
('Сергей', '+79717890123', 'sergey.bikerepair@mail.ru'),
('Андрей', '+79828901234', 'andrey.veloservice@gmail.com'),
('Ольга', '+79939012345', 'olga.bikehelp@list.ru'),
('Павел', '+79040123456', 'pavel.cyclerepair@yandex.by'),
('Марина', '+79151234567', 'marina.bike@yandex.ru'),
('Артем', '+79262345678', 'artem.velofix@mail.ru'),
('Татьяна', '+79373456789', 'tanya.bikeservice@gmail.com'),
('Виталий', '+79484567890', 'vitaliy.cyclemaster@list.ru'),
('Юлия', '+79595678901', 'julia.velohelp@yandex.by');

-- Заполнение таблицы Clients (Клиенты)
INSERT INTO Clients (Name, Phone, RegisterDate, ServicemanID) VALUES
('Артем', '+79161234561', '2019-05-10 09:15:00', 1),
('Анастасия', '+79262345672', '2019-06-12 10:30:00', 2),
('Илья', '+79373456783', '2019-07-15 11:45:00', 3),
('Ксения', '+79484567894', '2019-08-18 14:20:00', 4),
('Владислав', '+79595678905', '2019-09-20 16:35:00', 5),
('Дарья', '+79606789016', '2019-10-05 08:50:00', 6),
('Никита', '+79717890127', '2019-11-10 12:10:00', 7),
('Вероника', '+79828901238', '2019-12-15 15:25:00', 8),
('Роман', '+79939012349', '2020-01-20 17:40:00', 9),
('Екатерина', '+79040123450', '2020-02-01 10:55:00', 10),
('Константин', '+79151234561', '2020-03-05 13:05:00', 11),
('Алина', '+79262345672', '2020-04-10 09:15:00', 12),
('Денис', '+79373456783', '2020-05-15 11:30:00', 13),
('Валерия', '+79484567894', '2020-06-20 14:45:00', 14),
('Артем', '+79595678905', '2020-07-25 16:00:00', 15),
('Михаил', '+79606789016', '2020-08-30 18:15:00', 1),
('София', '+79717890127', '2020-09-04 10:30:00', 2),
('Александр', '+79828901238', '2020-10-09 12:45:00', 3),
('Виктория', '+79939012349', '2020-11-14 15:00:00', 4),
('Алексей', '+79040123450', '2020-12-19 17:15:00', 5),
('Мария', '+79151234561', '2021-01-24 09:30:00', 6),
('Дмитрий', '+79262345672', '2021-02-28 11:45:00', 7),
('Анна', '+79373456783', '2021-04-05 14:00:00', 8),
('Сергей', '+79484567894', '2021-05-10 16:15:00', 9),
('Елена', '+79595678905', '2021-06-15 18:30:00', 10),
('Андрей', '+79606789016', '2021-07-20 10:45:00', 11),
('Ольга', '+79717890127', '2021-08-25 13:00:00', 12),
('Павел', '+79828901238', '2021-09-30 15:15:00', 13),
('Марина', '+79939012349', '2021-11-05 17:30:00', 14),
('Артем', '+79040123450', '2021-12-10 19:45:00', 15),
('Татьяна', '+79151234561', '2022-01-15 09:00:00', 1),
('Виталий', '+79262345672', '2022-02-20 11:15:00', 2),
('Юлия', '+79373456783', '2022-03-27 13:30:00', 3),
('Иван', '+79484567894', '2022-05-02 15:45:00', 4),
('Екатерина', '+79595678905', '2022-06-07 18:00:00', 5),
('Александр', '+79606789016', '2022-07-12 10:15:00', 6),
('Анастасия', '+79717890127', '2022-08-17 12:30:00', 7),
('Дмитрий', '+79828901238', '2022-09-22 14:45:00', 8),
('Анна', '+79939012349', '2022-10-27 17:00:00', 9),
('Сергей', '+79040123450', '2022-12-01 19:15:00', 10),
('Елена', '+79151234561', '2023-01-05 09:30:00', 11),
('Андрей', '+79262345672', '2023-02-10 11:45:00', 12),
('Ольга', '+79373456783', '2023-03-17 14:00:00', 13),
('Павел', '+79484567894', '2023-04-22 16:15:00', 14),
('Марина', '+79595678905', '2023-05-27 18:30:00', 15),
('Артем', '+79606789016', '2023-07-01 10:45:00', 1),
('Татьяна', '+79717890127', '2023-08-05 13:00:00', 2),
('Виталий', '+79828901238', '2023-09-09 15:15:00', 3),
('Юлия', '+79939012349', '2023-10-14 17:30:00', 4),
('Иван', '+79040123450', '2023-11-18 19:45:00', 5),
('Екатерина', '+79151234561', '2023-12-23 09:00:00', 6),
('Александр', '+79262345672', '2024-01-27 11:15:00', 7),
('Анастасия', '+79373456783', '2024-03-02 13:30:00', 8),
('Дмитрий', '+79484567894', '2024-04-06 15:45:00', 9),
('Анна', '+79595678905', '2024-05-11 18:00:00', 10);

-- Заполнение таблицы Bicycles (Велосипеды)
INSERT INTO Bicycles (Name, Manufacturer, Type, ClientID) VALUES
('Navigator 300', 'Stels', 'Mountain', 1),
('Aim Pro', 'Forward', 'City', 2),
('Emonda ALR 5', 'Trek', 'Road', 3),
('Kids Bike 20"', 'Altair', 'Kids', 4),
('Escape 2', 'Giant', 'Hybrid', 5),
('Big Nine 300', 'Merida', 'Mountain', 6),
('Cosmo', 'Author', 'City', 7),
('Allez', 'Specialized', 'Road', 8),
('Kids Bike 16"', 'Novatrack', 'Kids', 9),
('SL Road', 'Cube', 'Hybrid', 10),
('Scale 965', 'Scott', 'Mountain', 11),
('Quick 5', 'Cannondale', 'City', 12),
('Via Nirone 7', 'Bianchi', 'Road', 13),
('Kids Bike 12"', 'Stels', 'Kids', 14),
('Transeo 4.0', 'GT', 'Hybrid', 15),
('Lava Dome', 'Kona', 'Mountain', 16),
('Absolute 3.0', 'Fuji', 'City', 17),
('Dogma F12', 'Pinarello', 'Road', 18),
('Kids Bike 18"', 'Format', 'Kids', 19),
('Search XR', 'Norco', 'Hybrid', 20),
('Rockhopper', 'Specialized', 'Mountain', 21),
('Crossway 20', 'Cube', 'City', 22),
('TCR Advanced', 'Giant', 'Road', 23),
('Kids Bike 14"', 'Merida', 'Kids', 24),
('Fastroad', 'Giant', 'Hybrid', 25),
('Chisel', 'Specialized', 'Mountain', 26),
('Crosstown', 'Trek', 'City', 27),
('Madone', 'Trek', 'Road', 28),
('Kids Bike 24"', 'Scott', 'Kids', 29),
('Sirrus', 'Specialized', 'Hybrid', 30),
('Fathom', 'Giant', 'Mountain', 31),
('Metro', 'Cannondale', 'City', 32),
('Supersix', 'Cannondale', 'Road', 33),
('Kids Bike 20"', 'Giant', 'Kids', 34),
('Contend', 'Giant', 'Hybrid', 35),
('Anthem', 'Giant', 'Mountain', 36),
('Urban', 'Scott', 'City', 37),
('Addict', 'Scott', 'Road', 38),
('Kids Bike 16"', 'Cube', 'Kids', 39),
('Pathlite', 'Cube', 'Hybrid', 40),
('Procaliber', 'Trek', 'Mountain', 41),
('Verde', 'Bianchi', 'City', 42),
('Oltre', 'Bianchi', 'Road', 43),
('Kids Bike 12"', 'Bianchi', 'Kids', 44),
('C-Sport', 'Bianchi', 'Hybrid', 45),
('Stance', 'Giant', 'Mountain', 1),
('Cross City', 'Merida', 'City', 2),
('Reacto', 'Merida', 'Road', 3),
('Kids Bike 18"', 'Merida', 'Kids', 4),
('Speeder', 'Merida', 'Hybrid', 5),
('Torque', 'Giant', 'Mountain', 6),
('Crossway', 'Cube', 'City', 7),
('Scultura', 'Merida', 'Road', 8),
('Kids Bike 14"', 'Trek', 'Kids', 9),
('Dual Sport', 'Trek', 'Hybrid', 10),
('Trance', 'Giant', 'Mountain', 11);

-- Заполнение таблицы SpareCategories (Категории запчастей)
INSERT INTO SpareCategories (Name, Description) VALUES
('Тормозные системы', 'Все компоненты тормозной системы: колодки, диски, суппорты, гидролинии и механические тросы'),
('Трансмиссия', 'Компоненты передачи: цепи, звезды, переключатели, кассеты, манетки и шатуны'),
('Колеса и покрышки', 'Обода, спицы, втулки, покрышки, камеры и ободные ленты'),
('Рулевое управление', 'Рули, выносы, рулевые колонки, подшипники и крепления'),
('Подвеска', 'Амортизационные вилки, задние амортизаторы, пружины и демпферы'),
('Электрооборудование', 'Фары, задние фонари, динамо-машины, датчики и компьютеры'),
('Рама и вилка', 'Рамы, жесткие и амортизационные вилки, дропауты и крепления'),
('Седла и подседельные штыри', 'Седла различных типов, подседельные штыри и крепления'),
('Педали и шатуны', 'Педали (контактные и платформы), шатуны, каретки и оси'),
('Тормозные ручки и манетки', 'Ручки тормозов, комбинированные манетки и крепления'),
('Подшипники и втулки', 'Подшипники всех типов, втулки колес и каретки'),
('Цепные приводы', 'Цепи, звезды, ролики натяжителя и защитные кожухи'),
('Тросики и рубашки', 'Тросики переключения и тормозов, рубашки и концевики'),
('Крепежные элементы', 'Болты, гайки, шайбы, хомуты и другие крепежные детали'),
('Смазочные материалы', 'Смазки для цепи, подшипников, амортизаторов и других компонентов');

-- Заполнение таблицы Spares (Запчасти)
INSERT INTO Spares (Name, Description, QuantityInStock, Price, CategoryID) VALUES
('Тормозные колодки Shimano B01S', 'Колодки для V-brake', 25, 450.00, 1),
('Диск тормозной 160мм RT54', 'Ротор для дисковых тормозов Centerlock', 18, 1200.00, 1),
('Тормозной трос Jagwire', 'Трос с тефлоновым покрытием', 42, 350.00, 1),
('Цепь Shimano HG54', '9-скоростная цепь', 30, 1800.00, 2),
('Кассета Shimano CS-HG200', '8-скоростная 11-34T', 15, 2200.00, 2),
('Передний переключатель Shimano Tourney', '3-скоростной', 20, 950.00, 2),
('Покрышка Continental Ride Tour', '28" 700x32c', 35, 2100.00, 3),
('Камера Schwalbe SV17', '28" 700x32-47', 50, 450.00, 3),
('Обод Alexrims DC25', '26" двойной алюминиевый', 12, 3200.00, 3),
('Руль MTB Zoom', 'Алюминиевый 640мм', 22, 1200.00, 4),
('Вынос Ritchey Comp', 'Алюминиевый 90мм', 18, 1800.00, 4),
('Рулевая колонка FSA', 'Интегрированная 1-1/8"', 15, 2500.00, 4),
('Вилка амортизационная Suntour XCT', 'Ход 100мм', 10, 4500.00, 5),
('Амортизатор задний RockShox Deluxe', 'Ход 120мм', 8, 6800.00, 5),
('Фара Sigma Sport Buster 60', '60 люмен, USB зарядка', 25, 1500.00, 6),
('Динамо-втулка Shimano DH-3D37', 'Генераторная втулка', 5, 8500.00, 6),
('Рама алюминиевая 19"', 'Горная рама 26" колеса', 7, 12500.00, 7),
('Вилка жесткая стальная', '28" 1" резьба', 12, 1800.00, 7),
('Седло Selle Royal Freccia', 'Гелевое, стальные рельсы', 30, 3200.00, 8),
('Подседельный штырь Kalloy', '27.2мм 350мм', 25, 950.00, 8),
('Педали Wellgo MG3', 'Контактные MTB', 18, 2800.00, 9),
('Шатуны Shimano FC-M311', '3 звезды 170мм', 15, 4200.00, 9),
('Тормозные ручки Shimano BL-MT200', 'Гидравлические', 20, 2500.00, 10),
('Манетки Shimano SL-M315', '3x8 скоростей', 15, 3200.00, 10),
('Подшипник каретки', 'BSA 68mm', 40, 600.00, 11),
('Втулка задняя Shimano FH-RM35', '32 спицы', 12, 3800.00, 11),
('Звезда Shimano FC-M361', '42-32-22T', 18, 2100.00, 12),
('Ролики переключателя', 'Верхний и нижний', 25, 800.00, 12),
('Тросик переключения Shimano', 'С покрытием', 50, 300.00, 13),
('Рубашка троса Jagwire', '4мм, 1.5м', 30, 450.00, 13),
('Болт крепления седла', 'M6x20мм', 100, 50.00, 14),
('Гайка оси колеса', 'M10', 80, 30.00, 14),
('Смазка для цепи Finish Line', '100мл', 40, 650.00, 15),
('Тормозные колодки Tektro', 'Для дисковых тормозов', 20, 750.00, 1),
('Цепь KMC X9', '9-скоростная с замком', 25, 2000.00, 2),
('Кассета SRAM PG-850', '8-скоростная 11-32T', 15, 2400.00, 2),
('Покрышка Maxxis Ardent', '27.5" 2.25', 18, 2800.00, 3),
('Камера Continental', '29"', 25, 500.00, 3),
('Обод Mavic XM319', '26"', 10, 3500.00, 3),
('Руль Ritchey Comp', '31.8мм 720мм', 15, 2800.00, 4),
('Вынос Thomson Elite', '31.8мм 90мм', 12, 4500.00, 4),
('Вилка RockShox Recon', 'Ход 120мм', 8, 12500.00, 5),
('Амортизатор Fox Float DPS', 'Ход 150мм', 5, 18500.00, 5),
('Фара Lezyne Macro Drive', '800 люмен', 15, 4500.00, 6),
('Компьютер Garmin Edge 530', 'GPS', 10, 28000.00, 6),
('Рама карбоновая', '29" XL', 3, 45000.00, 7),
('Седло Brooks B17', 'Кожаное', 12, 8500.00, 8),
('Педали Shimano PD-M520', 'Контактные', 20, 3500.00, 9),
('Тормозные ручки SRAM Guide R', 'Гидравлические', 15, 6500.00, 10),
('Подшипник рулевой колонки', '1-1/8"', 30, 800.00, 11);

-- Заполнение таблицы Services (Услуги)
INSERT INTO Services (Name, Description, Price, BicycleID, ClientID, ServicemanID) VALUES
('Регулировка тормозов', 'Настройка и центровка тормозов', 500.00, 1, 1, 1),
('Замена цепи', 'Установка новой цепи', 800.00, 2, 2, 2),
('Регулировка переключателей', 'Точная настройка передач', 600.00, 3, 3, 3),
('Замена покрышки', 'Установка новой покрышки и камеры', 400.00, 4, 4, 4),
('Полное ТО', 'Комплексное техническое обслуживание', 2500.00, 5, 5, 5),
('Ремонт колеса', 'Правка восьмерки', 700.00, 6, 6, 6),
('Замена каретки', 'Установка новой каретки', 1200.00, 7, 7, 7),
('Регулировка рулевой колонки', 'Настройка подшипников', 450.00, 8, 8, 8),
('Замена тросиков', 'Установка новых тросиков переключения и тормозов', 900.00, 9, 9, 9),
('Чистка и смазка цепи', 'Очистка и смазка трансмиссии', 300.00, 10, 10, 10),
('Установка багажника', 'Монтаж заднего багажника', 600.00, 11, 11, 11),
('Замена вилки', 'Установка новой амортизационной вилки', 2000.00, 12, 12, 12),
('Ремонт рамы', 'Заварка трещины на раме', 3500.00, 13, 13, 13),
('Установка электрооборудования', 'Монтаж фары и динамо-втулки', 1800.00, 14, 14, 14),
('Замена подшипников втулки', 'Обслуживание задней втулки', 1100.00, 15, 15, 15),
('Регулировка тормозов V-brake', 'Настройка ободных тормозов', 500.00, 16, 16, 1),
('Замена кассеты', 'Установка новой кассеты', 700.00, 17, 17, 2),
('Регулировка дисковых тормозов', 'Настройка гидравлических тормозов', 600.00, 18, 18, 3),
('Замена спиц', 'Переспицовка колеса', 900.00, 19, 19, 4),
('Сервис амортизационной вилки', 'Чистка и замена масла', 1500.00, 20, 20, 5);

-- Заполнение таблицы ServiceWorks (Работы по услугам)
INSERT INTO ServiceWorks (ServiceID, SpareID, Amount, Cost) VALUES
(1, 1, 1, 450.00),
(1, 3, 1, 350.00),
(2, 4, 1, 1800.00),
(3, 6, 1, 950.00),
(4, 7, 1, 2100.00),
(4, 8, 1, 450.00),
(5, 1, 1, 450.00),
(5, 3, 2, 700.00),
(5, 4, 1, 1800.00),
(5, 10, 1, 1200.00),
(6, 9, 1, 3200.00),
(7, 22, 1, 4200.00),
(8, 12, 1, 2500.00),
(9, 3, 2, 700.00),
(9, 23, 1, 650.00),
(10, 33, 1, 650.00),
(11, 26, 1, 3800.00),
(12, 13, 1, 4500.00),
(13, 17, 1, 12500.00),
(14, 15, 1, 1500.00),
(14, 16, 1, 8500.00),
(15, 25, 2, 1200.00),
(16, 1, 1, 450.00),
(17, 5, 1, 2200.00),
(18, 2, 1, 1200.00),
(19, 9, 1, 3200.00),
(20, 13, 1, 4500.00),
(1, 34, 1, 750.00),
(2, 35, 1, 2000.00),
(3, 6, 1, 950.00),
(4, 36, 1, 2800.00),
(5, 37, 1, 500.00),
(6, 38, 1, 3500.00),
(7, 39, 1, 2800.00),
(8, 40, 1, 4500.00),
(9, 41, 1, 12500.00),
(10, 42, 1, 18500.00),
(11, 43, 1, 4500.00),
(12, 44, 1, 28000.00),
(13, 45, 1, 45000.00);

-- Заполнение таблицы Payments (Платежи)
INSERT INTO Payments (ServiceID, PaymentDate, PaymentMethod, Amount) VALUES
(1, '2024-01-15 10:30:00', 'Карта', 950.00),
(2, '2024-01-16 11:45:00', 'Наличные', 2600.00),
(3, '2024-01-18 14:20:00', 'Перевод', 1550.00),
(4, '2024-01-20 16:35:00', 'Карта', 2550.00),
(5, '2024-02-06 08:50:00', 'Наличные', 5150.00),
(6, '2024-02-11 12:10:00', 'Карта', 3900.00),
(7, '2024-02-16 15:25:00', 'Перевод', 5400.00),
(8, '2024-02-21 17:40:00', 'Наличные', 2950.00),
(9, '2024-03-02 10:55:00', 'Карта', 4250.00),
(10, '2024-03-06 13:05:00', 'Перевод', 3800.00),
(11, '2024-03-11 09:15:00', 'Наличные', 2800.00),
(12, '2024-03-16 11:30:00', 'Карта', 6500.00),
(13, '2024-03-21 14:45:00', 'Перевод', 16000.00),
(14, '2024-03-26 16:00:00', 'Наличные', 11800.00),
(15, '2024-04-01 10:15:00', 'Карта', 1260.00),
(16, '2024-04-05 13:30:00', 'Перевод', 1200.00),
(17, '2024-04-10 09:45:00', 'Наличные', 2900.00),
(18, '2024-04-15 12:00:00', 'Карта', 1800.00),
(19, '2024-04-20 15:15:00', 'Перевод', 4100.00),
(20, '2024-04-25 17:30:00', 'Наличные', 6000.00),
(1, '2024-01-16 11:00:00', 'Карта', 500.00),
(2, '2024-01-17 12:15:00', 'Наличные', 800.00),
(3, '2024-01-19 15:30:00', 'Перевод', 600.00),
(4, '2024-01-21 17:45:00', 'Карта', 400.00),
(5, '2024-02-07 09:00:00', 'Наличные', 2500.00),
(6, '2024-02-12 13:20:00', 'Перевод', 700.00),
(7, '2024-02-17 16:35:00', 'Карта', 1200.00),
(8, '2024-02-22 18:50:00', 'Наличные', 450.00),
(9, '2024-03-03 11:05:00', 'Перевод', 900.00),
(10, '2024-03-07 14:15:00', 'Карта', 300.00);

-- Заполнение таблицы ServiceHistory (История услуг)
INSERT INTO ServiceHistory (ServiceID, Status, ChangeDate, ChangedBy) VALUES
(1, 'Принято', '2024-01-10 09:15:00', 1),
(1, 'В работе', '2024-01-11 10:30:00', 1),
(1, 'Ожидает запчасти', '2024-01-12 11:45:00', 1),
(1, 'В работе', '2024-01-13 14:20:00', 2),
(1, 'Выполнено', '2024-01-14 16:35:00', 5),
(1, 'Оплачено', '2024-01-15 10:30:00', 6),
(2, 'Принято', '2024-01-12 10:30:00', 7),
(2, 'В работе', '2024-01-13 11:45:00', 8),
(2, 'Выполнено', '2024-01-15 14:20:00', 9),
(2, 'Оплачено', '2024-01-16 11:45:00', 10),
(3, 'Принято', '2024-01-15 11:45:00', 11),
(3, 'В работе', '2024-01-16 14:20:00', 12),
(3, 'Выполнено', '2024-01-17 16:35:00', 13),
(3, 'Оплачено', '2024-01-18 14:20:00', 14),
(4, 'Принято', '2024-01-18 14:20:00', 15),
(4, 'В работе', '2024-01-19 16:35:00', 1),
(4, 'Ожидает запчасти', '2024-01-20 08:50:00', 2),
(4, 'В работе', '2024-01-21 12:10:00', 3),
(4, 'Выполнено', '2024-01-22 15:25:00', 4),
(4, 'Оплачено', '2024-01-23 17:40:00', 5),
(5, 'Принято', '2024-02-05 08:50:00', 6),
(5, 'В работе', '2024-02-06 12:10:00', 7),
(5, 'Выполнено', '2024-02-08 15:25:00', 8),
(5, 'Оплачено', '2024-02-09 17:40:00', 9),
(6, 'Принято', '2024-02-10 12:10:00', 10),
(6, 'В работе', '2024-02-11 15:25:00', 11),
(6, 'Выполнено', '2024-02-12 17:40:00', 12),
(6, 'Оплачено', '2024-02-13 10:55:00', 13),
(7, 'Принято', '2024-02-15 15:25:00', 14),
(7, 'В работе', '2024-02-16 17:40:00', 15),
(7, 'Выполнено', '2024-02-18 10:55:00', 1),
(7, 'Оплачено', '2024-02-19 13:05:00', 2),
(8, 'Принято', '2024-02-20 17:40:00', 3),
(8, 'В работе', '2024-02-21 10:55:00', 4),
(8, 'Выполнено', '2024-02-22 13:05:00', 5),
(8, 'Оплачено', '2024-02-23 09:15:00', 6),
(9, 'Принято', '2024-03-01 10:55:00', 7),
(9, 'В работе', '2024-03-02 13:05:00', 8),
(9, 'Ожидает запчасти', '2024-03-03 09:15:00', 9),
(9, 'В работе', '2024-03-04 11:30:00', 10),
(9, 'Выполнено', '2024-03-05 14:45:00', 11),
(9, 'Оплачено', '2024-03-06 16:00:00', 12),
(10, 'Принято', '2024-03-05 13:05:00', 13),
(10, 'В работе', '2024-03-06 09:15:00', 14),
(10, 'Выполнено', '2024-03-07 11:30:00', 15),
(10, 'Оплачено', '2024-03-08 14:45:00', 1),
(11, 'Принято', '2024-03-10 09:15:00', 2),
(11, 'В работе', '2024-03-11 11:30:00', 3),
(11, 'Выполнено', '2024-03-12 14:45:00', 4),
(11, 'Оплачено', '2024-03-13 16:00:00', 5),
(12, 'Принято', '2024-03-15 11:30:00', 6),
(12, 'В работе', '2024-03-16 14:45:00', 7),
(12, 'Ожидает запчасти', '2024-03-17 16:00:00', 8),
(12, 'В работе', '2024-03-18 10:15:00', 9),
(12, 'Выполнено', '2024-03-19 13:30:00', 10),
(12, 'Оплачено', '2024-03-20 09:45:00', 11),
(13, 'Принято', '2024-03-20 14:45:00', 12),
(13, 'В работе', '2024-03-21 16:00:00', 13),
(13, 'Выполнено', '2024-03-23 10:15:00', 14),
(13, 'Оплачено', '2024-03-24 13:30:00', 15),
(14, 'Принято', '2024-03-25 16:00:00', 1),
(14, 'В работе', '2024-03-26 10:15:00', 2),
(14, 'Выполнено', '2024-03-28 13:30:00', 3),
(14, 'Оплачено', '2024-03-29 09:45:00', 4),
(15, 'Принято', '2024-03-30 12:00:00', 5),
(15, 'В работе', '2024-03-31 15:15:00', 6),
(15, 'Выполнено', '2024-04-01 17:30:00', 7),
(15, 'Оплачено', '2024-04-02 11:45:00', 8),
(16, 'Принято', '2024-04-05 13:30:00', 9),
(16, 'В работе', '2024-04-06 09:45:00', 10),
(16, 'Выполнено', '2024-04-07 12:00:00', 11),
(16, 'Оплачено', '2024-04-08 15:15:00', 12),
(17, 'Принято', '2024-04-10 09:45:00', 13),
(17, 'В работе', '2024-04-11 12:00:00', 14),
(17, 'Выполнено', '2024-04-12 15:15:00', 15),
(17, 'Оплачено', '2024-04-13 17:30:00', 1),
(18, 'Принято', '2024-04-15 12:00:00', 2),
(18, 'В работе', '2024-04-16 15:15:00', 3),
(18, 'Выполнено', '2024-04-17 17:30:00', 4),
(18, 'Оплачено', '2024-04-18 11:45:00', 5),
(19, 'Принято', '2024-04-20 15:15:00', 6),
(19, 'В работе', '2024-04-21 17:30:00', 7),
(19, 'Выполнено', '2024-04-23 11:45:00', 8),
(19, 'Оплачено', '2024-04-24 14:00:00', 9),
(20, 'Принято', '2024-04-25 17:30:00', 10),
(20, 'В работе', '2024-04-26 11:45:00', 11),
(20, 'Выполнено', '2024-04-28 14:00:00', 12),
(20, 'Оплачено', '2024-04-29 16:15:00', 13);