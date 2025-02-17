Ambi.Survival.resources = Ambi.Survival.resources or {}

function Ambi.Survival.AddResource( sType, tModels, tItems, nMinHealth, nMaxHealth )
    Ambi.Survival.resources[ string.lower( tostring( sType ) ) ] = {
        minhp = nMinHealth or 1,
        maxhp = nMaxHealth or 2,
        models = tModels or {},
        items = tItems or {}
    }
end

function Ambi.Survival.GetResource( sType )
    return Ambi.Survival.resources[ string.lower( tostring( sType ) ) ]
end