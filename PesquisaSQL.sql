use Filmes;

--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano FROM Filmes
ORDER BY Ano ASC

--3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

--5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

--6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--7
SELECT Ano, COUNT(Id) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'

--9
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT f.Nome, g.Genero
FROM Filmes as f
JOIN FilmesGenero as fc ON f.Id = fc.IdFilme
JOIN Generos as g ON fc.IdGenero = g.Id

--11
SELECT f.Nome, g.Genero
FROM Filmes as f
JOIN FilmesGenero as fc ON f.Id = fc.IdFilme
JOIN Generos as g ON fc.IdGenero = g.Id
WHERE g.Genero = 'Mistério'


--12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel
FROM Filmes as f
JOIN ElencoFilme as e ON f.Id = e.IdFilme
JOIN Atores as a ON e.IdAtor =  a.Id