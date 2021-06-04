create sequence item_iditem_seq start 1 increment 1;
create sequence order_idorder_seq start 1 increment 1;
create sequence stock_idstock_seq start 1 increment 1;


create table item (
	id int8 not null,
	description varchar(255),
	name varchar(255) not null,
	path_to_image varchar(255),
	price float8 not null,
	primary key (id)
);

create table orders (
	id int8 not null,
	order_status varchar(255) not null,
	primary key (id)
);

create table order_items (
	order_id int8 not null,
	items int4,
	items_key int8 not null,
	primary key (order_id, items_key)
);

create table stock (
	id int8 not null,
	primary key (id)
);

create table stock_items (
	stock_id int8 not null,
	items int4, items_key int8 not null,
	primary key (stock_id, items_key)
);

create table users (
	login varchar(255) not null,
	mail_address varchar(255),
	password varchar(255) not null,
	role varchar(255) not null,
	primary key (login)
);

create table user_orders (
	user_login varchar(255) not null,
	orders_id int8 not null
);

alter table if exists user_orders
	add constraint UK_oqipapb9ox7fhui5n2ttp9ab4 unique (orders_id);
alter table if exists order_items
	add constraint FKq7owybbuvp83g4cqm0sqc02cf foreign key (items_key) references item;
alter table if exists order_items
	add constraint FKdy6l1ieu09exdjope704jwo1e foreign key (order_id) references orders;
alter table if exists stock_items
	add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item;
alter table if exists stock_items
	add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock;
alter table if exists user_orders
	add constraint FK4alm6kfskhuaeyfii0jfsptar foreign key (orders_id) references orders;
alter table if exists user_orders
	add constraint FK6u6kccj2d331tktwtoboxpo3s foreign key (user_login) references users;