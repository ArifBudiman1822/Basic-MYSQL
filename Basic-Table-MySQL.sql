SHOW ENGINES;

SHOW TABLES;

 CREATE TABLE barang
 (
	id int NOT NULL,
    nama VARCHAR(100) NOT NULL,
    harga int NOT NULL DEFAULT 0,
    jumlah int NOT NULL DEFAULT 0
) ENGINE = InnoDB;

DESCRIBE barang;

show create table barang;

ALTER TABLE barang
ADD COLUMN deskripsi TEXT;

ALTER TABLE barang
ADD COLUMN salah TEXT;

ALTER TABLE barang
DROP COLUMN salah;

ALTER TABLE barang
MODIFY nama varchar(300) after deskripsi;

ALTER TABLE barang
MODIFY nama varchar(300) FIRST;

ALTER TABLE barang
MODIFY id int NOT NULL ;

ALTER TABLE barang
MODIFY nama varchar(300) NOT NULL ;

ALTER TABLE barang
MODIFY jumlah int not null default 0;

ALTER table barang
modify harga int not null default 0;

alter table barang
add waktu_dibuat timestamp not null default current_timestamp;

insert into barang (id,nama) Values (1, "Apel");

select * from barang;

truncate barang;

drop table barang;


