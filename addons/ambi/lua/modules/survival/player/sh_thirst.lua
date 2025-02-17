local NW, C, SND = Ambi.NW, Ambi.General.Global.Colors, Ambi.General.Global.Sounds
local PLAYER = FindMetaTable( 'Player' )

function PLAYER:SetThirst( nThirst )
    NW.SetInt( self, 'Thirst', nThirst )
end

function PLAYER:GetThirst()
    return NW.GetInt( self, 'Thirst' )
end

if SERVER then
    local delay = 17.55
    hook.Add( 'Think', 'Ambi.Survival.AddThirst', function()
        if ( delay >= CurTime() ) then return end

        delay = CurTime() + 17.55

        for _, ply in ipairs( player.GetHumans() ) do
            if ply:HasGodMode() then continue end
            
            local rand = math.random( 0, 1 )
            if ( rand == 1 ) and ( ply:GetThirst() >= 0 ) then ply:SetThirst( ply:GetThirst() - math.random( 2, 4 ) ) end

            if ply:IsSuperAdmin() then continue end
            
            local thirst = ply:GetThirst()
            local health = ply:Health()
            if ( thirst <= 0 ) then 
                ply:SetThirst( 0 )
                if ( ply:Health() >= 10 ) then ply:SetHealth( ply:Health() - math.random( 4, 8 ) ) end
            elseif ( thirst <= 50 ) then
                if ( ply:Health() >= 10 ) then ply:SetHealth( ply:Health() - math.random( 2, 4 ) ) end
            elseif ( thirst <= 150 ) then
                if ( ply:Health() >= 10 ) then ply:SetHealth( ply:Health() - math.random( 1, 2 ) ) end
            end
        end
    end )

    function PLAYER:CollectWater()
        self:RunProcess( 'Collect Water', 'Собираем Водичку', 3.15, 2, function() 
            local rand_count = math.floor( 1, 3 )

            self:AddItem( 'water', rand_count, true )
            if self:GetItem( 'water' ) and ( self:GetItem( 'water' ).count >= rand_count ) then
                self:NotifySend( 4, { text = 'x'..rand_count..' '..AMB.SimpleInventory.GetClass( 'water' ).name, time = 3.75, color = C.AMB_GREEN } )

                hook.Call( '[Ambi.Survival.CollectWater]', nil, self, rand_count )
            end
        end )
    end

    hook.Add( 'KeyPress', 'Ambi.Survival.CollectWater', function( ePly, nKey )
        if ( nKey == IN_USE ) and ePly:Alive() and not ePly:IsProcess() and ( ePly:WaterLevel() >= 2 ) then
            ePly:CollectWater()
        end
    end )
end