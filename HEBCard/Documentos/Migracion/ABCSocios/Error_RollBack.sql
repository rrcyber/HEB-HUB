use DBTIB
delete from tib_user_group where id_group in(select id_group from tib_group where project_name = 'PSRHPartnerToHEBCard_root')
delete from tib_group where project_name = 'PSRHPartnerToHEBCard_root'