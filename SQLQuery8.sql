SELECT * FROM Filmes WHERE Ano = 1997

SELECT * FROM Filmes WHERE Nome = 'De volta para o futuro'

SELECT Nome, Ano  FROM Filmes 

SELECT Nome, Ano,Duracao FROM Filmes 

SELECT * FROM Filmes WHERE ANO > 2000

SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

SELECT ANO,Duracao FROM Filmes
ORDER BY ANO ASC

SELECT * FROM Atores

SELECT PrimeiroNome, UltimoNome, COUNT(*) OVER() AS genero
FROM Atores
WHERE Genero = 'M'

SELECT  id,PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;



SELECT Filmes.Nome AS Filme, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'MISTÉRIO'

SELECT 
    Filmes.Nome AS Filme, 
    Atores.PrimeiroNome, 
    Atores.UltimoNome, 
    ElencoFilme.Papel
FROM Filmes
-- Relacionando Filme com Gênero (se precisar do gênero também)
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
-- Relacionando Filme com Elenco
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
-- Relacionando Atores ao Elenco
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;
