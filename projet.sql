create table individu(
numindividue number(8) primary key,
nomindividu varchar(50) not null,
prenomindividu varchar(50) not null);

CREATE TABLE film(
numfilm number(8) primary key,
titre varchar(50) not null,
realisateur number(8)references individu(numindividue));

create table exemplaire(
numexemplaire number(8) primary key,
numfilm number(8)references film(numfilm),
codesupport varchar(8) not null,
vo varchar(8),
probleme varchar(1000),
detailsupport varchar(1000));


create table clientt(
login varchar(30) primary key,
nomclient varchar(50) not null,
prenomclient varchar(50) not null,
motdepasse varchar(20),
adresse varchar(70));

create table LOCATION(
numexemplaire number(8) references exemplaire(numexemplaire),
datelocation date,
login varchar(30) references clientt(login),
dateenvoi date not null,
dateretour date not null,
primary key(numexemplaire,datelocation));

drop table location;
drop table exemplaire;
drop table film;
drop table clientt;
drop table individu;

/*insertion table individu*/
insert into individu values (25011 ,'rob','cohen');
insert into individu values(25022,'philip' ,'G.atwell');
insert into individu values(25033, 'john', 'singelton ');
insert into individu values(25044,'justin','lin');
insert into individu values(25055,'james','wan');
insert into individu values(25066,'michael','chaves');

insert into film 
values(2501,'fast and furious 1',25011);
insert into film 
values(2502,'fast and furious 2', 25022 );
insert into film (numfilm,titre,realisateur)
values(2503,'fast and furious 3',25033);
insert into film (numfilm,titre,realisateur)
values(2504,'fast and furious 4',25044);
insert into film (numfilm,titre,realisateur)
values(2505,'fast and furious 5',25044);
insert into film (numfilm,titre,realisateur)
values(2506,'fast and furious 6',25044);   
insert into film (numfilm,titre,realisateur)
values(2507,'fast and furious:tokyo drift',25044);
insert into film (numfilm,titre,realisateur)
values(2508,'fast and furious 9',25044);
insert into film (numfilm,titre,realisateur)
values(2509,'fast and furious X',25044);
insert into film (numfilm,titre,realisateur)
values(2510,'the conjuring 1',25055);
insert into film (numfilm,titre,realisateur)
values(2511,'the conjuring 2',25055);
insert into film (numfilm,titre,realisateur)
values(2512,'the conjuring 3',25066);
insert into film (numfilm,titre,realisateur)
values(1111,'MIB',25066);
insert into film (numfilm,titre,realisateur)
values(2222,'MIB2',25066);
insert into film (numfilm,titre,realisateur)
values(3333,'MIB3',25066);

insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(11,2501,'faf11','1','FALSE','VHS');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(12,2501,'faf32','0','TRUE','VHS');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(13,2501,'faf13','1','FALSE','DVD');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(14,2501,'faf32','1','FALSE','VHS');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(15,2501,'faf15','1','FALSE','DVD');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(21,2502,'faf32','0','FALSE','VHS');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(22,2502,'faf22','1','FALSE','DVD');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(23,2502,'faf32','0','FALSE','VHS');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(24,2502,'faf24','0','FALSE','DVD');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(31,2503,'faf32','1','TRUE','VHS');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(32,2503,'faf32','1','FALSE','DVD');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(33,2503,'faf33','0','FALSE','DVD');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(34,2503,'faf34','0','FALSE','VHS');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(41,2504,'faf41','1','TRUE','DVD');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(42,2504,'faf42','1','FALSE','DVD');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(43,2504,'faf44','1','TRUE','VHS');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(44,2504,'faf44','0','FALSE','VHS');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(51,2505,'faf51','0','TRUE','VHS');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(52,2505,'faf44','0','FALSE','DVD');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(53,2505,'faf53','0','TRUE','DVD');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(54,2505,'faf54','1','FALSE','DVD');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(61,2506,'faf44','1','TRUE','VHS');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(62,2506,'faf62','1','TRUE','VHS');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(63,2506,'faf63','1','TRUE','VHS');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(64,2506,'faf64','0','TRUE','DVD');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(71,2507,'faf71','0','TRUE','VHS');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(81,2508,'faf81','1','TRUE','DVD');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(91,2509,'faf91','1','TRUE','VHS');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(101,2510,'faf101','0','TRUE','VHS');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(111,2511,'faf111','0','TRUE','VHS');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(121,2512,'faf121','0','FALSE','DVD');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(122,2512,'faf121','1','TRUE','DVD');
insert into exemplaire (numexemplaire,numfilm , codesupport,vo,probleme,detailsupport)values(123,2512,'faf121','0','TRUE','DVD');

insert into clientt values ('sousou','sami','bou ali','azerty','tunis ibn sina');
insert into clientt values ('bou3a','ahmed','marzouki','qwerty','tunis fouchena');
insert into LOCATION values (21,'25/09/2020','bou3a','25/09/2020','25/10/2020');
insert into LOCATION values (22,'26/09/2020','sousou','26/09/2021','26/10/2020');

select * from individu;
select * from film;
select * from exemplaire;
select * from LOCATION;
select * from clientt ;
/**********************************************************************************************/
set serveroutput on
/*   Question  1 */
create   or  replace  function nbrfilms ( num  int  )return int is  
s  int   ; 
begin  
select count (*) into s from  film 
where realisateur  =  num;
return s; 
end ;


declare
x int;
begin
x:=nbrefilms(25044);
dbms_output.put_line(x);
end;

 /*  Question   2:*/
    /*a)*/ 
    CREATE TABLE tableBonus(
    login VARCHAR(20),
    bonus NUMBER(8,2), 
    nbrExLoues NUMBER(8), 
    CONSTRAINT fk_nbrfefilm FOREIGN KEY(login )REFERENCES clientt(login)); 
    drop table tableBonus;
    
    /*b)*/
    insert into tableBonus(login ,nbrExLoues) 
    select clientt.login,count(numexemplaire)
    from LOCATION,clientt  
    where (clientt.login = LOCATION.login) and (to_char(LOCATION.datelocation,'yyyy')='2020')   
    group by clientt.login;    
    /*c)*/ 
create or replace procedure  affecter_bonus( n1 int,n2 int )is 
    cursor c_bonus is select login,nbrExLoues from tableBonus ; 
    v_login tableBonus.login%type; 
    v_nbrexloues tableBonus.nbrexloues%type; 
begin 
    open c_bonus ; 
    loop 
        fetch c_bonus into v_login,v_nbrexloues; 
        exit when c_bonus%notfound  ; 
        if (0 < v_nbrExLoues) and (v_nbrExLoues < n1) then  
            update tableBonus
            set bonus = 0.1
            where login = v_login; 
        elsif (n1 <= v_nbrExLoues)and( v_nbrExLoues< n2) then 
            update tableBonus
            set bonus = 0.6 
            where login = v_login; 
        elsif n2 <= v_nbrExLoues then 
            update tableBonus
            set  bonus  = 0. 
            where   login  = v_login; 
        elsif v_nbrExLoues=0  	 then 
            update tableBonus
            set  bonus  = 0
            where   login  = v_login; 
        end if  ; 
    end loop ;
    close c_bonus; 
end affecter_bonus ;
  
  select *from tableBonus;
  begin
  affecter_bonus(1,2);
  end;
 /*d*/ 
  select nomclient,prenomclient,bonus from clientt join tablebonus using(login);  
 /*Question  3*/
 
 /*a)*/
CREATE OR REPLACE FUNCTION POURCENTAGE(N1 IN INT,N2 IN INT )RETURN NUMBER AS res number ;  
    BEGIN
    res := (n1 / n2)*100;  
    res:= round ( res, 2)  ;  
    return res;
END POURCENTAGE;
begin
dbms_output.put_line(POURCENTAGE(10,10));
end;
/*b)*/
create or replace function nbrExSupport(n number , c varchar) return  number as res number;  
    any_exception exception; 
begin  
    select  count(*) into  res from  exemplaire where numfilm =  n and  codesupport =  upper(c) ; 
    begin 
        if( upper (c) = 'ANY' )then 
            raise any_exception; 
        end if;  
        exception when any_exception then 
        select count(*) into res from exemplaire where numfilm= n;  
    end; 
    return res; 
end nbrExSupport;

begin
dbms_output.put_line(nbrExSupport(11,'2501'));
end;
/*c)*/ 
create table statistique  (
numFilm number(8) primary key references film(numfilm),
nbrEx int, 
pctgeDVD real,
pctgeVHS real);
drop table statistique;
  
  /*d)*/ 
  
  
  /****************************************************************************/
  create or replace procedure remplirStat 
is
 cursor c_film is  select numfilm from film ;
  cursor c_exmp is  select numexemplaire from exemplaire ;
 x exemplaire.numexemplaire%type;
 y film.numfilm%type;
 d number;
 v number ;
 nbr number ;
  res REAL ;
  res1 REAL ;
begin
open c_film ; 
 open c_exmp ; 
  loop 
  fetch c_film into y ;
  fetch c_exmp into x ;
   exit when c_exmp%Notfound ; 
   exit when c_film%Notfound ; 
  select count(detailsupport) into d from exemplaire where  detailsupport like'%DVD%' and numfilm= y;
   select count(detailsupport) into v from exemplaire where  detailsupport like'%VHS%'and numfilm=y;
   select count(x) into nbr from exemplaire WHERE  numfilm=y ;
   select POURCENTAGE(d,nbr) into res from dual;
   select POURCENTAGE(v,nbr) into res1 from dual;
   insert into statistique  values (y,nbr,res,res1);
   dbms_output.put_line(y||' '||nbr||' '||res||' '||res1);
  end loop ; 
 close c_exmp ; 
 close c_film ;
end;

begin
remplirStat();
end;
  /****************************************************************************/

select * from statistique;
 /*Question 4  
 a) */ 
 
create or replace function aucunexemplaire return number as x int;  
begin  
    select count(numfilm) into x   
    from film
    where numfilm not in(select numfilm from exemplaire); 
    return x; 
end aucunexemplaire;  

begin
dbms_output.put_line(aucunexemplaire());
end;

 
create or replace function prct_jamaisprobleme return number as prctg number; 
    x number; 
    y number; 
begin 
    select count(*)into x 
    from exemplaire 
    where probleme='TRUE';
    select count(*) into y 
    from exemplaire;
    prctg := POURCENTAGE(x,y);  
    return prctg;  
end prct_jamaisprobleme;
set serveroutput on
begin
dbms_output.put_line(prct_jamaisprobleme());
end;
/*b)*/
/*package head */  
create or replace PACKAGE STATISTICS as 
    function aucunexemplaire return number;  
    function prct_jamaisproblem return number; 
END STATISTICS;

/*package body */  
create or replace package body statistics is 
    function aucunexemplaire return number is 
        x int;
    begin  
        select count(numfilm) into x
        from film   
        where numfilm not in(select numfilm from exemplaire); 
        return x; 
    end aucunexemplaire;  

    function prct_jamaisproblem return number is 
        prctg number; 
        x number; 
        y number; 
    begin 
        select count(*)into x 
        from exemplaire 
        where upper(probleme)='FALSE';
        select count(*) into y 
        from  exemplaire;
        prctg := POURCENTAGE(x,y);  
        return prctg  ;  
    end prct_jamaisproblem ; 
end statistics ; 
 
/* 5) */

CREATE TABLE trace(
numLog int primary key,
message varchar(1000));

drop table trace;

CREATE OR REPLACE FUNCTION nbValLog RETURN INTEGER AS
nbval INTEGER;
BEGIN
SELECT COUNT(*) INTO nbval FROM TRACE;
RETURN nbval;
END;

begin
dbms_output.put_line(nbValLog);
end;

CREATE TRIGGER TRIG_1
BEFORE INSERT ON LOCATION
FOR EACH ROW
BEGIN
INSERT INTO TRACE
VALUES(nbValLog+1,'Trigger 1');
END;
CREATE TRIGGER TRIG_2
BEFORE INSERT ON LOCATION
BEGIN
INSERT INTO TRACE
VALUES(nbValLog+1,'Trigger 2');
END;
CREATE TRIGGER TRIG_3
AFTER INSERT ON LOCATION
FOR EACH ROW
BEGIN
INSERT INTO TRACE
VALUES(nbValLog+1,'Trigger 3');
END;
CREATE TRIGGER TRIG_4
AFTER INSERT ON LOCATION
BEGIN
INSERT INTO TRACE
VALUES(nbValLog+1,'Trigger 4');
END;
/*6)*/ 
/* create a function that verifies if the current user has the PRIVILEGE to delete or not return 1 if yes and 0 if not */  
create or replace function userpriv return number as
    x number := 0; 
    cursor c_role is select granted_role 
    FROM DBA_ROLE_PRIVS
    WHERE GRANTEE = (select user from dual );
    v_role dba_role_privs.granted_role%type; 
begin  
    open c_role; 
    loop 
        fetch c_role into v_role; 
        exit when c_role%notfound; 
        if(v_role ='DELETE_CATALOG_ROLE')then  
            x := 1; 
        end if; 
    end loop ; 
    close c_role; 
return x; 
end userpriv;
/* trigger creation */  
create or replace trigger deny_delete 
before delete on location   
begin 
    if userpriv() = 0 then  
     raise_application_error(-20555,'Attention !!''utilisateur non autorisé!');
     end if;
end ;
/* Question 7 */  
  
create or replace trigger lmd_trigger 
before delete or update or insert on location   
for  each  row 
begin 
    if :old.dateenvoi is NOT null then    
        if deleting then 
            raise_application_error(-20556,'supression impossible pour une ligne qui  contient  une date denvoi pour l"exemplaire !!' );
        end if ; 
    elsif :new.dateretour is not null and :new.dateenvoi is  null then
        if inserting then
            raise_application_error (-20557, ' insertion impossible une location dont on connaît la date de retour et dont on ignore la date d’envoi !!' );
        elsif updating then
            raise_application_error (-20557, 'insertion impossible une location dont on connaît la date de retour et dont on ignore la date d’envoi !!' );
        end if; 
    else 
        if deleting then
            dbms_output.put_line( ' vous avez  effectuer  une suppression : les details   de la supression  sont  '||' '|| :old.NUMEXEMPLAIRE || ' '|| :old.DATELOCATION ||' '|| :old.LOGIN||' '|| :old.DATERETOUR ||' '||:old.DATEENVOI)   ;  
        elsif inserting then
            dbms_output.put_line( 'vous avez  effectuer  une insertion : les details   de l"insertion sont  '||:new.NUMEXEMPLAIRE ||' '|| :new.DATELOCATION ||' '|| :new.LOGIN||' '|| :new.DATERETOUR ||' '|| :new.DATEENVOI) ; 
        elsif updating then 
            if updating ('numexemplaire') then
                dbms_output.put_line( 'les details   de la mise   à  jour  sont:   '||'les  anciennes  valeurs sont  : '||' '||:old.NUMEXEMPLAIRE ||' '||:old.DATELOCATION ||' '||:old.LOGIN||' '||:old.DATERETOUR ||' '||:old.DATEENVOI ) ;  
                dbms_output.put_line( 'les  nouvelles  valeurs sont  : '||' '||:new.NUMEXEMPLAIRE ||' '||:old.DATELOCATION ||' '||:old.LOGIN||' '||:old.DATERETOUR ||' '||:old.DATEENVOI) ; 
            elsif updating ('datelocation') then
                dbms_output.put_line( 'les details   de la mise   à  jour  sont:   '||'les  anciennes  valeurs sont  : '||' '||:old.NUMEXEMPLAIRE ||' '||:old.DATELOCATION ||' '||:old.LOGIN||' '||:old.DATERETOUR ||' '||:old.DATEENVOI ) ;  
                dbms_output.put_line( 'les  nouvelles  valeurs sont  : '||' '||:old.NUMEXEMPLAIRE ||' '||:new.DATELOCATION ||' '||:old.LOGIN||' '||:old.DATERETOUR ||' '||:old.DATEENVOI) ; 
            elsif updating ('login') then
                dbms_output.put_line( 'les details   de la mise   à  jour  sont:   '||'les  anciennes  valeurs sont  : '||' '||:old.NUMEXEMPLAIRE ||' '||:old.DATELOCATION ||' '||:old.LOGIN||' '||:old.DATERETOUR ||' '||:old.DATEENVOI ) ;  
                dbms_output.put_line( 'les  nouvelles  valeurs sont  : '||' '||:old.NUMEXEMPLAIRE ||' '||:old.DATELOCATION ||' '||:new.LOGIN||' '||:old.DATERETOUR ||' '||:old.DATEENVOI) ;
            elsif updating ('dateretour') then
                dbms_output.put_line( 'les details   de la mise   à  jour  sont:   '||'les  anciennes  valeurs sont  : '||' '||:old.NUMEXEMPLAIRE ||' '||:old.DATELOCATION ||' '||LOGIN||' '||:old.DATERETOUR ||' '||:old.DATEENVOI ) ;  
                dbms_output.put_line( 'les  nouvelles  valeurs sont  : '||' '||:old.NUMEXEMPLAIRE ||' '||:old.DATELOCATION ||' '||:old.LOGIN||' '||:new.DATERETOUR ||' '||:old.DATEENVOI) ;
            elsif updating ('dateenvoi') then
                dbms_output.put_line( 'les details   de la mise   à  jour  sont:   '||'les  anciennes  valeurs sont  : '||' '||:old.NUMEXEMPLAIRE ||' '||:old.DATELOCATION ||' '||:old.LOGIN||' '||:old.DATERETOUR ||' '||:old.DATEENVOI ) ;  
                dbms_output.put_line( 'les  nouvelles  valeurs sont  : '||' '||:old.NUMEXEMPLAIRE ||' '||:old.DATELOCATION ||' '||:old.LOGIN||' '||:old.DATERETOUR ||' '||:new.DATEENVOI);
            end if  ; 
        end if ; 
    end if ;      
end ;  
/**********************************************************/   
create or replace trigger lmd_trigger 
before delete or update or insert on location   
for  each  row 
begin 
    if :old.dateenvoi is not null then    
        if deleting then
            raise_application_error (-20556,'supression impossible pour une ligne qui contient une date denvoi pour l"exemplaire !!' );
        end if  ; 
    elsif :new.dateretour is not null and :new.dateenvoi is null then
        if inserting then
            raise_application_error (-20557, ' insertion impossible une location dont on connaît la date de retour et dont on ignore la date d’envoi !!' )  ;
        elsif updating then
            raise_application_error (-20558, ' insertion impossible une location dont on connaît la date de retour et dont on ignore la date d’envoi !!' )  ;
        end if; 
    else 
        if deleting then
            dbms_output.put_line( 'les details   de la supression  sont  '||  :old.NUMEXEMPLAIRE || :old.DATELOCATION || :old.LOGIN|| :old.DATERETOUR || :old.DATEENVOI)   ;  
        elsif inserting then
            dbms_output.put_line( 'les details   de l"insertion sont  '||:new.NUMEXEMPLAIRE || :new.DATELOCATION || :new.LOGIN|| :new.DATERETOUR || :new.DATEENVOI) ; 
        elsif updating then
            dbms_output.put_line( 'les details   de la mise   à  jour  sont:   '||'les  anciennes  valeurs sont  : '||:old.NUMEXEMPLAIRE || :old.DATELOCATION || :old.LOGIN|| :old.DATERETOUR || :old.DATEENVOI ) ;  
            dbms_output.put_line( 'les  nouvelles  valeurs sont  : ' || :new.NUMEXEMPLAIRE || :new.DATELOCATION || :new.LOGIN|| :new.DATERETOUR || :new.DATEENVOI) ; 
        end if ; 
    end if ; 
end;  
        
dbms_output.put_line( 'les details   de la mise   à  jour  sont:   '||'les  anciennes  valeurs sont  : '||:old.NUMEXEMPLAIRE || :old.DATELOCATION || :old.LOGIN|| :old.DATERETOUR || :old.DATEENVOI ) ;  
dbms_output.put_line( 'les  nouvelles  valeurs sont  : ' || :new.NUMEXEMPLAIRE || :new.DATELOCATION || :new.LOGIN|| :new.DATERETOUR || :new.DATEENVOI) ;
		
/* Question  8 */   
/*  b )  */ 
create or replace package triggerspackage is   
    login1 tablebonus.login%type;
end ;  


create or replace trigger trg2 
AFTER INSERT ON LOCATION
declare  
    nbre TABLEBONUS.nbrExLoues%type;
      triggerspackage.login1 := :NEW.login;
begin 
    SELECT COUNT(*) INTO nbre 
    FROM LOCATION
    WHERE login = triggerspackage.login1;
    UPDATE TABLEBONUS
    SET nbrExLoues = nbre+1 
    WHERE login = triggerspackage.login1;
end;