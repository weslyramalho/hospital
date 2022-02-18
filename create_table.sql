create table funcionarios (
id int primary key,
matricula int,
nome varchar(50),
departamento varchar(50),
cargo varchar(50),
telefone varchar(11)
);

create table pacientes(
id int primary key,
nome varchar(50),
data_de_nascimento date,
telefone varchar(11)
);

create table historico_do_paciente (
id int primary key,
data_e_hora_de_entrada timestamp,
data_e_hora_de_saida timestamp,
diagnostico varchar(250),
id_pacientes int, 
id_funcionarios int,

constraint fk_pacientes
foreign key (id_pacientes)
references pacientes(id),

constraint fk_funcionarios
foreign key (id_funcionarios)
references funcionarios(id)

);