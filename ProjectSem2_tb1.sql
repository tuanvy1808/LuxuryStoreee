create database LuxuryStoreee;

use LuxuryStoreee;

create table Admin(
	AdID varchar(30) not null primary key,
    AdUser varchar(30) not null,
    AdPwd varchar(20) not null,
    AdRole tinyint default 1 not null
);

insert into Admin (AdID,AdUser,Adpwd) values ('Ad001','Admin','12345'),('Ad002','Admin2','12345');

create table Customers(
	CID int auto_increment primary key,
    CUser varchar(20) not null,
    CPwd varchar(20) not null,
    CName varchar(30) not null,
    CPhone varchar(11) not null,
    CAdd1 varchar(50) not null,
    CAdd2 varchar(50) not null,
    CCity varchar(30) not null
);

insert into Customers(CUser,CPwd,CName,CPhone,CAdd1,CAdd2,CCity) 
				values ('havu2601','123456','Ha Vu','0906907383','590 CMT8','Quan 10','HCM City'),
							('tuanvy1808','123456','Tuan Vy','0904180894','590 CMT8','Quan 10','HCM City'),
                            ('hoangbinh1810','123456','Hoang Binh','0988081102','590 CMT8','Quan 10','HCM City'),
                            ('nhatnamnbk','123456','Nhat Nam','0971001674','590 CMT8','Quan 10','HCM City'),
                            ('tampham','123456','Tam Pham','0906413881','590 CMT8','Quan 10','HCM City'),
                            ('duykhuong0503','123456','Duy Khuong','0764578857','590 CMT8','Quan 10','HCM City'),
                            ('pct7400','123456','Toai Phan','0708518938','590 CMT8','Quan 10','HCM City'),
                            ('bachvo01','123456','Duy Bach','0903065435','590 CMT8','Quan 10','HCM City');