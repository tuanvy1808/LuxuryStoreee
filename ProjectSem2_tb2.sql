use LuxuryStoreee;

create table Categories(
					CatID varchar(30) not null primary key,
					CatName varchar(150) not null,
					CatDes text
);

CREATE TABLE Brand(
				BID varchar(10) not null primary key,
                BName varchar(150) not null,
                BWeb text
);

create table Products(
				PID varchar(20) not null primary key,
                PName varchar(150) not null,
                CatID varchar(30) not null,
                BID varchar(10) not null,
                PDes TEXT,
                PUnit varchar(20),
                PMSRP double not null,
                PPPrice double not null,
                PQuan int not null,
                foreign key(CatID) references Categories(CatID),
                FOREIGN KEY(BID) REFERENCES Brand(BID)
);

create table Orders(
				OrderID varchar(20) not null primary key,
                OrderCus int not null,
                OrderDate TIMESTAMP not null,
				OrderShipDate TIMESTAMP,
                ShippingAdd TEXT,
                OrderStatus int default 0,
                OrderCmt text,
                foreign key (OrderCus) references Customers(CID)
);

create table OrderDetails(
				ODID varchar(20) not null primary key,
                OrderID VARCHAR(20),
                PID varchar(20) not null,
                ODQuan double not null,
                foreign key(PID) references Products(PID),
                foreign key(OrderID) references Orders(OrderID)
);