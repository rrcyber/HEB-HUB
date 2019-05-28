-- CONEXIÓN DE SERVIDOR: SCD201080 BD:DBSDI

--Los siguientes scripts son para eliminar la relacion user-group
delete from dbsdi.dbo.tib_user_group
where id_group in (Select Id_group from dbsdi.dbo.tib_group where project_name like '%SCI201097-Mex_File_Articulos_Impo%');

--Los siguientes scripts son para eliminar los user
delete from dbsdi.dbo.tib_user
where id_user in (Select Id_user from dbsdi.dbo.tib_user where name like '%Carlos Duarte%' or name like '%Jorge Marquez%');

--Los siguientes scripts son para eliminar en los group's
delete from dbsdi.dbo.tib_group
where project_name like '%SCI201097-Mex_File_Articulos_Impo%';
