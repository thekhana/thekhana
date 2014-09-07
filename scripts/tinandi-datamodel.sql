use test;

create table restaurant
(
t_restaurant_id nvarchar(15), /* (3city-3local + 'R' +numeric ID) 15 UniqueId for each restaurant */
t_restaurant_name nvarchar(100),
t_restaurant_address nvarchar(1000),
t_restaurant_localarea nvarchar(50),
t_restaurant_city nvarchar(50),
t_restaurant_landmark nvarchar(50),
t_restaurant_email nvarchar(50),
t_restaurant_info nvarchar(3000)
);

insert into restaurant values('HYDKONR00001', 'Food Inn', 'near Kothaguda signal, opposite to Appolo clinic', 'Kondapur', 'Hyderabad','Kothaguda cross roads', 'foodinn@gmail.com', 'Nice restaurant');
insert into restaurant values('HYDKONR00002', 'Abhiruchi Parcel', 'near shilpa park road, opposite to Majid', 'Kondapur', 'Hyderabad','', 'abhiruchifood@gmail.com', 'Nice west godavari food');

select * from restaurant;

drop table fooditems;

create table fooditems
(
t_restaurant_id nvarchar(15),
t_item_id nvarchar(15) primary key,
t_item_name nvarchar(50),
t_item_price int,
t_item_quantity nvarchar(10),
t_item_description nvarchar(1000),
t_item_types nvarchar(1000)
);

insert into fooditems values('HYDKONR00001', 'NVCHI0000001', 'Chicken Biryani', '180', 'Full','Hyderabad chicken Biryani', 'Chicken, nonveg,indian, hyderabad');
insert into fooditems values('HYDKONR00001', 'NVCHI0000002', 'Chicken Biryani-bone less', '200', 'Single','Hyderabad chicken Biryani- boneless', 'Chicken, nonveg,indian, hyderabad,boneless');
insert into fooditems values('HYDKONR00001', 'VPNR0000001', 'Panneer Masala', '130', 'Family','Selected Paneer made', 'veg, panneer,indian, masala, soft, heavy');
insert into fooditems values('HYDKONR00002', 'NVPRW0000002', 'Prawn Fry', '170', 'Full','Tiger prawn from west-godavari fish lakes', 'sea-food, prawn, fry, nonveg,indian, light food, andhra, west-godavari');


select * from fooditems;


create table foodcategories
(
t_restaurant_id nvarchar(15),
t_categories_list nvarchar(500)
);

insert into foodcategories values ('HYDKONR00001','hyderabad, non-veg, chicken, mutton, sea-food, fish, prawn, crabs, veg, indian, chinese, fast-food, rice, noodels');
insert into foodcategories values ('HYDKONR00002','Andhra, non-veg, chicken, mutton, sea-food, fish, prawn, crabs, veg, indian, chinese, fast-food, curry point, rice, west-godavari');

select * from foodcategories;


create table restaurantcontacts
(
t_restaurant_id nvarchar(15),
t_contact_number nvarchar(11)
);

insert into restaurantcontacts values ('HYDKONR00001','04064615444');
insert into restaurantcontacts values ('HYDKONR00002','09676166677');

select * from restaurantcontacts;

drop table restaurantowners;

create table restaurantowners
(
t_restaurant_id nvarchar(15),
t_owner_name nvarchar(30),
t_owner_address nvarchar(1000),
t_owner_localarea nvarchar(50),
t_owner_city nvarchar(50),
t_owner_landmark nvarchar(50),
t_owner_contact nvarchar(11)
);


insert into restaurantowners values ('HYDKONR00001','ravi teja','Durga road, nera towlichoki', 'Gachibowli','hyderabad', 'near darga road', '8125446655');
insert into restaurantowners values ('HYDKONR00002','venkat kondrasu','near GEM motors, power grid', 'Kondapur','hyderabad', 'near Srinidhi school', '9700009896');



select * from restaurantowners;


create table customer
(
t_customer_id nvarchar(20),
t_customer_name nvarchar(100),
t_customer_address nvarchar(1000),
t_customer_localarea nvarchar(50),
t_customer_city nvarchar(50),
t_customer_landmark nvarchar(50),
t_customer_email nvarchar(50),
t_customer_mobile nvarchar(10)
);

insert into customer values ('HYDKONC00001', 'Kondrasu venkat', 'Oracle IDC, Madhapur', 'Kondapur', 'Hyderabad', 'Near DELL office', 'venkat.kondrasu@gmail.com','9700009896');
insert into customer values ('HYDGBWC00002', 'Jarugu Raviteja', 'deloitte india, Madhapur', 'Towlichoki', 'Hyderabad', 'Near westin', 'raviteja.jarugu@gmail.com','9700009896');

select * from customer;