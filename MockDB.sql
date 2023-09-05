create table customers (
FirstName varchar2(100),
LastName varchar2(100),
PhoneNumber varchar(12) CONSTRAINT phone CHECK (PhoneNumber like '___-___-___'),
EmailAddress varchar2(100) primary key,
CreditCardNum references CreditCards (CreditCardNum)
);

create table CreditCards(
CreditCardNum int primary key,
limit varchar(250),
balance int,
exp_date DATE
);

select FirstName, LastName from customers
where EmailAddress like '%@yahoo.com';

select c.EmailAddress, c.CreditCardNum, cr.balance from Customers c
inner join CreditCards cr on c.CreditCardNum = cr.CreditCardNum
WHERE (balance > 0);

select c.EmailAddress, c.CreditCardNum, cr.creditcardnum from Customers c
full outer join CreditCards cr on c.CreditCardNum = cr.CreditCardNum;

select c.EmailAddress, c.CreditCardNum from Customers c
cross join CreditCards;

select c.EmailAddress, cr.creditcardnum, cr.limit, cr.balance, cr.exp_date from customers c
left join CreditCards cr on c.creditcardnum = cr.creditcardnum;

insert into CreditCards values (100,'1,000',300,'11-NOV-2011');
insert into CreditCards values (200,'2,000',200,'12-DEC-2012');
insert into CreditCards values (300,'3,000',400,'3-MAR-2013');
insert into CreditCards values (400,'4,000',0,'4-APR-2014');

insert into customers values ('minnie','mouse','111-111-111','minnie@gmail.com',100);
insert into customers values ('mickey','mouse','222-222-222','mickey@yahoo.com',200);
insert into customers values ('bob','the builder','333-333-333','builder@hotmail.com',300);
insert into customers values ('bob','ross','444-444-444','bobross@yahoo.com', null);
insert into customers values ('donald','duck','555-555-555','donalddunk@gmail.com',null);

 