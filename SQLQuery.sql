create database CabBooking

use CabBooking

create table Location(
ID int primary key identity,
Name varchar(25)
)

create table Distance(
DistanceId int primary key identity,
FromLocation int  foreign key references Location(ID),
ToLocation int foreign key references Location(ID),
Distanceinkm float)

create table Cab(
CabId  int primary key,
Cabname varchar(20),
Cabtype varchar(20),
fareperkm float,
CurrentLocation int foreign key references Location(ID),
Isavailable bit

)

create table Customer(
Mobile bigint primary key,
Username varchar(20),
Password varchar(20),
Email varchar(20))

create table Driver(
mobile bigint primary key,
Username varchar(20),
Password varchar(20),
licenseno varchar(40),
cabid int foreign key references Cab(CabId),
Isapproved bit,
)

create table Booking(
Bookingid int primary key,
mobileno bigint foreign key references Customer(Mobile),
cabid int foreign key references Cab(CabId),
fare float,
Gst float,
DistanceId int foreign key references Distance(DistanceId),
Otp int,
TotalFare money,
Status varchar(20),
Rating float)

Create Table Admin(
Username varchar(50) primary key,
Password varchar(25) not null)

select * from Customer
select * from distance
select * from booking
select * from cab
select * from driver

insert into Location values('Hyderabad'),
('Bangalore'),
('Chennai')

insert into Distance values (1,2,300.8),(2,3,500),(3,1,300),(1,3,300),(2,1,300.8),(3,2,500)

alter table Cab add isDeleted bit

alter table Cab add CabNo varchar(15)

alter table Driver add isDeleted bit

alter table Booking add BookingDate DateTime


insert into Cab values (1,'Indica','Mini',20,2,1,0,'AP35'),(2,'Swift','PrimeSedan',50,1,0,0,'AP36'),(3,'Innova','SUV',100,3,1,0,'AP37'),
(4,'Nano','Mini',20,3,1,0,'AP38'),(5,'Suzuki','Mini',25,3,1,0,'AP39'),(6,'Suzuki','SUV',25,1,1,0,'AP40'),(7,'Suzuki','Mini',25,2,1,0,'AP41')


Select * from Booking




select * from admin
select * from cab
select * from driver

insert into driver values(1779,'Driver123','D1234','AP16DM',1,1,0),(177987,'Driver435','D345','AP13DM',2,1,0),(3209320,'Driver1','D12','AP48DM',3,1,0)

update Booking set status='booked' where Bookingid=1062

update Booking set Rating=2 where mobileno=1234

update Driver set Isapproved=1 where mobile=12345

truncate table Booking
truncate table location
truncate table driver
truncate table cab
truncate table distance
truncate table customer

insert into Admin values
('Dex','pass')