-- 1
Select Nome, Ano from Filmes;

-- 2
Select Nome, Ano from Filmes
order by Ano;

-- 3
Select Nome, Ano, Duracao from Filmes
where Nome = 'De Volta para o Futuro';

-- 4
Select Nome, Ano, Duracao from Filmes
where Ano = 1997;

-- 5
Select Nome, Ano, Duracao from Filmes
where Ano >= 2000;

-- 6
Select Nome, Ano, Duracao from Filmes
where Duracao between 101 and 149
order by Duracao;

-- 7
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8
Select PrimeiroNome, UltimoNome from Atores
where Genero = 'M';

-- 9 
Select PrimeiroNome, UltimoNome from Atores
where Genero = 'F'
order by PrimeiroNome;

-- 10
Select Nome, Genero from Filmes
Inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
Inner join Generos on FilmesGenero.IdGenero = Generos.Id;

-- 11
Select Nome, Genero from Filmes
Inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
Inner join Generos on FilmesGenero.IdGenero = Generos.Id
where Genero = 'Mistério';

-- 12
Select Nome, PrimeiroNome, UltimoNome, Papel from Filmes
inner join ElencoFilme on Filmes.id = ElencoFilme.IdFilme
Inner join Atores on ElencoFilme.IdAtor = Atores.id;