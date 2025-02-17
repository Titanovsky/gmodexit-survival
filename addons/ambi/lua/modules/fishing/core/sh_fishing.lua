Ambi.Fishing.baites = Ambi.Fishing.baites or {}

function Ambi.Fishing.AddBait( sBait, sDescription, tRandTime, sModel, nScale, sMaterial, cColor, fAction )
    Ambi.Fishing.baites[ string.lower( tostring( sBait ) ) ] = {
        desc = sDescription or '',
        model = sModel,
        time = tRandTime,
        scale = nScale or 1,
        mat = sMaterial or '',
        color = cColor,
        action = fAction
    }
end

function Ambi.Fishing.GetBait( sBait )
    return Ambi.Fishing.baites[ string.lower( tostring( sBait ) ) ]
end