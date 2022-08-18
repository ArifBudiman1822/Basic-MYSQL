
show tables;

create table produk
(
	id varchar(10) not null,
    name varchar(100) not null,
    description text,
    price int unsigned not null,
    quantity int unsigned not null default 0,
    created timestamp default current_timestamp,
    primary key(id)
    
) engine = InnoDB;

alter table produk
add column category enum("Kuota Lokal", "Kuota Malam")
after name;

show tables;

describe produk;

insert into produk(id, name , description, price, quantity)
values ("0001", "SmartFren","10 GB", 30000, 1),
		("0002", "XL", "15 GB", 35000, 2),
        ("0003", "Axis", "18 GB", 38000, 3),
        ("0004", "Telkomsel", "20 GB", 80000, 5);
        
insert into produk(id, name , description, price, quantity)
values ("0009", "Salah", "Salah", 0000,0);        

truncate produk;

drop table produk;

select * from produk;

select id as Kode,
		name as Perdana,
        category as "tipe kuota",
        description as Kuota,
        price as harga,
        quantity as Stok
from produk;

update produk set price = 25000 where id = "0001";

delete from produk where id = "0009";

update produk set category = "Kuota Lokal" 
where id = "0004";

drop table produk;
