create table products
(
	id varchar(10) not null,
    name varchar(100) not null,
    description text,
    price int unsigned not null,
    quantity int unsigned not null default 0,
    created_at timestamp not null default current_timestamp,
    primary key(id)
) engine = InnoDB;

show tables;

describe products;

insert into products(id,name,price,quantity)
values ("P0001", "Mie Ayam Original", 15000, 1);

insert into products(id,name,description,price,quantity)
values ("P0002", "Mie Ayam Bakso Original","Mie Ayam + Bakso", 17000, 1);


insert into products(id,name,price,quantity)
values ("P0003", "Mie Ayam Ceker", 20000, 1),
		("P0004", "Mie Ayam Bakso Ceker", 25000,1),
        ("P0005", "Mie Ijo Yamin", 18000,1);

insert into products(id,name,description,price,quantity)
values ("P0006","Bakso Campur","Pentol 3 Tahu 2 Siomay 1 Goreng panjang 1", 15000, 1),
		("P0007","Bakso Beranak", "Beranak Isi Pentol Kecil", 30000,1),
        ("P0008","Bakso Urat", "Bakso dengan urat Sapi", 20000, 1);

insert into products(id,name,price,quantity)
values ("P0009", "Es Teh/Teh Panas", 3000, 1),
		("P0010", "Es Jeruk/Jeruk Panas", 5000,1),
        ("P0011", "Es Susu", 6000, 1),
        ("P0012", "Es Campur", 8000, 1);
        
alter table products
add primary key (id);

truncate products;

select * from products;

select id, name, price from products;

select * from products where price = 15000;

describe products;

alter table products
add column category ENUM("Makanan", "Minuman", "dll")
after name;

update products set category = "Makanan" where id = "P0001";

update products 
set category = "Makanan",
	description = "Mie Ayam Original + Ceker"
where id = "P0003";

update products set description = "Mie Ayam Biasa" where id = "P0001";

select * from products;

update products
set category = "Makanan",
	description = "Mie Ayam Original + Ceker + Bakso"
where id = "P0004";

update products set category = "Makanan" where id = "P0002";
 
 update products 
 set category = "Makanan",
	description = "Mie Ayam Ijo"
where id = "P0005";

update products 
set category = "Makanan",
	price = price + 5000
where id = "P0007";

delete from products
where id = "P0012";

select id as Kode,
		name as Nama,
        category as Kategori,
        price as Harga,
        quantity as Jumlah
from products;


select id as Kode,
		p.name as Nama,
        p.category as Kategori,
        p.price as Harga,
        p.quantity as Jumlah
from products as p;

select * from products where price < 20000;

select * from products where category = "Makanan";

select * from products where price < 20000 and category = "Makanan";

select * from products where price < 20000 or category = "Makanan";

select * from products where name like "%mie%";

select * from products where category is not null;

select * from products where category is null;

select * from products where price between 10000 and 20000;

select * from products where category in ("Makanan", "Minuman");

select id, name , price from products order by id asc limit 5,5;

select id , category, name, price from products order by price;

select distinct category from products;

select 10, 10 ,10 + 10 as hasil;

select id,name,price,price div 10000 as 'Price In K' from products;

select Pi();

select id, cos(price),sin(price),tan(price) from products;

select id,
	   upper(name) as Kapital,
       length(name) as length
from products;

select id, Year(created_at), month(created_at) from products;

select id,category,
	   case category
			when 'Makanan' then 'Enak'
            else 'apa itu'
            end as 'category'
from products;

select id,price,
		if(price <= 15000, 'Murah',if(price >= 20000, 'Mahal', 'Mahal Banget')) as 'Mahal'
from products;

select id, name, ifnull(category, 'kosong') from products;

select count(id) as 'Total Product', category from products group by category; 

select max(price) as 'Product Expensive', category from products group by category;

select min(price) as 'Product Termurah', category from products group by category; 

select avg(price) as 'Rata Rata Harga', category from products group by category;

select * from products;

update products set category = 'Makanan' where id = 'P0008';

update products set category = 'Minuman' where id = 'P0011';


select count(id) as total, category from products group by category having total > 5;

insert into products(id,name,category,price,quantity)
values ('P0013', 'Permen', 'dll', 500,1000);

alter table products
add constraint price_check check( price >= 1000);

update products 
set price = 1000,
	id = 'P0012'
where id = 'P0013';

show create table products;

alter table products
drop index price_search;

alter table products
drop index price_search;

insert into products(id, name,category,price,quantity)
values('Pxxxx','contoh','dll',1000,1000);