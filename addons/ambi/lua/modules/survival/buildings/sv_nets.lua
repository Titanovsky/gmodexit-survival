local C = Ambi.General.Global.Colors
local AddString = Ambi.General.Network.AddString

local show = AddString( 'amb_survival_show_building' )

local update = AddString( 'amb_survival_update_building' )
net.Receive( update, function( _, ePly )
    local ent = net.ReadEntity()
    if not IsValid( ePly ) or not IsValid( ent ) then return end
    if not Ambi.Survival.buildings_updates[ ent:GetNWString( 'Building' ) ] then return end -- todo: Kick
    if ( ent:GetPos():Distance( ePly:GetPos() ) > 300 ) then return end -- todo: Kick
    if ( ent:GetNWInt( 'Level' ) >= 5 ) then return end -- todo: Kick

    local items = Ambi.Survival.buildings_updates[ ent:GetNWString( 'Building' ) ][ ent:GetNWInt( 'Level' ) ].items
    for class, count in pairs( items ) do
        local item = ePly:GetItem( class )
        if not item then return end -- todo: Kick

        ePly:AddItem( item.class, -count, true )
    end
    ent:Update()
    ent:SaveEntity( ePly )
end )

local CLASSES = { [ 'survival_build_oil_pumper' ] = true, [ 'survival_build_oil_refinery' ] = true }

local turn_oil = AddString( 'amb_survival_turn_oil' )
net.Receive( turn_oil, function( _, ePly )
    local ent = net.ReadEntity()
    if not IsValid( ePly ) or not IsValid( ent ) then return end
    if ( ent:GetPos():Distance( ePly:GetPos() ) > 300 ) then return end -- todo: Kick
    if not CLASSES[ ent:GetClass() ] then return end

    local turned = ent:GetNWBool( 'Turned' )
    local text = turned and 'Выключили' or 'Включили'
    ent:Turn( not turned )
    ePly:NotifySend( 4, { time = 3, text = 'Вы '..text..' машину!', color = turned and C.AMBI_BLOOD or C.AMBI_GREEN, sound = 'buttons/button5.wav' } )
end )

local take_oil = AddString( 'amb_survival_take_oil' )
net.Receive( take_oil, function( _, ePly )
    local ent = net.ReadEntity()
    if not IsValid( ePly ) or not IsValid( ent ) then return end
    if ( ent:GetPos():Distance( ePly:GetPos() ) > 300 ) then return end -- todo: Kick
    if not CLASSES[ ent:GetClass() ] then return end
    if ( ent:GetCount() < 1.00 ) then return end

    local class = ( ent:GetNWString( 'Building' ) == 'oil pumper' ) and 'oil unprocessed' or 'oil'
    local count = ent:GetCount()
    local _count = math.floor( count )
    ePly:AddItem( class, _count, true )

    if ePly:GetItem( class ) and ( ePly:GetItem( class ).count >= _count ) then 
        ent:SetCount( 0.00 ) 
        ePly:NotifySend( 4, { time = 3, text = 'Вы взяли '..class..' x'.._count, color = C.ABS_BLACK } )
    end
end )