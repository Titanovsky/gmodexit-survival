local CATEGORY = '[Выживашка]'

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
local command = 'additem'
local function Action( eCaller, ePly, sItem, nCount )
    if not Ambi.SimpleInventory.GetClass( sItem ) then eCaller:ChatPrint( 'Такого предмета не существует!' ) return end
    if not ePly:GetItem( sItem ) and not ePly:GetLastFreeSlot() then eCaller:ChatPrint( 'У игрока не хватает места!' ) return end 

    ePly:AddItem( sItem, nCount )

	ulx.fancyLogAdmin( eCaller, '#A выдал #s игроку #T (#i)', sItem, ePly, nCount )
end
local method = ulx.command( CATEGORY, 'ulx '..command, Action, '/'..command )
method:addParam{ type=ULib.cmds.PlayerArg }
method:addParam{ type=ULib.cmds.StringArg, hint = 'Класс предмета' }
method:addParam{ type=ULib.cmds.NumArg, min = -5000, default = 1, max = 5000, hint = 'Количество', ULib.cmds.optional, ULib.cmds.round }
method:defaultAccess( ULib.ACCESS_SUPERADMIN )
method:help( 'Выдать предмет игроку' )

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
local command = 'removeitem'
local function Action( eCaller, ePly, sItem )
    if not Ambi.SimpleInventory.GetClass( sItem ) then eCaller:ChatPrint( 'Такого предмета не существует!' ) return end
    if not ePly:GetItem( sItem ) then eCaller:ChatPrint( 'У игрока нет такого предмета!' ) return end 

    ePly:RemoveItem( sItem )

	ulx.fancyLogAdmin( eCaller, '#A забрал #s у игрока #T', sItem, ePly )
end
local method = ulx.command( CATEGORY, 'ulx '..command, Action, '/'..command )
method:addParam{ type=ULib.cmds.PlayerArg }
method:addParam{ type=ULib.cmds.StringArg, hint = 'Класс предмета' }
method:defaultAccess( ULib.ACCESS_SUPERADMIN )
method:help( 'Забрать предмет игроку' )

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
local command = 'clearinventory'
local function Action( eCaller, ePly )
    ePly:RemoveItems()

	ulx.fancyLogAdmin( eCaller, '#A очистил инвентарь игроку #T', ePly )
end
local method = ulx.command( CATEGORY, 'ulx '..command, Action, '/'..command )
method:addParam{ type=ULib.cmds.PlayerArg }
method:defaultAccess( ULib.ACCESS_SUPERADMIN )
method:help( 'Очистить инвентарь игроку' )

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
local command = 'setslots'
local function Action( eCaller, ePly, nSlots )
    ePly:SetSlots( nSlots )

	ulx.fancyLogAdmin( eCaller, '#A изменил слоты у игрока #T на #i', ePly, nSlots )
end
local method = ulx.command( CATEGORY, 'ulx '..command, Action, '/'..command )
method:addParam{ type=ULib.cmds.PlayerArg }
method:addParam{ type=ULib.cmds.NumArg, min = 1, default = 1, max = 5000, hint = 'Количество', ULib.cmds.optional, ULib.cmds.round }
method:defaultAccess( ULib.ACCESS_SUPERADMIN )
method:help( 'Изменить слоты' )

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
local command = 'addxp'
local function Action( eCaller, ePly, nXP )
    ePly:AddXP( nXP )

	ulx.fancyLogAdmin( eCaller, '#A дал XP игроку #T на #i', ePly, nXP )
end
local method = ulx.command( CATEGORY, 'ulx '..command, Action, '/'..command )
method:addParam{ type=ULib.cmds.PlayerArg }
method:addParam{ type=ULib.cmds.NumArg, default = 1, hint = 'XP', ULib.cmds.optional, ULib.cmds.round }
method:defaultAccess( ULib.ACCESS_SUPERADMIN )
method:help( 'Добавить XP' )

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
local command = 'addlevel'
local function Action( eCaller, ePly, nLevel )
    ePly:AddLevel( nLevel )

	ulx.fancyLogAdmin( eCaller, '#A добавил уровень игроку #T на #i', ePly, nLevel )
end
local method = ulx.command( CATEGORY, 'ulx '..command, Action, '/'..command )
method:addParam{ type=ULib.cmds.PlayerArg }
method:addParam{ type=ULib.cmds.NumArg, default = 1, hint = 'Level', ULib.cmds.optional, ULib.cmds.round }
method:defaultAccess( ULib.ACCESS_SUPERADMIN )
method:help( 'Добавить Level' )

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
local command = 'setlevel'
local function Action( eCaller, ePly, nLevel )
    ePly:SetLevel( nLevel )

	ulx.fancyLogAdmin( eCaller, '#A изменил уровень игроку #T на #i', ePly, nLevel )
end
local method = ulx.command( CATEGORY, 'ulx '..command, Action, '/'..command )
method:addParam{ type=ULib.cmds.PlayerArg }
method:addParam{ type=ULib.cmds.NumArg, min = 1, default = 1, hint = 'Level', ULib.cmds.optional, ULib.cmds.round }
method:defaultAccess( ULib.ACCESS_SUPERADMIN )
method:help( 'Изменить Level' )

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
local command = 'sethunger'
local function Action( eCaller, ePly, nCount )
    ePly:SetHunger( nCount )

	ulx.fancyLogAdmin( eCaller, '#A изменил сытость игроку #T на #i', ePly, nCount )
end
local method = ulx.command( CATEGORY, 'ulx '..command, Action, '/'..command )
method:addParam{ type=ULib.cmds.PlayerArg }
method:addParam{ type=ULib.cmds.NumArg, min = 0, default = 1, hint = 'Сытость', ULib.cmds.optional, ULib.cmds.round }
method:defaultAccess( ULib.ACCESS_SUPERADMIN )
method:help( 'Изменить сытость' )

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
local command = 'fillhunger'
local function Action( eCaller, ePly )
    ePly:SetHunger( Ambi.Survival.Config.start_hunger )

	ulx.fancyLogAdmin( eCaller, '#A восполнил сытость игроку #T', ePly )
end
local method = ulx.command( CATEGORY, 'ulx '..command, Action, '/'..command )
method:addParam{ type=ULib.cmds.PlayerArg }
method:defaultAccess( ULib.ACCESS_SUPERADMIN )
method:help( 'Восполнить полностью сытость' )

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
local command = 'setthirst'
local function Action( eCaller, ePly, nCount )
    ePly:SetThirst( nCount )

	ulx.fancyLogAdmin( eCaller, '#A изменил жажду игроку #T на #i', ePly, nCount )
end
local method = ulx.command( CATEGORY, 'ulx '..command, Action, '/'..command )
method:addParam{ type=ULib.cmds.PlayerArg }
method:addParam{ type=ULib.cmds.NumArg, min = 0, default = 1, hint = 'Жажда', ULib.cmds.optional, ULib.cmds.round }
method:defaultAccess( ULib.ACCESS_SUPERADMIN )
method:help( 'Изменить Жажду' )

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
local command = 'fillthirst'
local function Action( eCaller, ePly )
    ePly:SetThirst( Ambi.Survival.Config.start_thirst )

	ulx.fancyLogAdmin( eCaller, '#A восполнил жажду игроку #T', ePly )
end
local method = ulx.command( CATEGORY, 'ulx '..command, Action, '/'..command )
method:addParam{ type=ULib.cmds.PlayerArg }
method:defaultAccess( ULib.ACCESS_SUPERADMIN )
method:help( 'Восполнить полностью жажду' )