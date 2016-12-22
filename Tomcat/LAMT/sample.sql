create database acmedb;
use acmedb;
create table Subject (subject_id int not null primary key, name varchar (25) not null , counselor varchar (50) not null, address varchar (100) not null);
insert into Subject values(1, 'Negotitation Skills', 'John Doe', '8200 Warden Avenue');
insert into Subject values(2, 'Career Development', 'Jane Doe', '3600 Warden Avenue');