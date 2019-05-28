SELECT 
       IPG.[IncentiveProductGroupID]
      ,IPG.[RewardOptionID]
      ,IPG.[ProductGroupID]
      ,IPG.[QtyForIncentive]
      ,IPG.[QtyUnitType]
      ,IPG.[AccumMin]
      ,IPG.[AccumLimit]
      ,IPG.[AccumPeriod]
      ,IPG.[ExcludedProducts]
      ,IPG.[Deleted]
      ,IPG.[LastUpdate]
      ,IPG.[ConditionNumber]
      ,IPG.[DisallowEdit]
      ,IPG.[RequiredFromTemplate]
      ,IPG.[TCRMAStatusFlag]
      ,IPG.[Disqualifier]
      ,IPG.[UniqueProduct]
      ,IPG.[Rounding]
      ,IPG.[MinPurchAmt]
      ,IPG.[MinItemPrice]
      ,IPG.[FullPrice]
      ,IPG.[ClearanceState]
      ,IPG.[ClearanceLevel]
      ,[ProductComboID]
	  ,ISNULL(Tiers.[Quantity], 0) as [Quantity]
	  ,Tiers.Priority_Tier as [Priority]
  FROM [LogixRT].[dbo].[CPE_IncentiveProductGroups] IPG
  INNER JOIN 
  CPE_RewardOptions RO ON IPG.RewardOptionID = RO.RewardOptionID
  Inner join CPE_Incentives inc on ro.IncentiveID = inc.incentiveId
   outer apply (Select row_number() over(order by ipgt.Tierlevel desc) Priority_Tier,  ipg_int.*, ipgt.Tierlevel, ipgt.Quantity
                           from cpe_incentiveproductgroups ipg_int inner join cpe_incentiveproductgroupTiers ipgT 
                                  on ipg_int.RewardOptionID = ipgt.RewardOptionID and ipg_int.IncentiveProductGroupID = ipgt.IncentiveProductGroupID
                                  inner join cpe_deliverables dlv on dlv.RewardOptionID = ipg_int.RewardOptionID
                                  inner join cpe_discounts dis on dlv.OutputID = dis.DiscountID
                                  inner join [CPE_DiscountTiers] dscT on dsct.DiscountId = dis.DiscountId and dsct.tierlevel = ipgT.Tierlevel
                                  where ipg_int.RewardOptionID = RO.RewardOptionId) as Tiers
  WHERE
  RO.IncentiveID = ?