-- Definição das chaves primárias
ALTER TABLE Suppliers ADD PRIMARY KEY (SupplierID);
ALTER TABLE Products ADD PRIMARY KEY (ProductID);
ALTER TABLE Categories ADD PRIMARY KEY (CategoryID);
ALTER TABLE Customers ADD PRIMARY KEY (CustomerID);
ALTER TABLE Orders ADD PRIMARY KEY (OrderID);
ALTER TABLE OrderDetails ADD PRIMARY KEY (OrderDetailID);
ALTER TABLE Employees ADD PRIMARY KEY (EmployeeID);
ALTER TABLE Shippers ADD PRIMARY KEY (ShipperID);

-- Definição das chaves estrangeiras
ALTER TABLE Products ADD CONSTRAINT FK_Products_Suppliers FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID);
ALTER TABLE Products ADD CONSTRAINT FK_Products_Categories FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);

ALTER TABLE Orders ADD CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);
ALTER TABLE Orders ADD CONSTRAINT FK_Orders_Employees FOREIGN KEY (EmployeeID) REFERENCES Employees
