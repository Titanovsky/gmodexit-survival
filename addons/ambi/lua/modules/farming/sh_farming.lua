function Ambi.Farming.AddSeed( sSeed, sName, sModel, tTimes, fGrowOne, fGrowTwo, fGrowThree, fUse )
    Ambi.Farming.seeds[ string.lower( tostring( sSeed ) ) ] = {
        name = sName or '',
        model = sModel or '',
        times = tTimes or {},
        grow = { fGrowOne, fGrowTwo, fGrowThree },
        use = fUse
    }
end

function Ambi.Farming.GetSeed( sSeed )
    return Ambi.Farming.seeds[ string.lower( tostring( sSeed ) ) ]
end