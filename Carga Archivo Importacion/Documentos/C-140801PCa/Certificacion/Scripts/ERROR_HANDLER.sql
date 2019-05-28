-- CONEXIÓN DE SERVIDOR: SCD201080 BD:DBSDI

--Ingresa los usuarios asociados a la notificacion de incidente
insert into dbsdi.dbo.tib_user (name, email) values ('Carlos Duarte', 'cduarte@hebmex.com.mx');
insert into dbsdi.dbo.tib_user (name, email) values ('Jorge Marquez', 'jmarquez@hebmex.com');

--Los siguientes scripts son para insertar en los group's
insert into dbsdi.dbo.tib_group (group_name, project_name)
values ('TECHNICAL-ERROR', 'SCI201097-Mex_File_Articulos_Impo');

insert into dbsdi.dbo.tib_group (group_name, project_name)
values ('DATA-ERROR', 'SCI201097-Mex_File_Articulos_Impo');

insert into dbsdi.dbo.tib_group (group_name, project_name)
values ('FUNCTIONAL-ERROR', 'SCI201097-Mex_File_Articulos_Impo');


--Los siguientes scripts son para insertar la relacion User-Group
insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'Carlos Duarte'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'TECHNICAL-ERROR' and project_name='SCI201097-Mex_File_Articulos_Impo');

insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'Carlos Duarte'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'DATA-ERROR' and project_name='SCI201097-Mex_File_Articulos_Impo');

insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'Carlos Duarte'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'FUNCTIONAL-ERROR' and project_name='SCI201097-Mex_File_Articulos_Impo');

insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'Jorge Marquez'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'TECHNICAL-ERROR' and project_name='SCI201097-Mex_File_Articulos_Impo');

insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'Jorge Marquez'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'DATA-ERROR' and project_name='SCI201097-Mex_File_Articulos_Impo');

insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'Jorge Marquez'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'FUNCTIONAL-ERROR' and project_name='SCI201097-Mex_File_Articulos_Impo');