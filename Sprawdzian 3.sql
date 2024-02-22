
--1.	Wyświetl miasta mające ludność minimum 1 mln a maksymalnie 5 mln które nazwy są zawarty między litery „o i r” (tabela city).
	select * from city where population >=1000000 and population <=5000000 and name like '[o-r]%';
--2.	Wyświetl miasta spoza zakresu 1000 -  5000000  których nazwy są zawarte miedzy  „l” i „p” (tabela city)
	select * from city where population between 1000 and 5000000 and name like '[l-p]%';
--3.	Wyświetl 16 pierwszych danych z tabeli Island w której pomijamy wartości puste w polu „area”.
	select top 16 * from island where Area is not null;
--4.	Wyświetl państwa powyżej 100 mln ludności (tabela country).
	select * from country where population >=100000000;
--5.	Wyświetl miasta z pominięciem dwóch miast „Aba” i „Achen” (tabela city).
	select * from city where name not like 'aba' and name not like 'achen';
--6.	Wyświetl miasta których ludność jest z zakresu 500000-1000000 włącznie używając znaków ><= (tabela city).
	select * from city where population >=500000 and population <=1000000;
--7.	Wyświetl kraje mające w nazwie pierwszą literę „P” (tabela country).
	select * from country where name like 'p%';
--8.	Wyświetl 2 kontynenty  Azja i Afryka wraz z powierzchnią (tabela continent).
	 select * from continent where name in ('africa', 'asia');
--9.	Wyświetl państwa które są „parlamentarną demokracją” po roku 01.01.1980 (tabela politics).
	select * from politics where government ='parliamentary democracy' and independence>'1980-01-01';
--10.	Zmniejsz inflację w państwach o 35% pokazując inflację przed i po_obniżce z pominięciem pustych pól  (tabela economy) 

--11.	Wyświetl miasta tylko z Polski (tabela city).
	select * from city where country ='Poland';
--12.	Wyświetl miasta mające w nazwie WIC i uporządkowane rosnąco oraz wyeliminuj miasta na literę W (tabela city). 
	select * from city where name like '%WIC%' and name not like 'W%' order by name;
--13.	Wyświetl miasta mające w nazwie druga literę „B”. (tabela city).
	select * from city where name like '_B%';
--14.	Wyświetl nazwy kolumn w tabeli country w języku polskim (np. nazwa kraju, kod, stolica itp).
	select * from country select name as 'Nazwa kraju' from country;
	select code as 'Kod' from country;
	select capital as 'Stolica' from country;
--15.	Wyświetl państwa które rozpoczynają się na litery "p", "w" i "h"  rosnąco. (tabela country).
	select * from country where Name like '[p, w, h]%' order by name;
--16.	Wyświetl miasta mające ludność minimum 1 mln a maksymalnie 2 mln (tabela city)
	select * from city where population >=1000000 and population <=2000000 ;