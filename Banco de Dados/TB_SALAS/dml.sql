create database sitefeiradb;

use sitefeiradb;

create table TB_salas  (

	ID_sala				int primary key auto_increment not null,
	DS_apresentacao		varchar(50) not null,
	DS_andar			varchar(50) not null,
	NR_pessoas			int not null,
	VL_avaliacao		decimal(3,2) not null
);