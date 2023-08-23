select T.food_type,avg(T.price) as avg_food_type
from (select * from SSDLab.menu where price>=400) as T
group by T.food_type
order by avg(price) desc;

