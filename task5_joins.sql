CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY,
    CustomerName TEXT,
    City TEXT
);

CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    OrderDate TEXT,
    Amount REAL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers (CustomerID, CustomerName, City) VALUES
(1, 'Alice', 'Chennai'),
(2, 'Bob', 'Mumbai'),
(3, 'Charlie', 'Delhi'),
(4, 'David', 'Bangalore'),
(5, 'Emma', 'Hyderabad');

INSERT INTO Orders (OrderID, CustomerID, OrderDate, Amount) VALUES
(101, 1, '2024-06-01', 500.00),
(102, 1, '2024-06-15', 300.00),
(103, 2, '2024-06-20', 700.00),
(104, 5, '2024-06-25', 200.00);

SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Orders
LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
