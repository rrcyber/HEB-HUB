select * from tib_user

select * from tib_group
where ID_GROUP in (58,59,60)

select * from TIB_USER_GROUP
where ID_GROUP in (58,59,60)

select * from TIB_LOG_ERROR 
where PROCESS LIKE '%PICCMEX01-EXETransToSXD201001Subscriber%'
order by RUN_ID desc

select * from tib_log
where INTEGRATION_NAME LIKE '%PICCMEX01-MexicoTransfersShippingresPalletStoresSubscriber%'
order by RUN_ID desc


--update tib_group set PROJECT_NAME = 'PICCMEX01-EXETransToSXD201001Subscriber'
--where ID_GROUP in (58,59,60)

--ALTER TABLE DBSDI..tib_group
--ALTER COLUMN PROJECT_NAME VARCHAR (100) NOT NULL

sp_helptext SP_Purge_Tib_Log