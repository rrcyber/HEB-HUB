 SELECT  IPG.ProductGroupID,
  PG.Name,
  PG.AnyProduct
 FROM CPE_RewardOptions RO
 INNER JOIN CPE_IncentiveProductGroups IPG ON  RO.RewardOptionID = IPG.RewardOptionID
 INNER JOIN ProductGroups PG on IPG.productGroupID = PG.ProductGroupID
 WHERE RO.IncentiveID = ?
 
 
  SELECT DISTINCT
  P.ExtProductID
 FROM CPE_RewardOptions RO
 INNER JOIN CPE_IncentiveProductGroups IPG ON  RO.RewardOptionID = IPG.RewardOptionID
 INNER JOIN ProductGroups PG on IPG.productGroupID = PG.ProductGroupID
 INNER JOIN ProdGroupItems PGI ON IPG.ProductGroupID = PGI.ProductGroupID
 INNER JOIN Products P ON PGI.ProductID = P.ProductID
 WHERE PG.ProductGroupID = ?
and PGI.Deleted != 1