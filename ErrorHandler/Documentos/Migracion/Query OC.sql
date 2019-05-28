--validar Bandera de recibo debe de estar en Y para que los tome
select * from PMM.heb_tibco_notify
where process_id = '34';

--update de la bandera a Y
update PMM.heb_tibco_notify set is_downloaded = 'Y'
where process_id = '34';

--Consultar OC con Recibo
select DISTINCT a.RCV_SESSION_ID, b.pmg_status, a.TRAN_TYPE
from pmm.sdircvshe a, pmm.sdircvsde b
where a.rcv_date_ses_clo >= trunc(sysdate-7)
and b.rcv_session_id = a.rcv_session_id
and b.PMG_STATUS in (5, 6)
and a.download_date_1 is null;

--update para que tome las OC con Recibo
update pmm.sdircvshe set download_date_1 = ''
where rcv_session_id in (12516,
12517);

--Consultar las OC a tomar
select * from pmm.sdircvshe
where rcv_session_id in (12516,
12517);

select * from pmm.sdircvsde
where PMG_PO_NUMBER in (13001568,
13001485,
13001567,
13001570);

--Consultar OC Normales y Recepcion
select *
from pmm.pmghdrae p left join pmm.vpcmstee v 
on p.vpc_tech_key = v.vpc_tech_key
where audit_date >= trunc(sysdate-7)
and (download_date is null and p.pmg_stat_code_a is not null and (p.pmg_stat_code_a = 4 or p.pmg_stat_code_a = 7))
or (download_date is null and p.pmg_stat_code_a is null and (p.pmg_stat_code = 4 and p.pmg_stat_code = 7))
order by audit_date asc;

select *
from pmm.pmghdrae p left join pmm.vpcmstee v 
on p.vpc_tech_key = v.vpc_tech_key
where audit_date >= trunc(sysdate-7);

--validar el costo de la OC
select pmg_sell_cost from pmm.pmgdtlee
where pmg_po_number in (13001881,
13001880,
13001883,
13001884);

--Update para quitar o poner el costo de una OC
update pmm.pmgdtlee set pmg_sell_cost = '44.44'
where pmg_po_number in (13001883
13001880,
13001883);

--Update para dejar el campo que se mensiona null
UPDATE PMM.pmghdrae SET DOWNLOAD_DATE = ''
where pmg_po_number in (13001881,
13001880,
13001883,
13001884);

--Validar las OC que se modificaron
select * from pmm.pmghdrae
where pmg_po_number in (13001881,
13001880,
13001883,
13001884);
