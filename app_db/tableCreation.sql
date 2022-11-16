CREATE ROLE app WITH
  LOGIN
  SUPERUSER
  INHERIT
  CREATEDB
  CREATEROLE
  NOREPLICATION
  PASSWORD 'app';

CREATE SEQUENCE public.item_iditem_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.item_iditem_seq
    OWNER TO postgres;

CREATE SEQUENCE public.order_idorder_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.order_idorder_seq
    OWNER TO postgres;

CREATE SEQUENCE public.order_item_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.order_item_id_seq
    OWNER TO postgres;

CREATE SEQUENCE public.stock_idstock_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.stock_idstock_seq
    OWNER TO postgres;


CREATE TABLE public.item
(
    id bigint NOT NULL,
    description character varying(1023),
    name character varying(255) NOT NULL,
    path_to_image character varying(255),
    price double precision NOT NULL,
    CONSTRAINT item_pkey PRIMARY KEY (id)
);

ALTER TABLE public.item
    OWNER to postgres;


CREATE TABLE public.users
(
    login character varying(255) NOT NULL,
    mail_address character varying(255),
    password character varying(255) NOT NULL,
    role character varying(255) NOT NULL,
    CONSTRAINT users_pkey PRIMARY KEY (login)
);

ALTER TABLE public.users
    OWNER to postgres;

CREATE TABLE public.stock
(
    id bigint NOT NULL,
    name character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT stock_pkey PRIMARY KEY (id)
);

ALTER TABLE public.stock
    OWNER to postgres;

CREATE TABLE public.stock_items
(
    stock_id bigint NOT NULL,
    items integer,
    items_key bigint NOT NULL,
    CONSTRAINT stock_items_pkey PRIMARY KEY (stock_id, items_key),
    CONSTRAINT stock_items_stock_fk FOREIGN KEY (stock_id)
        REFERENCES public.stock (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT stock_items_items_fk FOREIGN KEY (items_key)
        REFERENCES public.item (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

ALTER TABLE public.stock_items
    OWNER to postgres;

CREATE TABLE public.orders
(
    id bigint NOT NULL,
    order_status character varying(255) COLLATE pg_catalog."default" NOT NULL,
    order_name character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT orders_pkey PRIMARY KEY (id)
);

ALTER TABLE public.orders
    OWNER to postgres;

CREATE TABLE public.order_item
(
    item_id bigint NOT NULL,
    stock_id bigint NOT NULL,
    id bigint NOT NULL,
    CONSTRAINT order_item_pk PRIMARY KEY (id),
    CONSTRAINT item_order_item_fk FOREIGN KEY (item_id)
        REFERENCES public.item (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT stock_order_item_fk FOREIGN KEY (stock_id)
        REFERENCES public.stock (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

ALTER TABLE public.order_item
    OWNER to postgres;

CREATE TABLE public.order_items
(
    order_id bigint NOT NULL,
    items integer,
    items_key bigint NOT NULL,
    CONSTRAINT orders_items_pk PRIMARY KEY (order_id, items_key),
    CONSTRAINT order_items_order_item_fk FOREIGN KEY (items_key)
        REFERENCES public.order_item (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT order_order_items_fk FOREIGN KEY (order_id)
        REFERENCES public.orders (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

ALTER TABLE public.order_items
    OWNER to postgres;

CREATE TABLE public.users_orders
(
    user_login character varying(255) COLLATE pg_catalog."default" NOT NULL,
    orders_id bigint NOT NULL,
    CONSTRAINT users_orders_pkey UNIQUE (orders_id),
    CONSTRAINT users_orders_orders_fk FOREIGN KEY (orders_id)
        REFERENCES public.orders (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT users_orders_user_fk FOREIGN KEY (user_login)
        REFERENCES public.users (login) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
);

ALTER TABLE public.users_orders
    OWNER to postgres;


-- admin == $2a$10$Vs8Ouob4bkIg.yDa7Yf7yudy1DXWNYweTn1e/JjXKGDnZvl3XATeS
INSERT INTO public.users (login, mail_address, password, role)
    VALUES ('admin', null, '$2a$10$Vs8Ouob4bkIg.yDa7Yf7yudy1DXWNYweTn1e/JjXKGDnZvl3XATeS', 'ADMIN');