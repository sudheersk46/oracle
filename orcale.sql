CREATE TABLESPACE newqq DATAFILE '/home/ordb/new/newqq' SIZE 256M;
CREATE USER newqq IDENTIFIED BY newqq;
grant "RESOURCE" to newqq;
grant "CONNECT" to newqq;
grant create session,create table,create user,create view, create sequence to newqq;

GRANT CREATE ANY SYNONYM TO newqq;
GRANT CREATE ANY VIEW TO newqq;


alter user newqq quota unlimited on users;

alter user newqq
DEFAULT TABLESPACE newqq
QUOTA UNLIMITED ON newqq
TEMPORARY TABLESPACE temptable;

select name from v$datafile;
