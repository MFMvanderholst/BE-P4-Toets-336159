create database Overzicht_Examinator;

use Overzicht_Examinator;

create table Examen(
	Id              	INT  not null  auto_increment  primary key,
    StudentId       	int,
    Rijschool       	varchar(30),
    Stad            	varchar(30),
    Rijbewijscategorie  varchar(5),
    Datum               date,
    Uitslag             varchar(10)
    );
    
create table Examinator(
	Id    				int  not null  auto_increment  primary key,
    Voornaam			varchar(20),
    Tussenvoegsel 		varchar(10),
    Achternaam			varchar(20),
    Mobiel				varchar(12)
    );
    
create table ExamenPerExaminator(
	Id 					int  not null auto_increment  primary key,
    ExamenId			int,
    ExaminatorId		int
    );
    
alter table ExamenPerExaminator
	add constraint `ExamenPerExaminator_Examen` foreign key (`ExamenId`) references `Examen` (`Id`),
    add constraint `ExamenPerExaminator_Examinator` foreign key (`ExaminatorId`) references `Examinator` (`Id`);