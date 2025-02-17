local C = Ambi.General.Global.Colors

-- Types --------------------------------------------------------------------------------------------------
local Add = Ambi.Survival.AddNPCType

Add( 'antilop_berserk', 'npc_antlion', function( eNPC )
    eNPC:SetColor( C.AMBI_BLOOD )
    eNPC:SetModelScale( 0.55 )
    eNPC:SetHealth( math.random( 200, 400 ) )
    eNPC.multiply_damage = 2.2
    eNPC.evolution = true
    eNPC.type_animal = 'antilop_berserk'
    eNPC:SetNWInt( 'Level', 1 )
    eNPC:SetCustomCollisionCheck( true )
    eNPC:SetSkin( 1 )
    eNPC:SetMaterial( 'models/props_combine/tprings_globe' )
    timer.Create( 'AmbSurvivalNPCEvolution:'..eNPC:EntIndex(), 360, 0, function()
        if not IsValid( eNPC ) then timer.Remove( 'AmbSurvivalNPCEvolution:'..eNPC:EntIndex() ) end
        if ( eNPC:GetNWInt( 'Level' ) >= 6 ) then timer.Remove( 'AmbSurvivalNPCEvolution:'..eNPC:EntIndex() ) end

        Ambi.Survival.EvolutionNPC( eNPC )
    end )
end )

Add( 'antilop_defender', 'npc_antlion', function( eNPC )
    eNPC:SetColor( C.FLAT_GREEN )
    eNPC:SetModelScale( 0.75 )
    eNPC:SetHealth( math.random( 400, 600 ) )
    eNPC.multiply_damage = 2.8
    eNPC.evolution = true
    eNPC.type_animal = 'antilop_defender'
    eNPC:SetNWInt( 'Level', 1 )
    eNPC:SetCustomCollisionCheck( true )
    eNPC:SetSkin( 2 )
    eNPC:SetMaterial( 'models/props_combine/tprings_globe' )

    timer.Create( 'AmbSurvivalNPCEvolution:'..eNPC:EntIndex(), 10, 0, function()
        if not IsValid( eNPC ) then timer.Remove( 'AmbSurvivalNPCEvolution:'..eNPC:EntIndex() ) end
        if ( eNPC:GetNWInt( 'Level' ) >= 6 ) then timer.Remove( 'AmbSurvivalNPCEvolution:'..eNPC:EntIndex() ) end

        Ambi.Survival.EvolutionNPC( eNPC )
    end )
end )

Add( 'antilop_queen', 'npc_antlionguard', function( eNPC )
    eNPC:SetColor( C.AMBI )
    --eNPC:SetModelScale( 1.55 )
    eNPC:SetHealth( 12000 )
    eNPC:SetNWInt( 'Level', 1 )
    eNPC.type_animal = 'antilop_queen'
    eNPC.multiply_damage = 2
end )

--[[

Add( 'antilop_speedrunner', 'npc_antlion', function( eNPC )
    eNPC:SetColor( C.AMB_BLUE )
    eNPC:SetModelScale( 0.25 )
    eNPC:SetHealth( math.random( 200, 300 ) )
    eNPC.multiply_damage = 1.4
    eNPC.evolution = true
    eNPC.type_animal = 'antilop_speedrunner'
    eNPC:SetNWInt( 'Level', 1 )
    eNPC:SetCustomCollisionCheck( true )
    eNPC:SetSkin( 3 )
    eNPC:SetMaterial( 'models/props_combine/tprings_globe' )
    
    timer.Create( 'AmbSurvivalNPCEvolution:'..eNPC:EntIndex(), 10, 0, function()
        if not IsValid( eNPC ) then timer.Remove( 'AmbSurvivalNPCEvolution:'..eNPC:EntIndex() ) end
        if ( eNPC:GetNWInt( 'Level' ) >= 6 ) then timer.Remove( 'AmbSurvivalNPCEvolution:'..eNPC:EntIndex() ) end

        AMB.Survival.EvolutionNPC( eNPC )
    end )
end )

]]--

-- ---------------------------------------------------------------------------------------------------- --
local Add = Ambi.Survival.AddNPCPoint

local MAP = 'gm_amb_remeselnik_island'

Add( 'desert1', MAP, Vector( 11862, -13497, -4795 ), {  
    { delay = 60, type = 'antilop_berserk' },
} )

Add( 'desert2', MAP, Vector( 14113, -13575, -4772 ), {  
    { delay = 60, type = 'antilop_berserk' },
} )

Add( 'desert3', MAP, Vector( 10934, -12728, -4754), {  
    { delay = 60, type = 'antilop_berserk' },
} )

Add( 'desert4', MAP, Vector( 11430, -10429, -4762 ), {  
    { delay = 60, type = 'antilop_berserk' },
} )

-- ---------------------------------------------------------------------------------------------------- --

local MAP = 'gm_rhine'

Add( 'desert1', MAP, Vector( 10985, 2596, -15725 ), {  
    { delay = 60, type = 'antilop_berserk' },
} )

Add( 'desert2', MAP, Vector( 10669, 2283, -15717 ), {  
    { delay = 60, type = 'antilop_berserk' },
} )

Add( 'desert3', MAP, Vector( 11243, 2158, -15664 ), {  
    { delay = 60, type = 'antilop_berserk' },
} )

Add( 'desert4', MAP, Vector( 11856, 2340, -15652 ), {  
    { delay = 60, type = 'antilop_berserk' },
} )
-- ---------------------------------------------------------------------------------------------------- --

hook.Add( 'ShouldCollide', 'Ambi.Survival.CustomCollisionForNPC', function( eObj1, eObj2 )
    if eObj1:IsNPC() and ( eObj1:GetClass() == 'npc_antlion' ) and eObj2:IsNPC() and ( eObj2:GetClass() == 'npc_antlion' ) then return false end
    if eObj1:IsNPC() and ( eObj1:GetClass() == 'npc_antlion' ) and eObj2:IsNPC() and ( eObj2:GetClass() == 'npc_antlionguard' ) then return false end
end )