/***********************************************************************************************************/
/*	Este query habilita la comunicacion de informacion hacia tienda	                                    */
/*  En los parametros hay que incluir el nombre de la tienda, una descripcion de la sucursal, y la conexion a base de datos  */	
/***********************************************************************************************************/

insert into DBSTG_INT..INT_STORES (STOREID, DESCRIPTION, URL)values('XXXX', '<NombreTienda>', 'jdbc:sqlserver://scdXXX01:5000');