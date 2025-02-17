local C, SND = Ambi.General.Global.Colors, Ambi.General.Global.Sounds

local CONVERTS_BUILDINGS = {
    [ 'workbench' ] = 'Workbench',
    [ 'sleeping bag' ] = 'Sleeping Bag',
    [ 'weapons workbench' ] = 'Weapons Workbench',
    [ 'chemical station' ] = 'Chemical Station',
    [ 'factory' ] = 'Factory',
    [ 'campfire' ] = 'Campfire',
    [ 'furnace' ] = 'Furnace',
    [ 'stove' ] = 'Stove',
    [ 'blast furnace' ] = 'Blast Furnace',
    [ 'oil pumper' ] = 'Oil Pumper',
    [ 'oil refinery' ] = 'Oil Refinery'
}

util.AddNetworkString( 'amb_survival_disassemble' )
net.Receive( 'amb_survival_disassemble', function( _, ePly )
    if not IsValid( ePly ) or not ePly:Alive() then return end

    local ent = ePly:GetEyeTrace().Entity
    if not IsValid( ent ) then return end
    if not ( ent:CPPIGetOwner() == ePly ) then ePly:NotifySend( 4, { text = 'Вы не Хозяин Объекта!', color = C.ABS_RED, type = 1, time = 4, sound = SND.ERROR } ) return end

    local class = ent:GetClass()
    if ( class == 'prop_custom' ) or ( class == 'prop_physics' ) then class = Ambi.Survival.FindPropByModel( ent:GetModel() )
    elseif ( class == 'survival_build' ) then class = Ambi.Survival.objects[ CONVERTS_BUILDINGS[ ent:GetNWString( 'Building' ) ] ]
    else class = Ambi.Survival.FindObjectByClass( class )
    end

    if not class then ePly:ChatPrint( 'Нельзя разобрать!' ) return end

    --print( class )
    local items = class.craft
    if not items then ePly:NotifySend( 4, { text = 'Нельзя переработать!', color = C.ABS_RED, type = 1, time = 4, sound = SND.ERROR } ) return end

    local _items = {} -- чтобы ошибка была, если не хватате места для какого го ингридиента
    for class, count in pairs( items ) do
        count = math.floor( count / 2 )
        if ( count <= 1 ) then continue end

        if ePly:GetItem( class ) and ( ePly:GetItem( class ).count >= 10000 ) and not ePly:GetLastFreeSlot() then ePly:NotifySend( 4, { text = 'Не хватает места для '..class..' x'..count, color = C.ABS_RED, type = 1, time = 4, sound = SND.ERROR } ) return end

        _items[ #_items + 1 ] = { class, count }
    end

    for _, item in ipairs( _items ) do
        local class, count = item[ 1 ], item[ 2 ]

        ePly:AddItem( class, count, true )
        ePly:NotifySend( 4, { text = 'Вы получили '..class..' x'..count, color = C.AMB_GREEN, type = 2, time = 5 } )
    end

    ent:Remove()
end )

util.AddNetworkString( 'amb_survival_push_up_prop' )
net.Receive( 'amb_survival_push_up_prop', function( _, ePly )
    if not IsValid( ePly ) or not ePly:Alive() then return end

    local ent = ePly:GetEyeTrace().Entity
    if not IsValid( ent ) then return end
    if not ( ent:CPPIGetOwner() == ePly ) then ePly:NotifySend( 4, { text = 'Вы не Хозяин Объекта!', color = C.ABS_RED, type = 1, time = 4, sound = SND.ERROR } ) return end
    if timer.Exists( 'AmbTimerDelayPushUpProp:'..ePly:SteamID() ) then ePly:NotifySend( 4, { text = 'У вас задержка!', color = C.ABS_RED, type = 1, time = 4, sound = SND.ERROR } ) return end

    ent:SetPos( ent:GetPos() + Vector( 0, 0, 100 ) )
    timer.Create( 'AmbTimerDelayPushUpProp:'..ePly:SteamID(), 5, 1, function() end )
end )