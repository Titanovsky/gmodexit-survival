local UT = Ambi.General.Utility
local Player = FindMetaTable( 'Player' )

function Player:PlantSeed( sSeed )
    local seed = Ambi.Farming.GetSeed( sSeed )
    if not seed then return false end

    local pos = UT.GetFrontPos( self, 100 ) + Vector( 0, 0, 35 )
    local plant = ents.Create( 'farming_plant' )
    plant:Spawn()
    plant:SetPos( pos )
    plant:DropToFloor()
    plant:SetPos( plant:GetPos() + Vector( 0, 0, -10 ) )
    plant:SetMoveType( MOVETYPE_NONE )
    plant:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
    plant:SetNWString( 'Header', seed.name..' [Семя]' )

    local grow = seed.grow

    timer.Simple( seed.times[ 1 ], function()
        if not IsValid( plant ) then return end

        grow[ 1 ]( plant )
        plant:SetModel( seed.model )
        plant:SetModelScale( 0.5 )
        plant:GetPhysicsObject():EnableMotion( false )
        plant:GetPhysicsObject():Sleep()
        plant:SetPos( plant:GetPos() + Vector( 0, 0, 30 ) )
        plant:SetNWString( 'Header', seed.name..' [Молодое]' )
        plant:DropToFloor()
        timer.Simple( seed.times[ 2 ], function()
            if not IsValid( plant ) then return end

            grow[ 2 ]( plant )
            plant:SetModelScale( 0.8 )
            plant:SetNWString( 'Header', seed.name..' [Растущее]' )
            timer.Simple( seed.times[ 3 ], function()
                if not IsValid( plant ) then return end

                grow[ 3 ]( plant )
                plant:SetModelScale( 1 )
                plant:SetNWString( 'Header', seed.name..' [Созрело]' )

                plant.use = seed.use
            end )
        end )
    end )
end

local MATS = {
    [ MAT_CONCRETE ] = true,
    [ MAT_DIRT ] = true,
    [ MAT_GRASS ] = true
}

local EXCEPTIONS = {
    [ 'prop_custom' ] = true,
    [ 'prop_physics' ] = true,
    [ 'farming_plant' ] = true,
}

function Player:IsPlantSeed( sSeed )
    if not Ambi.Farming.GetSeed( sSeed ) then return false end

    local trace = self:GetEyeTrace()
    if not MATS[ trace.MatType ] then return false end
    
    for _, ent in ipairs( ents.FindInSphere( UT.GetFrontPos( self, 100 ), 24 ) ) do
        if EXCEPTIONS[ ent:GetClass() ] then return false end
    end

    return true
end

hook.Add( 'PhysgunPickup', 'Ambi.Farming.BlockPlant', function( ePly, eObj )
    if ( eObj:GetClass() == 'farming_plant' ) then return false end
end )