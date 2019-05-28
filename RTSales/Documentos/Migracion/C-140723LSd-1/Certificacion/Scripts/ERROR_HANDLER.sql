-- CONEXIÓN DE BD: SCD201080 User: tibco Password: tibco

--Ingresa los usuarios asociados a la notificacion de incidente
insert into dbsdi.dbo.tib_user (name, email) values ('Luis Castor', 'lcastor@hebmex.com.mx');
insert into dbsdi.dbo.tib_user (name, email) values ('Ramon Carballo', 'rcarballo@hebmex.com.mx');

--Los siguientes scripts son para insertar en los group's
insert into dbsdi.dbo.tib_group (group_name, project_name)
values ('TECHNICAL-ERROR', 'SCI201097-Mex_Offer_Publisher-1');

insert into dbsdi.dbo.tib_group (group_name, project_name)
values ('DATA-ERROR', 'SCI201097-Mex_Offer_Publisher-1');

insert into dbsdi.dbo.tib_group (group_name, project_name)
values ('FUNCTIONAL-ERROR', 'SCI201097-Mex_Offer_Publisher-1');


--Los siguientes scripts son para insertar la relacion User-Group
insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'Luis Castor'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'TECHNICAL-ERROR' and project_name='SCI201097-Mex_Offer_Publisher-1');

insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'Luis Castor'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'DATA-ERROR' and project_name='SCI201097-Mex_Offer_Publisher-1');

insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'Luis Castor'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'FUNCTIONAL-ERROR' and project_name='SCI201097-Mex_Offer_Publisher-1');

insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'Ramon Carballo'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'TECHNICAL-ERROR' and project_name='SCI201097-Mex_Offer_Publisher-1');

insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'Ramon Carballo'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'DATA-ERROR' and project_name='SCI201097-Mex_Offer_Publisher-1');

insert into dbsdi.dbo.tib_user_group (id_user, id_group)
select (select id_user from dbsdi.dbo.tib_user where Name = 'Ramon Carballo'),
(Select id_group from dbsdi.dbo.tib_group where group_Name = 'FUNCTIONAL-ERROR' and project_name='SCI201097-Mex_Offer_Publisher-1');