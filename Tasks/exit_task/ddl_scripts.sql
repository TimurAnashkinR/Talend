create table dim_customers
( cust_dim_id number(8) primary key,
cust_id number(8),
cust_name varchar2(40),
username varchar2(40),
email varchar2(50),
dateofbirth date,
streetaddress varchar2(50),
city varchar2(50),
country varchar2(50),
zip varchar2(20),
state varchar2(50),
phone varchar2(50));


create table cls_products
(product_dim_id number(10),
products number(10),
productname varchar2(200),
companyname varchar2(200),
price number(10,2),
WarehouseLocationState varchar2(50));

create table dim_products
(product_dim_id number(10) primary key,
products number(10),
productname varchar2(200),
companyname varchar2(200),
price number(10,2),
WarehouseLocationState varchar2(50));

create table sa_products
(products number(10),
productname varchar2(200),
companyname varchar2(200),
price number(10,2),
WarehouseLocationState varchar2(50));

create table cls_customers
( cust_dim_id number(8),
cust_id number(8),
cust_name varchar2(40),
username varchar2(40),
email varchar2(50),
dateofbirth date,
streetaddress varchar2(50),
city varchar2(50),
country varchar2(50),
zip varchar2(20),
state varchar2(50),
phone varchar2(50));

create table sa_credit_cards
(CREDITCARD	VARCHAR2(20 BYTE),CREDITCARDNUMBER	VARCHAR2(30 BYTE));

create table cls_credit_cards
(CARD_DM_ID NUMBER(38),CREDITCARD	VARCHAR2(20 BYTE),CREDITCARDNUMBER	VARCHAR2(30 BYTE));

create table dim_credit_cards
(CARD_DM_ID NUMBER(38) primary key ,CREDITCARD	VARCHAR2(20 BYTE),CREDITCARDNUMBER	VARCHAR2(30 BYTE));

create table sa_purchase
(PAYMENTID	NUMBER(38,0),
CUSTOMERID	NUMBER(38,0),
PRODUCTID	NUMBER(38,0),
TRANSACTIONDATE	TIMESTAMP(0),
CREDITCARDNUMBER	VARCHAR2(30 BYTE));

create table sa_customers
( cust_id number(8),
cust_name varchar2(40),
username varchar2(40),
email varchar2(50),
dateofbirth date,
streetaddress varchar2(50),
city varchar2(50),
country varchar2(50),
zip varchar2(20),
state varchar2(50),
phone varchar2(50));

CREATE TABLE fct_purchases (
    payment_id           NUMBER(38) ,
    cust_dim_id          NUMBER(38) ,
    product_dim_id           NUMBER(38) ,
    transactiondate     date,
    card_dm_id    NUMBER(38) ,
    isinterstate        NUMBER(2),
    constraint pk_rr primary key(payment_id,cust_dim_id,product_dim_id,card_dm_id, transactiondate ));



ALTER SESSION SET NLS_DATE_FORMAT= 'dd/mm/yyyy';

create sequence seq_customers
increment by 1
start with 1;

create sequence seq_products
increment by 1
start with 1;

create sequence seq_credit_cards
increment by 1
start with 1;