use LuxuryStoreee;

create table Suppliers(
				SID varchar(20) not null primary key,
                SName varchar(150) not null,
                SPhone varchar(11) not null,
                SAdd varchar(200) not null
);

create table Purchases(
				PurchaseID varchar(20) not null primary key,
                SupID varchar(20) not null,
                PurchaseDate TIMESTAMP not null,
                PurchaseStatus int default 0,
                PurchaseCmt text,
                foreign key (SupID) references Suppliers(SID)
);

create table PurchaseDetails(
				PDID varchar(20) not null primary key,
                PurchaseID varchar(20),
                ProductID varchar(20) not null,
                PDQuan double not null,
                foreign key(ProductID) references Products(PID),
                foreign key(PurchaseID) references Purchases(PurchaseID)
);
