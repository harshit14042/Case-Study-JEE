create table hv_servicelog(
  sid number primary key,
  car_no varchar(20) not null,
  service_date varchar(20) not null,
  delivery_date varchar(20) not  null,
  net_amount number not null,
  serviceid number not null
);


insert into hv_servicelog values(1,1,'10-10-18','10-10-19',1000,1);

insert into hv_servicelog values(2,2,'10-10-18','10-10-19',1200,2);

create table hv_services(
  serviceid number primary key,
  service_name varchar(50),
  amount number,
  days_taken number);
  
insert into hv_services values(1,'Polish',1000,10);
insert into hv_services values(2,'Wheel Balance',1200,20);
insert into hv_services values(3,'Decors',3000,25);

create table hv_insurance_details(
  insurance_id number primary key,
  car_no varchar(20) not null,
  customer_id number not null,
  coverage number
);

insert into hv_insurance_details values(1,1,1,100000);


drop table hv_insurance_details;

create table hv_car(
  car_no varchar(20) primary key,
  customer_id number not null,
  company varchar(20),
  car_model varchar(20),
  car_age number(20)
);

insert into hv_car values(2,1,'Toyota','Corolla',2);

select * from hv_services;

delete from hv_customer where customer_id=2;
commit;

drop table hv_car;
select * from hv_car;

update hv_car set car_no=1 where customer_id=1;

delete from hv_car where car_no!='2' and car_no!='3';

select * from hv_servicelog inner join hv_services on hv_servicelog.serviceid=hv_services.serviceid  inner join hv_insurance_details on hv_insurance_details.car_no=hv_servicelog.car_no inner join hv_car on hv_car.car_no=hv_servicelog.car_no where hv_car.customer_id=1;

select * from hv_servicelog inner join hv_car on hv_car.car_no=hv_servicelog.car_no where hv_car.customer_id=2;
create table hv_employee(
  userid varchar(20) primary key,
  pass varchar(20) not null
);

create table hv_customer(
  customer_id number primary key,
  cname varchar(30) not null,
  addr varchar(50) not null,
  email varchar(40) not null unique
);

insert into hv_customer values(1,'Harshit','delhi','harsh@ctli.com');

commit;