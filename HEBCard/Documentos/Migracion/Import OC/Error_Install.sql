use DBTIB

insert into tib_group (GROUP_NAME, PROJECT_NAME)values('TECHNICAL-ERROR', 'ApiPurchaseOrderService_root')
insert into tib_group (GROUP_NAME, PROJECT_NAME)values('DATA-ERROR', 'ApiPurchaseOrderService_root')
insert into tib_group (GROUP_NAME, PROJECT_NAME)values('FUNCTIONAL-ERROR', 'ApiPurchaseOrderService_root')

insert into DBTIB.dbo.tib_user_group (id_user, id_group)
select (select id_user from DBTIB.dbo.tib_user where Name = 'OPERADOR DE SISTEMA'),
(Select id_group from DBTIB.dbo.tib_group where group_Name = 'TECHNICAL-ERROR' and project_name='ApiPurchaseOrderService_root');

insert into DBTIB.dbo.tib_user_group (id_user, id_group)
select (select id_user from DBTIB.dbo.tib_user where Name = 'INTEGRACIONES TIBCO'),
(Select id_group from DBTIB.dbo.tib_group where group_Name = 'TECHNICAL-ERROR' and project_name='ApiPurchaseOrderService_root');

insert into DBTIB.dbo.tib_user_group (id_user, id_group)
select (select id_user from DBTIB.dbo.tib_user where Name = 'SOPORTE ENABLING'),
(Select id_group from DBTIB.dbo.tib_group where group_Name = 'TECHNICAL-ERROR' and project_name='ApiPurchaseOrderService_root');



insert into DBTIB.dbo.tib_user_group (id_user, id_group)
select (select id_user from DBTIB.dbo.tib_user where Name = 'OPERADOR DE SISTEMA'),
(Select id_group from DBTIB.dbo.tib_group where group_Name = 'DATA-ERROR' and project_name='ApiPurchaseOrderService_root');

insert into DBTIB.dbo.tib_user_group (id_user, id_group)
select (select id_user from DBTIB.dbo.tib_user where Name = 'INTEGRACIONES TIBCO'),
(Select id_group from DBTIB.dbo.tib_group where group_Name = 'DATA-ERROR' and project_name='ApiPurchaseOrderService_root');

insert into DBTIB.dbo.tib_user_group (id_user, id_group)
select (select id_user from DBTIB.dbo.tib_user where Name = 'SOPORTE ENABLING'),
(Select id_group from DBTIB.dbo.tib_group where group_Name = 'DATA-ERROR' and project_name='ApiPurchaseOrderService_root');



insert into DBTIB.dbo.tib_user_group (id_user, id_group)
select (select id_user from DBTIB.dbo.tib_user where Name = 'OPERADOR DE SISTEMA'),
(Select id_group from DBTIB.dbo.tib_group where group_Name = 'FUNCTIONAL-ERROR' and project_name='ApiPurchaseOrderService_root');

insert into DBTIB.dbo.tib_user_group (id_user, id_group)
select (select id_user from DBTIB.dbo.tib_user where Name = 'INTEGRACIONES TIBCO'),
(Select id_group from DBTIB.dbo.tib_group where group_Name = 'FUNCTIONAL-ERROR' and project_name='ApiPurchaseOrderService_root');

insert into DBTIB.dbo.tib_user_group (id_user, id_group)
select (select id_user from DBTIB.dbo.tib_user where Name = 'SOPORTE ENABLING'),
(Select id_group from DBTIB.dbo.tib_group where group_Name = 'FUNCTIONAL-ERROR' and project_name='ApiPurchaseOrderService_root');

