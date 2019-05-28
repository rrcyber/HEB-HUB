-- PO
--En el signo ? se coloca el numero de orden de compra
-- tabla pmghdree
select count (*), PMG_PO_NUMBER from pmm.pmghdree where PMG_PO_NUMBER in(
?) group by PMG_PO_NUMBER;
-- tabla pmgdtlee
select count (*), PMG_PO_NUMBER from pmm.pmgdtlee where PMG_PO_NUMBER in(
?) group by PMG_PO_NUMBER;
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------

--RCV 


---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------

--TRF
--En el signo ? se coloca el numero de transferencia
select count (*), CARTON_NUMBER from pmm.SDITRFDTI where CARTON_NUMBER in(
?) group by CARTON_NUMBER;

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------

--INV
--En el signo ? se coloca el numero de inventario si la consulta no arroja resultados tambien se puede
--usar el campo TRANS_REF2
select count (*), TRANS_REF from pmm.HEB_SDIINVADI where TRANS_REF in(
?) group by TRANS_REF;

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
--PHY
--En el signo ? se coloca el numero de toma fisica
select count (*), CONTROL_NUMBER from pmm.SDIPHYDTI where CONTROL_NUMBER in(
?) group by CONTROL_NUMBER;