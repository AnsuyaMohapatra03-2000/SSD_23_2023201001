
select user_name, title, C.author_name
from SSDLab.books as A,SSDLab.issued_users as B,SSDLab.authors as C
where A.book_id=B.book_id and A.author_id=C.author_id and (C.author_name is not NULL and A.title is not NULL);


