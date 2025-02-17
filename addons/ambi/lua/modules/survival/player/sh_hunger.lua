local NW = Ambi.NW
local Player = FindMetaTable( 'Player' )

function Player:SetHunger( nHunger )
    NW.SetInt( self, 'Hunger', nHunger )
end

function Player:SetHunger( nHunger )

    NW.SetInt( self, 'Hunger', nHunger )
end

function Player:GetHunger()
    return NW.GetInt( self, 'Hunger' )
end

if SERVER then
    local delay = 12.25
    hook.Add( 'Think', 'Ambi.Survival.AddHunger', function()
        if ( delay >= CurTime() ) then return end

        delay = CurTime() + 12.25

        for _, ply in ipairs( player.GetHumans() ) do
            if ply:HasGodMode() then continue end
            if not ply.ready_for_skin then continue end

            local rand = math.random( 0, 1 )
            if ( rand == 1 ) and ( ply:GetHunger() >= 0 ) then ply:SetHunger( ply:GetHunger() - math.random( 1, 4 ) ) end

            if ply:IsSuperAdmin() then continue end
            
            local hunger = ply:GetHunger()
            local health = ply:Health()
            if ( hunger <= 0 ) then 
                ply:SetHunger( 0 )
                if ( ply:Health() >= 10 ) then ply:SetHealth( ply:Health() - math.random( 4, 8 ) ) end
            elseif ( hunger <= 50 ) then
                if ( ply:Health() >= 10 ) then ply:SetHealth( ply:Health() - math.random( 2, 4 ) ) end
            elseif ( hunger <= 150 ) then
                if ( ply:Health() >= 10 ) then ply:SetHealth( ply:Health() - math.random( 1, 2 ) ) end
            end
        end
    end )
end