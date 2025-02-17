local Add = Ambi.Fishing.AddBait 

---------------------------------------------------------------------------------------------------------------------
local CATCH = { 
    { 'roach', 2 }, 
    { 'roach', 4 },
    { 'roach', 6 },
    { 'roach', 8 },
    { 'roach', 8 },
    { 'ram', 1 },
    { 'ram', 2 },
    { 'ram', 3 },
    { 'ram', 4 },
    { 'bream', 2 },
    { 'bream', 4 },
    { 'bream', 8 },
    { 'bream', 12 },
    { 'ide', 1 },
    { 'ide', 2 },
    { 'carp', 1 },
    { 'carp', 2 },
    { 'carp', 3 },
    { 'crucian carp', 1 },
    { 'crucian carp', 1 },
    { 'catfish', 1 },
    { 'catfish', 2 },
    { 'catfish', 4 },
    { 'pike', 2 },
    { 'tuna', 2 },
}

Add( 'simple bait', 'Стандартный улов от обычной наживки', { min = 45, max = 75 }, 'models/props_everything/bananabunch.mdl', nil, nil, nil, function( ePly, eHook, eRod ) 
    local rand = math.random( 1, 4 )
    if ( rand == 4 ) then eHook:EmitSound( 'physics/body/body_medium_break4.wav' ) return end

    local catch = table.Random( CATCH )
    local fish = ents.Create( 'sinv_item' )
    fish:SetPos( eHook:GetPos() + Vector( 0, 0, 10 ) )
    fish:SetItem( catch[ 1 ], math.random( 1, catch[ 2 ] or 2 ) )
    fish:Spawn()

    eHook:EmitSound( 'ambient/water/drip'..math.random( 1, 4 )..'.wav' )
end )

---------------------------------------------------------------------------------------------------------------------
local CATCH = { 
    { 'roach', 4 }, 
    { 'roach', 6 },
    { 'roach', 8 },
    { 'ram', 2 },
    { 'ram', 4 },
    { 'bream', 4 },
    { 'bream', 5 },
    { 'bream', 6 },
    { 'ide', 2 },
    { 'ide', 3 },
    { 'carp', 2 },
    { 'carp', 3 },
    { 'crucian carp', 2 },
    { 'crucian carp', 2 },
    { 'catfish', 2 },
    { 'catfish', 5 },
    { 'catfish', 5 },
    { 'pike', 4 },
    { 'pike', 4 },
    { 'tuna', 4 },
    { 'tuna', 4 },
    { 'piranhas', 16 },
    { 'piranhas', 16 },
    { 'shark', 1 },
    { 'fish ukraine', 1 },
    { 'fish teleporter', 1 },
    { 'fish coin', 2 },
}

Add( 'advanced bait', '! улов от обычной наживки', { min = 35, max = 55 }, 'models/props_everything/loafofbread.mdl', nil, nil, nil, function( ePly, eHook, eRod ) 
    local rand = math.random( 1, 3 )
    if ( rand == 3 ) then eHook:EmitSound( 'physics/body/body_medium_break4.wav' ) return end

    local catch = table.Random( CATCH )
    local fish = ents.Create( 'sinv_item' )
    fish:SetPos( eHook:GetPos() + Vector( 0, 0, 10 ) )
    fish:SetItem( catch[ 1 ], math.random( 1, catch[ 2 ] or 2 ) )
    fish:Spawn()

    eHook:EmitSound( 'ambient/water/drip'..math.random( 1, 4 )..'.wav' )
end )

---------------------------------------------------------------------------------------------------------------------
local CATCH = { 
    { 'roach', 10 }, 
    { 'roach', 20 },
    { 'ram', 5 },
    { 'ram', 10 },
    { 'bream', 5 },
    { 'bream', 10 },
    { 'ide', 5 },
    { 'carp', 4 },
    { 'carp', 6 },
    { 'crucian carp', 4 },
    { 'catfish', 3 },
    { 'catfish', 6 },
    { 'pike', 1 },
    { 'pike', 2 },
    { 'pike', 4 },
    { 'tuna', 2 },
    { 'tuna', 2 },
    { 'tuna', 2 },
    { 'tuna', 2 },
    { 'piranhas', 32 },
    { 'piranhas', 32 },
    { 'piranhas', 32 },
    { 'shark', 2 },
    { 'fish ukraine', 2 },
    { 'fish teleporter', 2 },
    { 'fish coin', 2 },
    { 'fish admin', 1 },
    { 'fish kamen', 1 },
    { 'fish minecraft', 1 },
}

Add( 'extra bait', 'Афигенный улов от обычной наживки', { min = 20, max = 40 }, 'models/props_everything/cakeslice.mdl', nil, nil, nil, function( ePly, eHook, eRod ) 
    local rand = math.random( 1, 2 )
    if ( rand == 2 ) then eHook:EmitSound( 'physics/body/body_medium_break4.wav' ) return end

    local catch = table.Random( CATCH )
    local fish = ents.Create( 'sinv_item' )
    fish:SetPos( eHook:GetPos() + Vector( 0, 0, 10 ) )
    fish:SetItem( catch[ 1 ], math.random( 1, catch[ 2 ] or 2 ) )
    fish:Spawn()

    eHook:EmitSound( 'ambient/water/drip'..math.random( 1, 4 )..'.wav' )
end )