-- CONEXIÓN DE BD: SRD201080

--Los siguientes scripts son para insertar en los group's
insert into dbsdi.dbo.tib_group (group_name, project_name)
values ('TECHNICAL-ERROR', 'PICCMEX01-ProductosImportacionToAbasto');

insert into dbsdi.dbo.tib_group (group_name, project_name)
values ('DATA-ERROR', 'PICCMEX01-ProductosImportacionToAbasto');

insert into dbsdi.dbo.tib_group (group_name, project_name)
values ('FUNCTIONAL-ERROR', 'PICCMEX01-ProductosImportacionToAbasto');


--Los siguientes scripts son para insertar la relacion User-Group
insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'INTEGRACIONES TIBCO'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'TECHNICAL-ERROR' and project_name='PICCMEX01-ProductosImportacionToAbasto');

insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'INTEGRACIONES TIBCO'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'DATA-ERROR' and project_name='PICCMEX01-ProductosImportacionToAbasto');

insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'INTEGRACIONES TIBCO'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'FUNCTIONAL-ERROR' and project_name='PICCMEX01-ProductosImportacionToAbasto');

insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'SOPORTE SUPPLY CHAIN'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'TECHNICAL-ERROR' and project_name='PICCMEX01-ProductosImportacionToAbasto');

insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'SOPORTE SUPPLY CHAIN'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'DATA-ERROR' and project_name='PICCMEX01-ProductosImportacionToAbasto');

insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'SOPORTE SUPPLY CHAIN'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'FUNCTIONAL-ERROR' and project_name='PICCMEX01-ProductosImportacionToAbasto');