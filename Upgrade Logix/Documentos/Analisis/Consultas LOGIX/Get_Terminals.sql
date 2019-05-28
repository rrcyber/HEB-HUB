SELECT 
B.TerminalTypeID, 
B.Name, 
B.Description, 
B.ExtTerminalCode, 
B.LastUpdate, 
B.LayoutID,
B.EngineID,
B.SpecificPromosOnly,
B.FuelProcessing,
B.AnyTerminal,
B.BannerID,
A.Excluded
FROM [LogixRT].[dbo].[OfferTerminals] A
inner join [LogixRT].[dbo].[TerminalTypes] B on A.TerminalTypeID = B.TerminalTypeID
WHERE A.OfferID = ?