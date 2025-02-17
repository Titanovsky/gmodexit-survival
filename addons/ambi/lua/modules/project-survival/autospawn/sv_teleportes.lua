local C = Ambi.General.Global.Colors
local Add = Ambi.AutoSpawn.Add

local MAP = 'gm_amb_remeselnik_island'

------------------------------------------------------------------------------------------
local COLL_GROUP = COLLISION_GROUP_PLAYER
local POINTS = {
    { pos = Vector( 5651, -12327, -335 ), ang = Angle( 0, 90, 0 ) },
    { pos = Vector( 5473, -12336, -335 ), ang = Angle( 0, 90, 0 ) },
    { pos = Vector( 5321, -12344, -335 ), ang = Angle( 0, 90, 0 ) },
    { pos = Vector( 5148, -12353, -336 ), ang = Angle( 0, 90, 0 ) },
    { pos = Vector( 4931, -12365, -336 ), ang = Angle( 0, 90, 0 ) },
    { pos = Vector( 4719, -12362, -332 ), ang = Angle( 0, 90, 0 ) },
    { pos = Vector( 4528, -12362, -332 ), ang = Angle( 0, 90, 0 ) },

    { pos = Vector( 1219, -9352, -333 ), ang = Angle( -9, 93, 0 ) },
    { pos = Vector( 7385, 1557, -272 ), ang = Angle( -10, -151, 0 ) },
    { pos = Vector( 9180, 9042, -288 ), ang = Angle( -17, -140, 0 ) },
    { pos = Vector( -366, 10150, -374 ), ang = Angle( -4, -92, 0 ) },
}

Add( 'tp0', 'tp_teleporter', 'Телепорт от Спавна в рандомную точку', MAP, Vector( 6438, -12629, -6514 ), Angle( 0, -90, -90 ), function( eObj )
    eObj:SetHeader( 'Спавн >> Остров' )
    eObj:SetDelay( 3 )
    eObj:SetColor( C.FLAT_GREEN )
    for k, v in ipairs( POINTS ) do
        eObj:SetPoint( 'island'..k, v.pos, v.ang, nil, function( ePly ) 
            ePly:SetCollisionGroup( COLL_GROUP )
        end )
    end
end )

------------------------------------------------------------------------------------------
local POINTS = {
    { pos = Vector( 6580, -15506, -4772 ), ang = Angle( 0, 90, 0 ) },
    { pos = Vector( 6033, -15460, -4765 ), ang = Angle( 0, 90, 0 ) },
    { pos = Vector( 5344, -15405, -4768 ), ang = Angle( 0, 90, 0 ) },
    { pos = Vector( 4623, -15480, -4771 ), ang = Angle( 0, 90, 0 ) },
}

Add( 'tp1', 'tp_teleporter', 'Телепорт из Острова в Пустыню', MAP, Vector( 5959, -11474, -350 ), Angle( 0, 90, -90 ), function( eObj )
    eObj:SetHeader( 'Остров >> Пустыня' )
    eObj:SetDelay( 15 )
    eObj:SetColor( C.AMBI )
    for k, v in ipairs( POINTS ) do
        eObj:SetPoint( 'desert'..k, v.pos, v.ang )
    end
end )

------------------------------------------------------------------------------------------
local POINTS = {
    { pos = Vector( 5823, -11341, -340 ), ang = Angle( 0, 180, 0 ) },
    { pos = Vector( 5832, -11497, -340 ), ang = Angle( 0, 180, 0 ) },
    { pos = Vector( 5840, -11650, -341 ), ang = Angle( 0, 180, 0 ) },
    { pos = Vector( 5843, -11819, -337 ), ang = Angle( 0, 180, 0 ) },
}

Add( 'tp2', 'tp_teleporter', 'Телепорт из Пустыни в Остров', MAP, Vector( 5557, -15835, -4800 ), Angle( 0, 0, -90 ), function( eObj )
    eObj:SetHeader( 'Пустыня >> Остров' )
    eObj:SetDelay( 15 )
    eObj:SetColor( C.AMBI_GREEN )
    for k, v in ipairs( POINTS ) do
        eObj:SetPoint( 'island_from_desert'..k, v.pos, v.ang )
    end
end )

------------------------------------------------------------------------------------------
local POINTS = {
    { pos = Vector( 12621, -10118, -6654 ), ang = Angle( 0, -90, 0 ) },
    { pos = Vector( 12330, -10108, -6654 ), ang = Angle( 0, -90, 0 ) },
    { pos = Vector( 12020, -10101, -6654 ), ang = Angle( 0, -90, 0 ) },
    { pos = Vector( 11742, -10094, -6654 ), ang = Angle( 0, -90, 0 ) },
}

Add( 'tp_labx18_in', 'tp_teleporter', 'Телепорт в X-18', MAP, Vector( 10779, -651, -3296 ), Angle( 0, 180, -90 ), function( eObj )
    eObj:SetHeader( 'Пустыня >> X-18' )
    eObj:SetDelay( 10 )
    eObj:SetColor( C.ABS_BLACK )
    for k, v in ipairs( POINTS ) do
        eObj:SetPoint( 'x18'..k, v.pos, v.ang )
    end
end )

local POINTS = {
    { pos = Vector( 10774, -998, -3289 ), ang = Angle( 0, -90, 0 ) },
}

Add( 'tp_labx18_out1', 'tp_teleporter', 'Телепорт из X-18', MAP, Vector( 12249, -9903, -6669 ), Angle( 0, 180, -90 ), function( eObj )
    eObj:SetHeader( 'X-18 >> Пустыня' )
    eObj:SetDelay( 10 )
    eObj:SetColor( C.AMBI )
    for k, v in ipairs( POINTS ) do
        eObj:SetPoint( 'x18out'..k, v.pos, v.ang )
    end
end )

------------------------------------------------------------------------------------------

local POINTS = {
    { pos = Vector( 6587, -11483, -6484 ), ang = Angle( 0, 90, 0 ) },
    { pos = Vector( 6446, -11486, -6484 ), ang = Angle( 0, 90, 0 ) },
    { pos = Vector( 6738, -11481, -6484 ), ang = Angle( 0, 90, 0 ) },
    { pos = Vector( 6824, -11479, -6485 ), ang = Angle( 0, 90, 0 ) },
}

Add( 'tp_in_snow_in', 'tp_teleporter', 'Телепорт в Страну Металла', MAP, Vector( 5842, -225, -4800 ), Angle( 0, -180, -90 ), function( eObj )
    eObj:SetHeader( 'Пустыня >> Страна Металла' )
    eObj:SetDelay( 20 )
    eObj:SetColor( C.AMBI_BLUE )
    for k, v in ipairs( POINTS ) do
        eObj:SetPoint( 'snowin'..k, v.pos, v.ang )
    end
end )

------------------------------------------------------------------------------------------

local POINTS = {
    { pos = Vector( 5670, -460, -4788 ), ang = Angle( 0, -90, 0 ) },
    { pos = Vector( 5799, -473, -4789 ), ang = Angle( 0, -90, 0 ) },
    { pos = Vector( 5945, -474, -4792 ), ang = Angle( 0, -90, 0 ) },
    { pos = Vector( 6080, -476, -4790 ), ang = Angle( 0, -90, 0 ) },
}

local COLOR = Color( 0, 161, 255, 255 )
Add( 'tp_in_snow_out', 'tp_teleporter', 'Телепорт в Пустыню', MAP, Vector( 6585, -11565, -6504 ), Angle( 0, 0, -90 ), function( eObj )
    eObj:SetHeader( 'Страна Металла >> Пустыня' )
    eObj:SetDelay( 20 )
    eObj:SetColor( C.AMBI )
    for k, v in ipairs( POINTS ) do
        eObj:SetPoint( 'snowout'..k, v.pos, v.ang )
    end
end )