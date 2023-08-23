UPDATE SSDLab.menu SET dish_name = ltrim(dish_name);
UPDATE SSDLab.menu SET dish_name = rtrim(dish_name);
UPDATE SSDLab.menu SET dish_name = replace(dish_name,'0','');

select * from SSDLab.menu;


