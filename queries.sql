SELECT * FROM quest order by rating desc
Select question FROM question where quest =(select id from quest where rating=(select max(rating) from quest))
Select latitude, longitude FROM museum where id =(select museum from quest where rating = (select max(rating) from quest))
Select * FROM quest where museum = (select id from museum where name_museum = 'Музей криптографии')
Select name_person FROM person where id = (select creator from quest where rating = (select max(rating) from quest))