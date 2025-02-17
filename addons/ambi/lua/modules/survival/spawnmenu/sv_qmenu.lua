local AddString = Ambi.General.Network.AddString

local function GetCraft( ePly, tCraft )
    local i = 0
    for _, class in pairs( tCraft ) do
        i = i + 1
    end

    local j = 0
    for slot, item in ipairs( ePly:GetItems() ) do
        local craft = tCraft[ item.class ]
        if craft and ( item.count >= craft ) then j = j + 1 end
    end

    return ( i == j )
end

local function RemoveItems( ePly, tCraft )
    for slot, item in ipairs( ePly:GetItems() ) do
        if tCraft[ item.class ] and ( item.count >= tCraft[ item.class ] ) then
            ePly:SetItem( slot, item.class, item.count - tCraft[ item.class ], true )
        end
    end
end

local net_craft_prop = AddString( 'amb_survival_craft_prop' )
net.Receive( net_craft_prop, function( nLen, ePly )
    local name = net.ReadString() or ''
    local prop = Ambi.Survival.props[ name ]
    if not prop then return end
    if not GetCraft( ePly, prop.craft ) then return end

    local ent = ents.Create( 'prop_physics' )
    ent:SetModel( prop.model )
    ent:SetMoveType( 6 )
    ent:PhysicsInit( 6 )
    ent:SetCollisionGroup( COLLISION_GROUP_WORLD ) -- чтобы не убивал при спавне
    
    local phys = ent:GetPhysicsObject()
    if IsValid( phys ) then
        phys:EnableMotion( false )
        phys:Sleep()
    end

    ent:SetPos( Ambi.General.Utility.GetFrontPosNew( ePly, ent ) + Vector( 0, 0, 10 ) )
    ent:SetAngles( Angle( 0, ePly:EyeAngles().yaw, 90 ) )
    ent:CPPISetOwner( ePly )

    ent.owner_account_id = ePly:SteamID()

    ent:Spawn()

    if prop.post then prop.post( ePly, ent ) end

    ent:SaveEntity( ePly )

    RemoveItems( ePly, prop.craft )

    hook.Call( '[Ambi.Survival.CraftProps]', nil, ePly, prop, ent )
end )

local net_craft_obj = AddString( 'amb_survival_craft_obj' )
net.Receive( net_craft_obj, function( nLen, ePly )
    local name = net.ReadString() or ''
    local obj = Ambi.Survival.objects[ name ]
    if not obj then return end
    if not GetCraft( ePly, obj.craft ) then return end

    local ent = ents.Create( obj.class )
    ent:SetPos( Ambi.General.Utility.GetFrontPosNew( ePly, ent ) + Vector( 0, 0, 10 ) )
    ent:CPPISetOwner( ePly )
    ent:Spawn()

    ent.owner_account_id = ePly:SteamID()

    if obj.post then obj.post( ePly, ent ) end

    ent:SaveEntity( ePly )

    RemoveItems( ePly, obj.craft )

    hook.Call( '[Ambi.Survival.CraftBuildings]', nil, ePly, obj, ent )
end )