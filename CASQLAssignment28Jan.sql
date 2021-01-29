use WFA3DotNet


--1. Create a table Product as per the following specifications.

create table ProductInfo1
(
	ProductID int not null primary key identity(1,1),
	discrip varchar(30) not null UNIQUE,
	SetQty1 int not null 
	CHECK (SetQty1 = 1 or SetQty1 = 5 or SetQty1 = 10)
	DEFAULT 1,
	Rate decimal(10,2)
	CHECK(Rate >= 51 AND Rate <= 5000)
);
select * from ProductInfo1

--2. Insert 20 records in the above Product table

insert into ProductInfo1 values('OnePlus',1,500.30)
insert into ProductInfo1 values('Lenovo',5,409.00)
insert into ProductInfo1 values('Sony',5,499.99)
insert into ProductInfo1 values('RealMe',10,469.39)
insert into ProductInfo1 values('RedMi',10,3009.90)
insert into ProductInfo1 values('Nokia',10,2000.34)
insert into ProductInfo1 values('Xiaomi',5,3000.88)
insert into ProductInfo1 values('Samsung',10,1829.90)
insert into ProductInfo1 values('Apple',1,502.60)
insert into ProductInfo1 values('ZTE',5,203.99)
insert into ProductInfo1 values('Google Pixel',10,390.99)
insert into ProductInfo1 values('Huawei',1,209.99)
insert into Productinfo1 values('Oppo',10,3099.45)
insert into ProductInfo1 values('Vivo',5,999.34)
insert into ProductInfo1 values('Asus',5,899.17)
insert into ProductInfo1 values('LG',1,90.34)
insert into ProductInfo1 values('Panasonic',10,3599.45)
insert into ProductInfo1 values('Motorola',1,999.24)
insert into ProductInfo1 values('Honor',10,499.99)
insert into ProductInfo1 values('HTC',5,1999.74)

select * from ProductInfo1

--3. Update all the rates with 10% rate hike.
update ProductInfo1 set rate = rate *1.1 from ProductInfo1

--4. Delete last record by providing the ProductID.
delete from ProductInfo1 where ProductId = 20

--5. Alter the above table and add the following column.
alter table ProductInfo1 
add MarginCode char(1)
check (MarginCode = 'A' or MarginCode = 'B' or MarginCode = null)

--6. Update few records to set MarginCode to A and some records MarginCode to B
update ProductInfo1 
set MarginCode = 'A'
where ProductId < 5 

update ProductInfo1 
set MarginCode = 'B'
where ProductId > 10

select * from ProductInfo1
-- 7. Update all the SetQty to 10 for all Items which have MarginCode A and whose original SetQty is 1
update ProductInfo1
set SetQty1 = 10
where MarginCode = 'A' AND SetQty1 = 1

select * from ProductInfo1