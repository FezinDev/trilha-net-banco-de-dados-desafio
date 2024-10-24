-- 1

select
	nome,
	ano
from Filmes;

-- 2

select
	nome,
	ano,
	duracao
from Filmes
order by ano asc;

-- 3

select
	nome,
	ano,
	duracao
from Filmes
where Nome = 'de volta para o futuro';

-- 4

select
	nome,
	ano,
	duracao
from Filmes
where Ano = 1997;

-- 5

select
	nome,
	ano,
	duracao
from Filmes
where Ano > 2000;

-- 6

select
	nome,
	ano,
	duracao
from Filmes
where Duracao > 100 and Duracao < 150
order by Duracao asc;

-- 7

select
	Ano,
	COUNT(*) Quantidade
from Filmes
group by Ano
order by Quantidade desc;


-- 8

select
	*
from Atores
where Genero = 'm'

-- 9

select
	*
from Atores
where Genero = 'f'
order by PrimeiroNome asc;

-- 10

select 
	f.Nome,
	g.Genero
from FilmesGenero fg
join Filmes f on f.Id = fg.IdFilme
join Generos g on g.Id = fg.IdGenero;

-- 11

select 
	f.Nome,
	g.Genero
from FilmesGenero fg
	join Filmes f on f.Id = fg.IdFilme
	join Generos g on g.Id = fg.IdGenero
where Genero like 'mist%';

-- 12

select
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
from ElencoFilme ef
	join Filmes f on f.Id = ef.IdFilme
	join Atores a on a.Id = ef.IdAtor;
