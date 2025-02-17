local PLAYER = FindMetaTable( 'Player' )

function PLAYER:AddRadiation( nRadiation )
    local rad = self:GetNWInt( 'Radiation' )
    if ( rad == 100 ) then return end

    self:SetNWInt( 'Radiation', rad + nRadiation )
    if ( self:GetNWInt( 'Radiation' ) > 100 ) then self:SetNWInt( 'Radiation', 100 ) end
end

local delay = 0
hook.Add( 'Think', 'AMB.Survival.CheckRadiation', function()
    if ( delay > CurTime() ) then return end

    delay = CurTime() + 5

    for _, ply in ipairs( player.GetHumans() ) do
        local rad = ply:GetNWInt( 'Radiation' )
        if ( rad >= 5 ) and ply:Alive() and not ply:IsSuperAdmin() then ply:TakeDamage( math.random( 1, 8 ) ) end
        if ply:Alive() and ( AMB.Territory.GetChunkName( ply ) == 'medium rt' ) and ( ply:GetNWInt( 'AntiRadiation' ) < 1 ) then ply:AddRadiation( 1 ) end
        if ply:Alive() and ( AMB.Territory.GetChunkName( ply ) == 'big rt' ) and ( ply:GetNWInt( 'AntiRadiation' ) < 2 ) then ply:AddRadiation( 4 ) end
        if ply:Alive() and ( AMB.Territory.GetChunkName( ply ) == 'x18' ) and ( ply:GetNWInt( 'AntiRadiation' ) < 2 ) then ply:AddRadiation( 8 ) end
    end
end )

hook.Add( 'PlayerDeath', 'AMB.Survival.RemoveRadiation', function( ePly )
    ePly:SetNWInt( 'Radiation', 0 )
    ePly:SetNWInt( 'AntiRadiation', 0 )
    ePly:SetNWBool( 'HasSuit', false )
end )