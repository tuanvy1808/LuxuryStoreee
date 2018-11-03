use luxurystoreee;

create table News(
			NID INT AUTO_INCREMENT primary key,
            NDate TIMESTAMP,
			NTitle varchar(150) not null,
			NContent TEXT,
			NIMG TEXT
);

create table Comments(
			CmID int AUTO_INCREMENT PRIMARY KEY,
            ProductID VARCHAR(20) not null,
            CID int not null,
            CmDate TIMESTAMP,
            CmContent text not null,
            FOREIGN KEY(CID) REFERENCES Customers(CID),
            FOREIGN KEY(ProductID) REFERENCES Products(PID)
);

CREATE TABLE Feddback(
			FID int AUTO_INCREMENT PRIMARY KEY,
            CID INT not NULL,
            FQ TEXT,
            FQDate TIMESTAMP,
            FA TEXT,
            FADate TIMESTAMP,
            FOREIGN KEY(CID) REFERENCES Customers(CID)
);
