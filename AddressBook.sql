/* Creating AddressBookSystem Database*/
create database AddressBookSystem

use AddressBookSystem

/* Creating AddressBookSystem Table */
create table AddressBook
(
 ID int identity(1,1) primary key,
 firstname varchar(100) not null,
 lastname varchar(100) not null,
 address varchar(250) not null,
 city varchar(100) not null,
 state varchar(100) not null,
 zip varchar(8)not null,
 phonenumber varchar(12) not null,
 email varchar(100) not null
);

/* Displaying Records in Addressbook */
select * from AddressBook

/* Inserting Values in AddressBook */
insert into AddressBook values ('pratiksha','Rajangane','Chikodi','Belgaum','Karanataka','123456','6360384041','pratiksha@gmail.com')
insert into AddressBook values ('Prerana','Rajangane','Nidsoshi','Belgaum','Karanataka','987654','6363123456','prerana@gmail.com')
insert into AddressBook values ('Sakshi','Patil','Sangali','Miraj','Maharashtra','456123','1234569830','sakshi@gmail.com')
insert into AddressBook values ('Ruhi','Gowda','GandhiNagar','Ahemdabad','Gujrat','555555','9900990012','ruhi@gmail.com')
insert into AddressBook values ('Tanu','Raijadhav','Somwarpethe','Mysore','Kerala','444444','7894560000','tanu@gmail.com')

/* updating City and State */
update AddressBook
set city = 'Mumbai', state = 'Delhi'
where firstname = 'Tanu'

/* Deleting Firstname From AddressBook */
delete from AddressBook where firstname = 'Sakshi'

/* identifying size of AddressBook by City and State */
select COUNT(firstname) from AddressBook where city = 'Belgaum' or state = 'Karanataka' /* output will be 2 */
select COUNT(firstname) from AddressBook where city = 'Ahemdabad' or state = 'Gujrat'   /* output will be 1 */

/* with order by first name we get city(Belgaum) */
select * from AddessBook where city = 'Belgaum' order by firstname

/* altering addresbook with AddressBookname and Type */
alter table AddressBook add Addressbookname varchar(20), type varchar(10)

/* updating values in AddressBook */
update AddressBook set Addressbookname='book1', type='Friends' where city='Belgaum'
update AddressBook set Addressbookname='book2', type='Family' where city='Nidsoshi'
update AddressBook set Addressbookname='book4', type='Profession' where city='Ahemdabad'

/* counting by family friends profession */
select count(type) as 'family' from AddressBook where type='family'  /* output will be 0 */
select count(type) as 'friends' from AddressBook where type='friends'  /* output will be 2 */
select count(type) as 'profession' from AddressBook where type='profession'  /* output will be 1 */

/* creating another table */
create table Person
(
person_id int identity(1,1) primary key not null,
firstname varchar(50),
lastname varchar(50),
email varchar(50),
phone varchar(50),
);

Select * from Person

/* inserting values in Person */
insert into Person values ('Pritha','Hegade','pritha@gmail.com','6363789456')




