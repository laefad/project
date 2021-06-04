create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (
    id int8 not null, 
    description varchar(255), 
    name varchar(255) not null, 
    path_to_image varchar(255), 
    price float8 not null, 
    primary key (id)
)

create table order_item (
    id int8 not null, 
    item_id int8, 
    stock_id int8, 
    primary key (id)
)

create table order_items (
    order_id int8 not null, 
    items int4, 
    items_key int8 not null, 
    primary key (order_id, items_key)
)

create table orders (
    id int8 not null,
    order_name varchar(255),
    order_status varchar(255) not null, 
    primary key (id)
)

create table stock (
    id int8 not null, 
    name varchar(255), 
    primary key (id)
)

create table stock_items (
    stock_id int8 not null, 
    items int4, 
    items_key int8 not null, 
    primary key (stock_id, items_key)
)

create table users (
    login varchar(255) not null,
    mail_address varchar(255), 
    password varchar(255) not null, 
    role varchar(255) not null, 
    primary key (login)
)

create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
create sequence item_iditem_seq start 1 increment 1
create sequence order_idorder_seq start 1 increment 1
create sequence order_item_id_seq start 1 increment 1
create sequence stock_idstock_seq start 1 increment 1
create table item (id int8 not null, description varchar(255), name varchar(255) not null, path_to_image varchar(255), price float8 not null, primary key (id))
create table order_item (id int8 not null, item_id int8, stock_id int8, primary key (id))
create table order_items (order_id int8 not null, items int4, items_key int8 not null, primary key (order_id, items_key))
create table orders (id int8 not null, order_name varchar(255), order_status varchar(255) not null, primary key (id))
create table stock (id int8 not null, name varchar(255), primary key (id))
create table stock_items (stock_id int8 not null, items int4, items_key int8 not null, primary key (stock_id, items_key))
create table users (login varchar(255) not null, mail_address varchar(255), password varchar(255) not null, role varchar(255) not null, primary key (login))
create table users_orders (user_login varchar(255) not null, orders_id int8 not null)
alter table if exists users_orders add constraint UK_1njdfitph68mh7p7c6f3qc736 unique (orders_id)
alter table if exists order_item add constraint FKija6hjjiit8dprnmvtvgdp6ru foreign key (item_id) references item
alter table if exists order_item add constraint FK5bi1f4bml0959jxan6wcw2uep foreign key (stock_id) references stock
alter table if exists order_items add constraint FKojy4ewbuf1lngq68gi0ruex9i foreign key (items_key) references order_item
alter table if exists order_items add constraint FKbioxgbv59vetrxe0ejfubep1w foreign key (order_id) references orders
alter table if exists stock_items add constraint FKqh74y3s57c1ybw67c5k77rloa foreign key (items_key) references item
alter table if exists stock_items add constraint FKpkucyj8ot8fyf33g0itaturbv foreign key (stock_id) references stock
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders
alter table if exists users_orders add constraint FKfljwljj1p8684m2qv8ovfeie7 foreign key (user_login) references users
