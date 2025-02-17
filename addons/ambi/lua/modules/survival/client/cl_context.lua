Ambi.Survival.Context = Ambi.Survival.Context or {}
Ambi.Survival.Context.buttons = Ambi.Survival.Context.buttons or {}
Ambi.Survival.Context.menu = Ambi.Survival.Context.menu or nil

local C, GUI, Draw, UI = Ambi.Packages.Out( '@d' )
local PREFIX = Ambi.Config.prefix

local COLOR_CONTEXT = Color( 255, 255, 255, 200 )

local w = ScrW()
local h = ScrH()

function Ambi.Survival.Context.CreateButton( sName, sFont, sImage, bSpacer, fAction, fOtherAction, fCheck )
    Ambi.Survival.Context.buttons[ sName ] = {
        check = fCheck or function() return true end,
        show = function( vguiContext )
            local button = vguiContext:AddOption( sName, fAction )
            button:SetImage( sImage or 'icon16/bullet_black.png' )
            button:SetFont( UI.SafeFont( sFont or '20 Ambi' ) )
            if fOtherAction then fOtherAction( vguiContext, button ) end

            if bSpacer then vguiContext:AddSpacer() end
        end
    }
end

function Ambi.Survival.Context.Open()
    if ( LocalPlayer():Alive() == false ) then return end

    local context = vgui.Create( 'DMenu' )
    context.Paint = function( self, w, h ) draw.RoundedBox( 0, 0, 0, w, h, COLOR_CONTEXT ) end

    for name, btn in pairs( Ambi.Survival.Context.buttons ) do 
        if not btn.check( LocalPlayer() ) then continue end
        btn.show( context ) 
    end

    context:Open()
    context:SetPos( w / 2 - context:GetWide() / 2, h - context:GetTall() - 8 )
    Ambi.Survival.Context.menu = context
end

function Ambi.Survival.Context.Close()
    local context = Ambi.Survival.Context.menu
    if context and ValidPanel( context ) then context:Remove() end
end

hook.Add( 'OnContextMenuOpen', 'Ambi.Survival.Context.Open', function()
    timer.Simple( 0, Ambi.Survival.Context.Open )
end )
hook.Add( 'OnContextMenuClose', 'Ambi.Survival.Context.Close', Ambi.Survival.Context.Close )

-------------------------------------------------------------------------------------------------------
local AddButton = Ambi.Survival.Context.CreateButton

local block_weps_drop = {
    [ 'weapon_bugbait' ] = true,
    [ 'weapon_physcannon' ] = true,
    [ 'weapon_fists' ] = true,
    [ 'gmod_tool' ] = true,
    [ 'weapon_physgun' ] = true,
    [ 'gmod_camera' ] = true
}

AddButton( 'Выкинуть оружие', nil, 'icon16/world.png', false, function() 
    net.Start( 'amb_survival_drop_weapon' )
    net.SendToServer()
end, nil, function() return IsValid( LocalPlayer():GetActiveWeapon() ) and Ambi.Survival.Config.drop_weapons_convert[ LocalPlayer():GetActiveWeapon():GetClass() ] end )

AddButton( 'Разобрать', nil, 'icon16/world.png', false, function() 
    net.Start( 'amb_survival_disassemble' )
    net.SendToServer()
end, nil )

AddButton( 'Push Up (Застрял Проп)', nil, 'icon16/brick.png', false, function() 
    net.Start( 'amb_survival_push_up_prop' )
    net.SendToServer()
end, nil )