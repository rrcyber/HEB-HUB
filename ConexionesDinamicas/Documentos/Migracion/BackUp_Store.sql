/***********************************************************************************************************/
/*	Este query respalda la configuracion de las tiendas														*/
/*  Establecer el id de la tienda a respaldar en el parametro STOREID de la clausula WHERE                  */
/***********************************************************************************************************/

SELECT 'INSERT INTO' 
+ ' DBSTG_INT..INT_STORES'
+ '(STOREID, DESCRIPTION, URL)'
+ ' values (''' + cast(STOREID as nvarchar(50)) + ''',''' 
+ cast(DESCRIPTION as nvarchar(50)) + ''','''
+ cast(URL as nvarchar(50))+''')'
FROM DBSTG_INT..INT_STORES WHERE STOREID IN (XXXX,XXXX,XXXX)