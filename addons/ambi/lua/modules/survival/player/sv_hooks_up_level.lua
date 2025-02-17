hook.Add( '[Ambi.Survival.CraftBuildings]', 'Ambi.Survival.UpLevel', function( ePly )
    ePly:AddXP( math.random( 16, 64 ) )
end )

hook.Add( '[Ambi.Survival.Digging]', 'Ambi.Survival.UpLevel', function( ePly )
    if ( math.random( 0, 1 ) == 0 ) then ePly:AddXP( 2 ) end
end )

hook.Add( '[Ambi.Survival.FarmResource]', 'Ambi.Survival.UpLevel', function( ePly, sResource, nCount, eObj )
    ePly:AddXP( math.random( 1, 16 ) )
end )

local START_SLOTS, ADD_SLOTS = 5, 4
hook.Add( '[Ambi.Survival.SetLevel]', 'Ambi.Survival.AddSlotsOnUpLevel', function( ePly, nLevel )
    local slots = START_SLOTS + ADD_SLOTS * ( nLevel - 1 )
    if ( ePly:GetSlots() >= slots ) then return end
    
    ePly:SetSlots( slots )
end )