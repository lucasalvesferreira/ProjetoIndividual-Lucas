
    
    

USE Pokedex;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),	
	senha VARCHAR(50),
    inicial varchar(50)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
); 

select * from usuario;


select COUNT(id) as "Soma dos usuarios" from usuario;

SELECT 
        id AS "pokeId",
        nome,
        email,
		senha,
        inicial
    FROM usuario ;
    


CREATE TABLE categoria(
idTipo INT AUTO_INCREMENT PRIMARY KEY,
Tipos VARCHAR(50)
);

CREATE TABLE pokemons (
idPoke INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR (50),
Região VARCHAR (30),
fkCategoria int,
foreign key (fkCategoria) references categoria(idTipo)
);


INSERT INTO categorias values
(null,'Grama'),
(null,'Venenoso'),
(null,'Fogo'),
(null,'Voador'),
(null,'Água'),
(null,'Inseto'),
(null,'Elétrico'),
(null,'Normal'),
(null,'Fantasma'),
(null,'Terra'),
(null,'Pedra'),
(null,'Lutador'),
(null,'Fada'),
(null,'Lendario'),
(null,'Psíquico'),
(null,'Dragão'),
(null,'Gelo'),
(null,'Planta');


SELECT * FROM pokemons;

DESC pokemons;



INSERT INTO pokemons VALUES
(null, 'Bulbasaur', 'Kanto'),
(null, 'Ivysaur','Kanto'),
(null, 'Venusaur', 'Kanto'),
(null, 'Charmander','Kanto'),
(null, 'Charmeleon', 'Kanto'),
(null, 'Charizard', 'Kanto'),
(null, 'Squirtle','Kanto'),
(null, 'Wartortle','Kanto'),
(null, 'Blastoise','Kanto'),
(null, 'Caterpie', 'Viridion'),
(null, 'Metapod', 'Viridion'),
(null, 'Butterfree', 'Viridion'),
(null, 'Weedle','Viridion'),
(null, 'Kakuna', 'Viridion'),
(null, 'Beedrill', 'Viridion'),
(null, 'Pidgey','Kanto'),
(null, 'Pidgeotto','Kanto'),
(null, 'Pidgeot','Kanto'),
(null, 'Rattata','Kanto'),
(null, 'Raticate','Kanto'),
(null, 'Spearow',  'Kanto'),
(null, 'Fearow','Kanto'),
(null, 'Ekans','Kanto'),
(null, 'Arbok', 'Kanto'),
(null, 'Pikachu', 'Viridion'),
(null, 'Raichu','Viridion'),
(null, 'Sandshrew','Kanto'),
(null, 'Sandslash','Kanto'),
(null, 'Nidoran F', 'Kanto'),
(null, 'Nidorana', 'Kanto'),
(null, 'NidoQueen',  'Kanto'),
(null, 'Nidoran M','Kanto'),
(null, 'Nidorano','Kanto'),
(null, 'NidoKing','Kanto');

SELECT * FROM pokemons;

INSERT INTO pokemons VALUES
(null, 'Clefary','Kanto'),
(null, 'Clefable','Kanto'),
(null, 'Vulpix', 'Kanto'),
(null, 'Ninetales','Kanto'),
(null, 'Jigglypuff','Kanto'),
(null, 'Wigglytuff','Kanto'),
(null, 'Zubat','Kanto'),
(null, 'Golbat','Kanto'),
(null, 'Oddish','Kanto'),
(null, 'Gloom', 'Kanto'),
(null, 'Vileplume','Kanto'),
(null, 'Paras', 'Kanto'),
(null, 'Parasect', 'Kanto'),
(null, 'Venonat', 'Kanto'),
(null, 'Venomoth', 'Kanto'),
(null, 'Diglett', 'Kanto'),
(null, 'Dugtrio','Kanto'),
(null, 'Meowth', 'Kanto'),
(null, 'Persian','Kanto'),
(null, 'Psyduck', 'Kanto'),
(null, 'Golduck', 'Kanto');

SELECT * FROM pokemons;

INSERT INTO pokemons (Nome,Tipo,Região) VALUES
('Mankey','Kanto'),
('Priameape','Kanto'),
('Growlithe','Kanto'),
('Arcanine','Kanto'),
('Poliwag','Kanto'),
('Poliwhirl','Kanto'),
('Poliwrath','Kanto'),
('Abra','Kanto'),
('Kadabra','Kanto'),
('Alakazam','Kanto'),
('Machop','Kanto'),
('Machoke','Kanto'),
('Machamp','Kanto'),
('Bellsprout','Kanto'),
('Weepinbell','Kanto'),
('Victreebel','Kanto');

select * from pokemons;

INSERT INTO pokemons (Nome,Tipo,Região) VALUES
('Tentacool','Água/Veneno','Kanto'),
('Tentacruel','Água/Veneno','Kanto'),
('Geodude','Pedra/Terra','Kanto'),
('Graveler','Pedra/Terra','Kanto'),
('Golem','Pedra/Terra','Kanto'),
('Ponyta','Fogo','Kanto'),
('Rapidash','Fogo','Kanto'),
('Slommpoke','Água/Psíquico','Kanto'),
('Slowbro','Água/Psíquico','Kanto'),
('Magnemite','Elétrico/Metal','Kanto'),
('Magneton','Elétrico/Metal','Kanto'),
('Farfetchd','Normal/Voador','Kanto'),
('Doduo','Normal/Voador','Kanto'),
('Dodrio','Normal/Voador','Kanto'),
('Seel','Water','Kanto'),
('Dewgong','Water/Ice','Kanto'),
('Grimer','Veneno','Kanto'),
('Muk','Veneno','Kanto'),
('Shellder','Água','Kanto'),
('Cloyster','Água/Gelo','Kanto'),
('Gastly','Fantasma/Veneno','Kanto'),
('Haunter','Fantasma/Veneno','Kanto'),
('Gengar','Fantasma/Veneno','Kanto'),
('Onix','Rocha/Terra','Kanto'),
('Drowzee','Psíquico','Kanto'),
('Hypno','Psíquico','Kanto'),
('Krabby','Água','Kanto'),
('Kingler','Água','Kanto'),
('Voltorb','Elétrico','Kanto'),
('Electrode','Elétrico','Kanto'),
('Exeggcute','Planta/Psíquico','Kanto'),
('Exeggutor','Planta/Psíquico','Kanto'),
('Cubone','Terra','Kanto'),
('Marowak','Terra','Kanto'),
('Hitmonlee','Lutador','Kanto'),
('Hitmonchan','Lutador','Kanto'),
('Lickitung','Normal','Kanto'),
('Koffing','Veneno','Kanto'),
('Wezzing','Veneno','Kanto'),
('Rhyhorn','Terra/Pedra','Kanto'),
('Rhydon','Terra/Pedra','Kanto'),
('Chansey','Normal','Kanto'),
('Tangela','Grama','Kanto'),
('Kangaskhan','Normal','Kanto'),
('Horsea','Água','Kanto'),
('Seadra','Água','Kanto'),
('Goldeen','Água','Kanto'),
('Seaking','Água','Kanto'),
('Staryu','Água','Kanto'),
('Starmie','Água/Psíquico','Kanto'),
('Mr Mime','Psíquico/Fada','Kanto'),
('Scyther','Grama/Voador','Kanto'),
('Jinx','Gelo/Psíquico','Kanto'),
('Electabuzz','Elétrico','Kanto'),
('Magmar','Fogo','Kanto'),
('Pinsir','Grama','Kanto'),
('Tauros','Normal','Kanto'),
('Magikarp','Água','Kanto'),
('Gyarados','Água/Voador','Kanto'),
('Lapras','Água/Gelo','Kanto'),
('Ditto','Normal','Kanto'),
('Eevee','Normal','Kanto'),
('Vaporeon','Água','Kanto'),
('Jolteon','Elétrico','Kanto'),
('Flareon','Fogo','Kanto'),
('Porygon','Normal','Kanto'),
('Omanyte','Pedra/Água','Kanto'),
('Omastar','Pedra/Água','Kanto'),
('Kabuto','Pedra/Água','Kanto'),
('Kabutops','Pedra/Água','Kanto'),
('Aerodactyl','Pedra/Voador','Kanto'),
('Snorlax','Normal','Kanto'),
('Articuno','Gelo/Voador','Kanto'),
('Zapdos','Elétrico/Voador','Kanto'),
('Moltres','Fogo/Voador','Kanto'),
('Dratini','Dragão','Kanto'),
('Dragonair','Dragão','Kanto'),
('Dragonite','oador','Kanto'),
('Mewtho','Psíquico','Kanto'),
('Mew','Psíquico','Kanto');

select * from pokemons;


select * from pokemons where nome ='Bulbasaur';