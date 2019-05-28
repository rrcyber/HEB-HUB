SELECT 
 CG.CustomerGroupID, 
 CG.Name, 
 CG.NewCardholders, 
 CG.AnyCAMCardholder
 FROM LogixRT.dbo.CPE_RewardOptions RO
 INNER JOIN LogixRT.dbo.CPE_IncentiveCustomerGroups ICG ON  RO.RewardOptionID = ICG.RewardOptionID
 INNER JOIN LogixRT.dbo.CustomerGroups CG ON ICG.CustomerGroupID = CG.CustomerGroupID
 WHERE RO.IncentiveID = ?
AND ICG.Deleted != 1


SELECT C.InitialCardID 
FROM LogixXS.dbo.customers C
INNER JOIN LogixXS.dbo.GroupMembership GM ON C.CustomerPK = GM.CustomerPK
WHERE GM.CustomerGroupID = ?
and GM.Deleted != 1