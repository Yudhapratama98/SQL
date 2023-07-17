#Melihat ada database apa saja
show databases;
 #Membuat database
 create database unpad_archery;
 show databases;
 #Membuat Tabel
 use unpad_archery;
 
 create table angkatan2 (
 NPM int,
 Nama varchar (200),
 Angkatan int,
 Fakultas varchar (200)
 );
 show tables;
 #Mengisi Tabel
 Insert Into angkatan2
 values (17, 'Yudha', 2017, 'FISIP');
 Insert Into angkatan2 (NPM, Nama, Fakultas)
 values (18, 'Bima', 'FISIP');
 insert into angkatan2 
 values (19, 'Test', 2019, 'GIGI');
 select * from angkatan2;
 
 #UPDATE and Delete
 SET SQL_SAFE_UPDATES = 0;
 
 Update angkatan2
 Set Fakultas = 'Psikologi', Nama = 'Azka'
 Where NPM = 19;
 
 select * from angkatan2;
 delete from angkatan2 where Nama = 'Azka';
 select * from angkatan2;
 
 
