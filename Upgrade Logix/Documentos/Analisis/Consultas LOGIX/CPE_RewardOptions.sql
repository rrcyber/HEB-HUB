 SELECT 
ICG.IncentiveCustomerID
 , ICG.RewardOptionID
 , ICG.CustomerGroupID
 , ICG.ExcludedUsers
 , ICG.Deleted
 , ICG.LastUpdate
 , ICG.ConditionNumber
 , CRO.HHEnable
 , ICG.RequiredFromTemplate
 , PLUS.PLU
 FROM [LogixRT].[dbo].[CPE_RewardOptions] CRO
 INNER JOIN [LogixRT].[dbo].[CPE_IncentiveCustomerGroups] ICG ON CRO.RewardOptionID = ICG.RewardOptionID 
 LEFT JOIN CPE_IncentivePLUs PLUS ON CRO.RewardOptionID = PLUS.RewardOptionID
 WHERE IncentiveID = ?
 and ICG.Deleted !=1