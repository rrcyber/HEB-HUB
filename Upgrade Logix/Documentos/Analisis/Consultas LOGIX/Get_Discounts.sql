SELECT 
       DIS.[DiscountID]
      ,DIS.[Name]      
	  ,[DiscountTypeID]
      ,Tiers.[ReceiptDescription]      
	  ,[SpecifyBarcode]
      ,[DiscountBarcode]      
	  ,[VoidBarcode]
      ,[DiscountedProductGroupID]      
	  ,[ExcludedProductGroupID]
      ,[BestDeal]      
	  ,[AllowNegative]
      ,[ComputeDiscount]      
	  ,Tiers.[DiscountAmount]
      ,[AmountTypeID]      
	  ,[L1Cap]
      ,[L2DiscountAmt]      
	  ,[L2AmountTypeID]
      ,[L2Cap]      
	  ,[L3DiscountAmt]
      ,[L3AmountTypeID]      
	  ,Tiers.[ItemLimit]
      ,DIS.[WeightLimit]      
	  ,DIS.[DollarLimit]
      ,[ChargebackDeptID]      
	  ,[DecliningBalance]
      ,[RetroactiveDiscount]      
	  ,[UserGroupID]
      ,DIS.[Deleted]      
	  ,DIS.[LastUpdate]
      ,[SVProgramID]      
	  ,[FlexNegative]
      ,DIS.[ScorecardID]      
	  ,DIS.[ScorecardDesc]
      ,[AllowMarkup]      
	  ,[DiscountAtOrigPrice]
      ,[ProrationTypeID]      
	  ,[PriceChange]
      ,DIS.[IsWeightTotal]      
	  ,[PercentFixedRounding]
      ,[UOMTypeID]
	  ,Tiers.Priority_Tier as [Priority]
FROM [LogixRT].[dbo].[CPE_Discounts] DIS
  INNER JOIN CPE_Deliverables DEL ON DIS.DiscountID = DEL.OutputID
  INNER JOIN CPE_RewardOptions RO ON DEL.RewardOptionID = RO.RewardOptionID
  inner join CPE_Incentives inc on ro.IncentiveID = inc.incentiveId
  outer apply (Select row_number() over(order by ipgt.Tierlevel desc) Priority_Tier,  ipg_int.*, ipgt.Tierlevel, ipgt.Quantity
                                  ,dsct.ReceiptDescription
								  ,dsct.DiscountID
                                  ,dsct.DiscountAmount
                                  ,dsct.ItemLimit
                                  ,dsct.WeightLimit
                                  ,dsct.DollarLimit
                                  ,dsct.SPRepeatLevel
                                  ,dsct.BuyDescription
                                  ,dsct.IsWeightTotal
                           from cpe_incentiveproductgroups ipg_int inner join cpe_incentiveproductgroupTiers ipgT 
                                  on ipg_int.RewardOptionID = ipgt.RewardOptionID and ipg_int.IncentiveProductGroupID = ipgt.IncentiveProductGroupID
                                  inner join cpe_deliverables dlv on dlv.RewardOptionID = ipg_int.RewardOptionID
                                  inner join cpe_discounts dis on dlv.OutputID = dis.DiscountID
                                  inner join [CPE_DiscountTiers] dscT on dsct.DiscountId = dis.DiscountId and dsct.tierlevel = ipgT.Tierlevel
                                  where ipg_int.RewardOptionID = RO.RewardOptionId) as Tiers
  WHERE
  RO.IncentiveID = ?