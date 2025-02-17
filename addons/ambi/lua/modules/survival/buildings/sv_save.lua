local JSON, C = Ambi.Files.JSON, Ambi.General.Global.Colors
local Entity = FindMetaTable( 'Entity' )

Ambi.Survival.saved_entities = Ambi.Survival.saved_entities or {}

file.CreateDir( 'ambi/propcore' )

local function GetData( eObj, ID )
    return  {
        owner = ID,
        map = game.GetMap(),
        class = eObj:GetClass(),
        model = eObj:GetModel(),
        pos = eObj:GetPos(),
        ang = eObj:GetAngles(),
        mat = eObj:GetMaterial(),
        color = eObj:GetColor(),
        maxhp = eObj:GetMaxHealth(),
        hp = eObj:Health(),
        movetype = eObj:GetMoveType(),
        solid = eObj:GetSolid(),
        collision = eObj:GetCollisionGroup(),
        sleep = eObj:GetPhysicsObject():IsAsleep(),
        motion = eObj:GetPhysicsObject():IsMotionEnabled(),
        steamid = eObj.steamid,
        type = eObj.type,
        items = eObj.items,
        count = eObj.count,
        header = eObj.header,
        slots = eObj.slots,
        level = eObj.level,
        building = ( #eObj:GetNWString( 'Building' ) > 0 ) and eObj:GetNWString( 'Building' ) or nil,
        keycode = eObj.keycode,
        vehiclescript = eObj.KeyValues and eObj.KeyValues.vehiclescript or nil,
        VehicleTable = eObj.VehicleTable
    }
end

local function GetLastCountInData( tData ) -- Костыль, потому что таблица может прерваться, так как внутри неё удаляется целочисленный порядок
    local count = 1
    for _, v in pairs( tData ) do
        count = count + 1
    end

    return count
end

function Entity:SaveEntity( eOwner )
    timer.Simple( 0.15, function() -- Таймер из-за Prop Protection, так как тот меняет материал и потом возвращает
        if not IsValid( self ) then print('[Survival] ERROR SAVED: '..tostring( self )) return end

        if self.owner_account_id then eOwner = self.owner_account_id end

        if isstring( eOwner ) then
            local ply = player.GetBySteamID( eOwner )
            if ply and IsValid( ply ) then eOwner = ply end
        end

        local ID = isstring( eOwner ) and eOwner or eOwner:SteamID()
        local name = isstring( eOwner ) and util.SteamIDTo64( eOwner ) or eOwner:SteamID64()

        local data = {}
        if file.Exists( 'ambi/propcore/'..name..'.json', 'DATA' ) then
            data = JSON.Out( file.Read( 'ambi/propcore/'..name..'.json', 'DATA' ) )
            local id = self.propcore_saved_index or GetLastCountInData( data )
            self.propcore_saved_index = id

            data[ id ] = GetData( self, ID )
        else

            self.propcore_saved_index = 1

            data = {
                [ 1 ] = GetData( self, ID )
            }
        end

        self.owner_account_id = ID

        file.Write( 'ambi/propcore/'..name..'.json', JSON.In( data ) )

        print( '[Survival] Saved permanent object: '..tostring( self )..' [Owner: '..ID..'] ['..self.propcore_saved_index..']' )

        if not isstring( eOwner ) then eOwner:NotifySend( 4, { text = 'Объект сохранился!', time = 1, color = C.AMBI_GREEN } ) end
    end )
end

hook.Add( 'PostGamemodeLoaded', 'Ambi.Survival.LoadSavedEntities', function()
    timer.Simple( 2, function()
        local owners = file.Find( 'ambi/propcore/*', 'DATA' )

        for _, steamid64 in ipairs( owners ) do
            local data = JSON.Out( file.Read( 'ambi/propcore/'..steamid64, 'DATA' ) )

            for i, info in pairs( data ) do
                if ( info.map != game.GetMap() ) then continue end

                if not Ambi.Survival.saved_entities[ info.owner ] then Ambi.Survival.saved_entities[ info.owner ] = {} end
                Ambi.Survival.saved_entities[ info.owner ][ i ] = info

                local ent = ents.Create( info.class )
                ent:SetModel( info.model )
                if ( info.class == 'prop_vehicle_jeep' ) then 
                    ent.VehicleTable = list.Get( 'Vehicles' ).Jeep
                    ent:SetKeyValue( 'vehiclescript', 'scripts/vehicles/jeep_test.txt' )
                elseif ( info.class == 'prop_vehicle_airboat' ) then
                    ent.VehicleTable = list.Get( 'Vehicles' ).Airboat
                    ent:SetKeyValue( 'vehiclescript', 'scripts/vehicles/airboat.txt' )
                end
                ent:SetPos( info.pos )
                ent:SetAngles( info.ang )
                ent:SetMoveType( info.movetype or 6 )
                ent:PhysicsInit( info.solid or 6 )
                ent:SetCollisionGroup( info.collision or 0 )
                ent:SetMaterial( info.mat )
                ent:SetColor( info.color )
                ent:Spawn()
                ent:Activate()
                ent:SetMaxHealth( info.maxhp )
                ent:SetHealth( info.hp )
                if ( ent:GetModel() ~= info.model ) then ent:SetModel( info.model ) end -- ентити могут по умолчанию иметь другую модель

                ent.owner_account_id = info.owner
                ent.propcore_saved_index = i

                local phys = ent:GetPhysicsObject()
                if IsValid( phys ) then
                    if info.sleep then phys:Sleep() end
                    if info.motion then phys:EnableMotion( true ) else phys:EnableMotion( false ) end
                end
    
                if info.building then ent:SetNWString( 'Building', info.building ) end
                if info.steamid then ent:SetSteamID( info.steamid ) end
                if info.slots then ent:SetSlots( info.slots ) end
                if info.type then ent:SetType( info.type ) end
                if info.items then ent:SetItems( info.items ) end
                if info.count then ent:SetCount( info.count ) end
                if info.header then ent:SetHeader( info.header ) end
                if info.level then ent:SetLevel( info.level ) end

                Ambi.Survival.saved_entities[ info.owner ][ i ].entity = ent

                print( '[Survival] Spawned permanent object: '..tostring( ent )..' [Owner:'..info.owner..']' )
            end
        end
    end )
end )

hook.Add( 'PlayerInitialSpawn', 'Ambi.PropCore.ReturnSavedEntities', function( ePly )
    local ID = ePly:SteamID()
    local entities = Ambi.Survival.saved_entities[ ID ]
    if not entities then return end

    for _, tab in pairs( entities ) do
        local ent = tab.entity
        if not IsValid( ent ) then continue end

        ent:CPPISetOwner( ePly )

        if ( ent:GetClass() == 'prop_custom' ) or ( ent:GetClass() == 'prop_physics' ) then
            ePly:AddCount( 'props', ent )
        end
    end
end )

local is_shutdown = false
hook.Add( 'ShutDown', 'Ambi.Survival.ShutdownSaveBuildings', function()
    is_shutdown = true
end )

hook.Add( 'EntityRemoved', 'Ambi.Survival.RemoveSavedEntity', function( eObj )
    if is_shutdown then return end -- чтобы не ремувал каждый раз

    local ID, SAVED_INDEX = eObj.owner_account_id, eObj.propcore_saved_index
    if not ID or not SAVED_INDEX then return end
    
    local name = util.SteamIDTo64( ID )
    local entities = JSON.Out( file.Read( 'ambi/propcore/'..name..'.json', 'DATA' ) or {} )
    for i, _ in pairs( entities or {} ) do
        if ( i == SAVED_INDEX ) then
            entities[ i ] = nil
        end
    end

    print( '[Survival] Removed permanent object: '..SAVED_INDEX..' ['..ID..'] ['..SAVED_INDEX..']' )

    file.Write( 'ambi/propcore/'..name..'.json', JSON.In( entities ) )
end )

-- Save Changes -------------------------------------------------------------------------------

function Ambi.Survival.AutoSave()
    for _, ply in ipairs( player.GetAll() ) do
        ply:NotifySend( 4, { time = 10, text = 'Через 10 секунд возможно будут лаги!', color = C.ABS_RED } )
    end

    timer.Simple( 10, function()
        for k, ent in ipairs( ents.GetAll() ) do
            local ID, SAVED_INDEX = ent.owner_account_id, ent.propcore_saved_index
            if not ID or not SAVED_INDEX then continue end
        
            local name = util.SteamIDTo64( ID )
            local data = JSON.Out( file.Read( 'ambi/propcore/'..name..'.json', 'DATA' ) or '[]' )
            if not data[ SAVED_INDEX ] then continue end
            
            data[ SAVED_INDEX ] = GetData( ent, ID )
            file.Write( 'ambi/propcore/'..name..'.json', JSON.In( data ) )
        end

        for _, ply in ipairs( player.GetHumans() ) do
            ply:ChatSend( C.AMBI_GREEN, '[•] ', C.ABS_WHITE, 'Постройки сохранены!' )
        end
    end )
end

--timer.Create( 'AmbPropCoreAutoSaveEntities', AMB.PropCore.Config.protect_save_auto_time, 0, AMB.PropCore.AutoSave )

hook.Add( 'PhysgunDrop', 'Ambi.Survival.Save', function( ePly, eObj )
    if eObj.propcore_saved_index then
        eObj:SaveEntity( eObj.owner_account_id )
    end
end )

hook.Add( 'CanTool', 'Ambi.Survival.Save', function( ePly, traceInfo, sTool )
    local ent = traceInfo.Entity
    if not IsValid( ent ) then return end

    if ent.propcore_saved_index then
        ent:SaveEntity( ent.owner_account_id )
    end
end )

include( 'modules/survival/main/sv_prop_protection.lua' )