create table suppliers(
    id bigserial primary key,
    name varchar(255) not null
);

create table products(
    id bigserial primary key,
    name varchar(255) not null,
    quantity int8 default 0,
    supplier int8 references suppliers(id)
);

create table customers(
    id bigserial primary key,
    name varchar(255) not null
);

drop table if exists ordersBody;
drop table if exists ordersHead;

create table ordersHead(
    id bigserial primary key,
    customerId int8 references customers(id),
    customerName varchar(255) not null
);

create table ordersBody(
    orderId int8 references ordersHead(id),
    product int8 references products(id),
    quantity int8 default 0,
    primary key (orderId, product)
);