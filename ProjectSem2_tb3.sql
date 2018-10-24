use LuxuryStoreee;

create table Suppliers(
				SID varchar(20) not null primary key,
                SName varchar(30) not null,
                SPhone varchar(11) not null,
                SAdd varchar(30) not null
);

alter table Products add foreign key (PSupID) references Suppliers(SID);

create table Imports(
				IID varchar(20) not null primary key,
                ISID varchar(20) not null,
                IDate Date not null,
                IStatus int default 0,
                ICmt text,
                foreign key (ISID) references Suppliers(SID)
);

create table ImportDetails(
				IDID varchar(20) not null primary key,
                IDPID varchar(20) not null,
                IDQuan int not null,
                IDAmount double not null,
                foreign key(IDPID) references Products(PID),
                foreign key(IDID) references Imports(IID)
);