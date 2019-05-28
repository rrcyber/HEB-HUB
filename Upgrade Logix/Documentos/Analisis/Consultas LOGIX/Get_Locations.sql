Select 
LG.LocationGroupID, 
LG.Name, 
LG.Description, 
LG.CreatedDate, 
LG.ExtGroupID, 
LG.ExtSeqNum, 
LG.ExtExcluded, 
LG.AllLocations, 
LG.LastUpdate, 
LG.StatusFlag, 
LG.TCRMAStatusFlag, 
LG.EngineID, 
LG.BannerID 
from [LogixRT].[dbo].[OfferLocations] OL
INNER JOIN [LogixRT].[dbo].[LocationGroups] LG ON OL.LocationGroupID = LG.LocationGroupID 
where OL.OfferID = ? and LG.Deleted != 1 and OL.Deleted != 1


Select L.LocationID,
 L.ExtLocationCode,
 L.LocationName,
 L.Address1,
 L.Address2,
 L.City,
 L.State,
 L.Zip,
 L.TestingLocation,
 L.LastUpdate,
 L.StatusFlag,
 L.CountryID,
 L.ContactName,
 L.PhoneNumber,
 L.GenIPL,
 L.LastIPL,
 L.CMOADeployStatus,
 L.EngineID,
 L.BannerID
 from [LogixRT].[dbo].[OfferLocations] OL
INNER JOIN [LogixRT].[dbo].[LocationGroups] LG ON OL.LocationGroupID = LG.LocationGroupID 
INNER JOIN [LogixRT].[dbo].[LocGroupItems] LGI ON LG.LocationGroupID = LGI.LocationGroupID 
INNER JOIN [LogixRT].[dbo].[Locations] L ON LGI.LocationID = L.LocationID
where OL.OfferID = ? and LGI.LocationGroupID = ? and LGI.Deleted != 1