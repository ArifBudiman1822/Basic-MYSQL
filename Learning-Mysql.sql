create table customers(
	id 			int 			not null auto_increment,
    email 		varchar(100)	not null,
    first_name 	varchar(100) 	not null,
    last_name 	varchar(100) 	not null,
    primary key(id),
    unique key email_unique (email)
) engine = InnoDB;

show tables;

describe customers;

alter table customers
drop constraint email_unique;

alter table customers 
add constraint email_unique unique (email);

insert into customers(email,first_name, last_name)
values('arifsama10@gmail.com','Arif','Budiman');


insert into customers(email,first_name, last_name)
values('muhammadarif@gmail.com','Arif','Budiman');
      
truncate customers;
      
select * from customers order by id;

select * from customers; 

delete from admin where id = 5;

insert into admin(first_name, last_name)
values ('Joko', 'Gunawan');

select last_insert_id();

show tables;

drop table admin;