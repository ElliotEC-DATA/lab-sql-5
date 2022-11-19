use sakila;

-- 1

alter table staff
drop column picture;

-- 2
select * from staff;

insert into staff (first_name, sakila.staff.last_name, sakila.staff.address_id, sakila.staff.email, sakila.staff.store_id, sakila.staff.active, sakila.staff.username, sakila.staff.password)
values ( 'Tammy', 'Sanders', 5, 'Tammy.Sanders@sakilastaff.com', 2, 1, 'Tammy', 'unknown');

-- 3 film id isn't in rental table ?? And there is multiple values

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select * from inventory;

select inventory_id from inventory
where store_id = 1;

select * from staff;

select staff_id from staff
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select * from film;
select customer_id from film
select inventory_id from inventory;
where store_id = 1 and film_id = 1;
select customer_id from staff
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

insert into rental (rental_date,inventory_id, customer_id, staff_id)
values (now(),1 , 130,1);

select * from rental;

-- 4

select * from customer
where active = 0;

CREATE TABLE deleted_users (
	`customer_id`int UNIQUE NULL,
    `active` int NULL,
	`email` VARCHAR(255) Null,
    date DATE NOT NULL
    );

insert into deleted_users (customer_id, email, active, deleted_users.date) select customer_id, email, active, create_date from customer;

select * from deleted_users;

delete from deleted_users
where active = 0;


