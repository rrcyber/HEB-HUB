 SELECT 
   PG.ProductGroupID
   ,PG.Name
   ,PG.AnyProduct
 FROM CPE_RewardOptions RO 
 INNER JOIN CPE_Deliverables D ON  RO.RewardOptionID = D.RewardOptionID
 INNER JOIN CPE_Discounts DSC ON D.OutputID = DSC.DiscountID 
 INNER JOIN ProductGroups PG on DSC.DiscountedProductGroupID = PG.ProductGroupID
 WHERE RO.IncentiveID = ? 
 
 
 SELECT DISTINCT P.ExtProductID
            FROM ProductGroups PG 
 INNER JOIN ProdGroupItems PGI ON PGI.ProductGroupID = PG.ProductGroupID
 INNER JOIN Products P ON PGI.ProductID = P.ProductID
 WHERE PG.ProductGroupID = ?
and PGI.Deleted != 1
 
