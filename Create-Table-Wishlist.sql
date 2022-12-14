 create table wishlist (
	id int not null auto_increment,
    id_product varchar(10)not null,
    description text,
    primary key(id),
    constraint fk_wishlist_product
		foreign key(id_product) references products(id)
 ) engine = InnoDB;

drop table wishlist;

truncate wishlist;

 desc wishlist;
 
 show create table wishlist;
 
 alter table wishlist
	drop constraint fk_wishlist_product;
    
alter table wishlist 
	add constraint fk_wishlist_product
		foreign key (id_product) references products(id)
			on delete cascade on update cascade;
        
insert into wishlist(id_product, description)
values('P0001', 'Makanan Kesukaan');

select * from wishlist;

insert into wishlist(id_product,description)
values('Pxxxx', 'Makanan Kesukaan');

delete from products where id = 'Pxxxx';
