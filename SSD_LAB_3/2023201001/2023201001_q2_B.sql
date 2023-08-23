select genre, count(user_id) as total_user_count
from SSDLab.books as A,SSDLab.issued_users as B
where A.book_id=B.book_id 
group by A.genre;
