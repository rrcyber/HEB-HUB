-- CONEXIÓN DE BD: SCD201080 User: tibco Password: tibco

--Los siguientes scripts son para eliminar la relacion user-group
delete from dbsdi.dbo.tib_user_group
where id_group in (Select Id_group from dbsdi.dbo.tib_group where project_name like '%ProductosImportacionToAbasto%');

--Los siguientes scripts son para eliminar en los group's
delete from dbsdi.dbo.tib_group
where project_name like '%PICCMEX01-ProductosImportacionToAbasto%';
