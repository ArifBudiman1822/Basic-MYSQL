create table categories
(
	id varchar(10) not null,
    name varchar(100) not null,
    primary key (id)
) engine = InnoDB;

drop table category;

desc categories;

alter table products
drop column category;

desc products;

alter table products
add column id_category varchar(100);

alter table products
add constraint fk_products_categories
foreign key (id_category) references categories (id);

show create table products;

select * from products;

select * from categories;

insert into categories (id,name)
values ('C0001', 'Makanan'),
	   ('C0002', 'Minuman'),
       ('C0003', 'dll');
       
update products
set id_category = 'C0001'
where id in('P0001','P0002''P0003','P0004','P0005','P0006','P0007','P0008');

update products
set id_category = 'C0001'
where id in ('P0002','P0003','P0008');

update products
set id_category = 'C0002'
where id in ('P0009','P0010','P0011');

UPDATE products
SET id_category = 'C0003'
where id in ('P0012');

select categories.id, products.name, categories.name
from categories
join products on(categories.id = products.id_category);