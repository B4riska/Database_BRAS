CREATE TABLE Clients (
    ClientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(20) CHECK (Phone REGEXP '^[0-9]{3,15}$'),
    RegisterDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ServicemanID INT,
    FOREIGN KEY (ServicemanID) REFERENCES Servicemen(ServicemanID)
);

CREATE TABLE Bicycles (
    BicycleID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Manufacturer VARCHAR(100),
    Type VARCHAR(50),
    ClientID INT NOT NULL,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);

CREATE TABLE Servicemen (
    ServicemanID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(20) CHECK (Phone REGEXP '^[0-9]{3,15}$'),
    Email VARCHAR(100) CHECK (Email REGEXP '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
);

CREATE TABLE Services (
    ServiceID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(200) NOT NULL,
    Description TEXT,
    Price DECIMAL(10,2) NOT NULL CHECK (Price > 0),
    BicycleID INT NOT NULL,
    ClientID INT NOT NULL,
    ServicemanID INT NOT NULL,
    FOREIGN KEY (BicycleID) REFERENCES Bicycles(BicycleID),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (ServicemanID) REFERENCES Servicemen(ServicemanID)
);

CREATE TABLE SpareCategories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Description TEXT
);

CREATE TABLE Spares (
    SpareID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Description TEXT,
    QuantityInStock INT NOT NULL DEFAULT 0 CHECK (QuantityInStock >= 0),
    Price DECIMAL(10,2) NOT NULL CHECK (Price > 0),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES SpareCategories(CategoryID)
);

CREATE TABLE ServiceWorks (
    ServiceWorkID INT PRIMARY KEY AUTO_INCREMENT,
    ServiceID INT NOT NULL,
    SpareID INT NOT NULL,
    Amount INT NOT NULL CHECK (Amount > 0),
    Cost DECIMAL(10,2) NOT NULL CHECK (Cost > 0),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID),
    FOREIGN KEY (SpareID) REFERENCES Spares(SpareID)
);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    ServiceID INT NOT NULL,
    PaymentDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PaymentMethod VARCHAR(50) NOT NULL CHECK (PaymentMethod IN ('Наличные', 'Карта', 'Перевод')),
    Amount DECIMAL(10,2) NOT NULL CHECK (Amount > 0),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);

CREATE TABLE ServiceHistory (
    HistoryServID INT PRIMARY KEY AUTO_INCREMENT,
    ServiceID INT NOT NULL,
    Status VARCHAR(50) NOT NULL CHECK (Status IN ('Принято', 'В работе', 'Ожидает запчасти', 'Выполнено', 'Оплачено')),
    ChangeDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ChangedBy INT NOT NULL,
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID),
    FOREIGN KEY (ChangedBy) REFERENCES Servicemen(ServicemanID)
);