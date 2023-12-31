-- Drop tables if they exist
drop table if exists Item cascade;
drop table if exists Distribution_Center cascade;


create table Distribution_Center
(
    id        SERIAL primary key,
    name      varchar(255) not null,
    latitude  float        not null,
    longitude float        not null
);

create table Item
(
    id                     SERIAL primary key,
    name                   varchar(255) not null,
    create_Year            int          not null,
    created_At             timestamp    not null,
    quantity               int          not null,
    price                  float        not null,
    brand_from             smallint     not null,
    distribution_Center_id SERIAL       not null references Distribution_Center(id)
);

