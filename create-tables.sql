drop table if exists orderitem;
drop table if exists `order`;
drop table if exists dailymenuitem;
drop table if exists dailymenu;
drop table if exists fooditem;
drop table if exists student;
drop table if exists professor;
drop table if exists person;

create table person (
    person_id int auto_increment primary key,
    national_id varchar(10) not null unique,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(100) unique,
    phone varchar(15),
    registration_date datetime default current_timestamp
);

create table student (
    student_id int auto_increment primary key,
    person_id int not null,
    student_number varchar(20) not null unique,
    major varchar(100) not null,
    foreign key (person_id) references person(person_id) on delete cascade
);

create table professor (
    professor_id int auto_increment primary key,
    person_id int not null,
    employee_number varchar(20) not null unique,
    department varchar(100) not null,
    academic_rank varchar(50) not null,
    foreign key (person_id) references person(person_id) on delete cascade
);

create table fooditem (
    food_id int auto_increment primary key,
    food_name varchar(100) not null,
    description text,
    base_price decimal(10,2) not null
);

create table dailymenu (
    menu_id int auto_increment primary key,
    menu_date date not null unique,
    published_at datetime default current_timestamp
);

create table dailymenuitem (
    menu_item_id int auto_increment primary key,
    menu_id int not null,
    food_id int not null,
    current_price decimal(10,2) not null,
    foreign key (menu_id) references dailymenu(menu_id) on delete cascade,
    foreign key (food_id) references fooditem(food_id) on delete cascade,
    unique (menu_id, food_id)
);

create table `order` (
    order_id int auto_increment primary key,
    person_id int not null,
    order_date datetime default current_timestamp,
    total_amount decimal(10,2) not null,
    status enum('pending','confirmed','prepared','delivered') default 'pending',
    foreign key (person_id) references person(person_id)
);

create table orderitem (
    order_item_id int auto_increment primary key,
    order_id int not null,
    menu_item_id int not null,
    quantity int not null default 1,
    item_price decimal(10,2) not null,
    foreign key (order_id) references `order`(order_id) on delete cascade,
    foreign key (menu_item_id) references dailymenuitem(menu_item_id)
);