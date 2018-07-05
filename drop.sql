drop user newqq cascade;
alter tablespace newqq offline;
drop tablespace newqq including contents and datafiles;
select name from v$datafile;
