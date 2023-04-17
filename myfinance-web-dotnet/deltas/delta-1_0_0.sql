create database myfinance;
go

use myfinance;

create table planoconta(
    id int identity(1,1) not null,
    descricao varchar(50) not null,
    tipo chart(1) not null,
    primary key(id)
);

create table transacao(
    id int identity(1,1) not null,
    historico text null,
    data date not null,
    valor decimal(9,2),
    planocontaid int not null,
    primary key(id),
    foreign key(planocontaid) reference planoconta(id)
);

---- Alimentando com dados

insert into planoconta(descricao, tipo ) values ('Combustível', 'D');

insert into planoconta(descricao, tipo ) values ('Alimentação', 'D');

insert into planoconta(descricao, tipo ) values ('Impostos', 'D');

insert into planoconta(descricao, tipo ) values ('Salário', 'R');

insert into transacao(historico, data, valor, planocontaid) 
values 
('Gasolina para viagem', getdate(),300, 1);