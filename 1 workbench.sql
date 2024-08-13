create database dbocorrencia;
use dbocorrencia;
create table modelo (idCliente int Primary  Key, 
Cpf char (14) unique, 
emailCliente varchar(50),
nomeCliente varchar(30));
create table Automoveis (Placa char(8) Primary Key,
Modelo varchar(30),
Cor  varchar(15),
Renavan varchar(30) unique,
Fabricante char (50),
idCliente int , foreign key(idCliente) REFERENCES modelo (idCliente) ON DELETE CASCADE); 
create table Ocorrencias (idOcorrencia int unique primary key ,
descOcorrencia char(255),
localOcorrencia char(50),
dataOcorrencia date,
Placa char(8) , foreign key (Placa) REFERENCES Automoveis (Placa) ON DELETE CASCADE);

insert into modelo (idCliente, nomeCliente, Cpf, emailCliente)
values (1056, 'Paulo de Souza Alves', '111.333.878-10', 'paulo.souza@gmail.com'),
(45789, 'Antonio de Assis', '345.987.675-16', 'antonioassis@hotmail.com'),
(65432, 'Ana Ferreira Santos', '776.875.123-88', 'ana.ferreira@hotmail.com'),
(98765, 'Pedro Aguiar', '987.098.665-17', 'pedro.aguiar@gmail.com'),
(54321, 'Beatriz Santos Silva', '987.092.333-12', 'beatriz.silva@hotmail.com');

insert into automoveis (Placa, Modelo, Cor, Renavan, Fabricante, idCliente)
values('KJU-3456', 'Fox', 'Branco', '9B45095698jkl00067', 'Volkswagen', 1056),
('DQJ-7890', 'Corolla', 'Preto', 'AB45095698JKL222334', 'Toyota', 45789),
('UJY-0976', 'Golf', 'Vermelho', 'XY45095698JK77765', 'Volkswagen', 54321),
('DRE-9912', 'Uno', 'Branco', 'ZZ45095698JK67890', 'Fiat', 54321),
('RTY-9816', 'Prisma', 'Cinza', 'AB45095698JK778800', 'Chevrolet', 65432);

insert into Ocorrencias (idOcorrencia, descOcorrencia, localOcorrencia, dataOcorrencia, Placa)
values ('10067', 'Acidente sem vítima', 'São Paulo', '2014-02-10', 'DQJ-7890'),
('34567', 'Acidente com vítima', 'São Caetano do Sul', '2018-07-23', 'DQJ-7890'),
('23098', 'Colisão', 'São Paulo', '2020-08-29', 'UJY-0976'),
('12009', 'Colisão com motociclista', 'Guarulhos', '2021-03-31', 'DRE-9912'),
('15998', 'Veículo assaltado', 'São Paulo', '1993-07-26', 'RTY-9816');



