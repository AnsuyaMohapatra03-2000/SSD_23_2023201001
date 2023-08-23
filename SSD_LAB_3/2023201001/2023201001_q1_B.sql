Alter table SSDLab.menu ADD food_type varchar(10);


UPDATE SSDLab.menu SET food_type='veg' where POSITION('Paneer' IN dish_name)!=0; 
UPDATE SSDLab.menu SET food_type='non-veg' where POSITION('Chicken' IN dish_name)!=0; 


select * from SSDLab.menu;
