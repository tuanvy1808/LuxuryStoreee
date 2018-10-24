use LuxuryStoreee;

create table Categories(
				CatID varchar(30) not null primary key,
				CatName varchar(30) not null
);

create table Products(
				PID varchar(20) not null primary key,
                PName varchar(30) not null,
                PCatID varchar(30) not null,
                PMSRP double not null,
                PIPrice double not null,
                PSupID varchar(20) not null,
                PQuan int not null,
                foreign key(PCatID) references Categories(CatID)
);

create table Orders(
				OrderID varchar(20) not null primary key,
                OrderCus int not null,
                OrderDate Date not null,
				OrderShipDate Date,
                OrderStatus int default 0,
                OrderCmt text,
                foreign key (OrderCus) references Customers(CID)
);

create table OrderDetails(
				ODID varchar(20) not null primary key,
                ODPID varchar(20) not null,
                ODQuan int not null,
                ODAmount double not null,
                foreign key(ODPID) references Products(PID),
                foreign key(ODID) references Orders(OrderID)
);