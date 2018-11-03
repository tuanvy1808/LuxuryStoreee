create database LuxuryStoreee;

use LuxuryStoreee;

create table Admin(
	AdID varchar(30) not null primary key,
    AdUser varchar(30) not null,
    AdPwd varchar(20) not null,
    AdName varchar(150) not null,
    AdEmail varchar(100) not null,
    AdRole tinyint default 1 not null
);

insert into Admin (AdID,AdUser,Adpwd) values ('Ad001','Admin','12345'),('Ad002','Admin2','12345');

create table Customers(
	CID int auto_increment primary key,
    CUser varchar(20) not null,
    CPwd varchar(20) not null,
    CName varchar(150) not null,
    CEmail varchar(30),
    CPhone varchar(11) not null,
    CAdd TEXT not null,
    CStatus TINYINT default 1
);

insert into Customers(CUser,CPwd,CName,CEmail,CPhone,CAdd) 
				values ('havu2601','123456','Ha Vu','havu2601@gmail.com','0906907383','590 CMT8, Quan 10, Tp.HCM'),
							('tuanvy1808','123456','Tuan Vy','abc@gmail.com','0904180894','590 CMT8, Quan 10, Tp.HCM'),
                            ('hoangbinh1810','123456','Hoang Binh','abc@gmail.com','0988081102','590 CMT8, Quan 10, Tp.HCM'),
                            ('nhatnamnbk','123456','Nhat Nam','abc@gmail.com','0971001674','590 CMT8, Quan 10, Tp.HCM'),
                            ('tampham','123456','Tam Pham','abc@gmail.com','0906413881','590 CMT8, Quan 10, Tp.HCM'),
                            ('duykhuong0503','123456','Duy Khuong','abc@gmail.com','0764578857','590 CMT8, Quan 10, Tp.HCM'),
                            ('pct7400','123456','Toai Phan','abc@gmail.com','0708518938','590 CMT8, Quan 10, Tp.HCM'),
                            ('bachvo01','123456','Duy Bach','abc@gmail.com','0903065435','590 CMT8, Quan 10, Tp.HCM');