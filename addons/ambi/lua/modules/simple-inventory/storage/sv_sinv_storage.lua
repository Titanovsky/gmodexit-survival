local Files, JSON = Ambi.Files, Ambi.Files.JSON
local C = Ambi.General.Global.Colors

local net_get_items = net.AddString( 'ambi_sinv_storage_get_items' )
local net_open = net.AddString( 'ambi_sinv_storage_open' )

function Ambi.SimpleInventory.SetStorage( ePly, eObj )
    if not eObj.items then return end
    if not eObj.slots then return end

    ePly.storage_slots = eObj.slots
    ePly.storage_items = eObj.items

    net.Start( net_get_items )
        net.WriteTable( eObj.items )
        net.WriteUInt( eObj.slots, 20 )
        net.WriteEntity( eObj )
    net.Send( ePly )

    --net.Start( net_open )
    --net.Send( ePly )
end

local function SaveItems( eObj, eOwner )
    if eObj.propcore_saved_index then
        -- local ID, SAVED_INDEX = eObj.owner_account_id, eObj.propcore_saved_index
        -- if not ID or not SAVED_INDEX then return end

        -- local name = util.SteamIDTo64( ID )
    
        -- local data = JSON.Out( file.Read( 'ambi/propcore/'..name..'.json', 'DATA' ) )
        -- if not data[ SAVED_INDEX ] then print( ID, name ) return end
        
        -- data[ SAVED_INDEX ].items = eObj.items
        -- data[ SAVED_INDEX ].slots = eObj.slots
        -- Files.Create( 'propcore/'..name..'.json', JSON.In( data ), true )

        -- print( '[Survival] Saved storage: '..tostring( eObj )..' [Owner: '..ID..']' )

        -- local ply = player.GetBySteamID( ID )
        -- if ply and IsValid( ply ) then ply:NotifySend( 4, { text = 'Ящик сохранился!', time = 1, color = C.AMBI_GREEN } ) end

        eObj:SaveEntity( eObj.owner_account_id )
    end
end

local net_take = net.AddString( 'ambi_sinv_storage_take' )
net.Receive( net_take, function( nLen, ePly )
    local storage_count = net.ReadUInt( 20 )
    local storage_slot = net.ReadUInt( 20 )
    local ent = net.ReadEntity()

    if not ent or not IsValid( ent ) or not ent.items then return end
    if ( ent.items ~= ePly.storage_items ) then return end
    -- todo: check distance between ePly and ent

    local item = ent.items[ storage_slot ]
    if not item then return end
    if not item.count then return end
    if ( storage_count > item.count ) then return end
    
    
    if ePly:GetItem( item.class ) then
        local count = ePly:GetItem( item.class ).count -- 9999
        local result = storage_count + count -- 2 + 9999 = 10001
        
        if ( result > 10000 ) then
            local remains = result - 10000

            ent.items[ storage_slot ].count = remains
        else
            local result = ent.items[ storage_slot ].count - storage_count
            if ( result <= 0 ) then 
                ent.items[ storage_slot ] = { empty = true }
            else
                ent.items[ storage_slot ].count = result
            end
        end
        
        ePly:AddItem( item.class, storage_count, true )
    else
        if not ePly:GetLastFreeSlot() then return end

        ePly:AddItem( item.class, storage_count, true )

        if ( storage_count == item.count ) then
            ent.items[ storage_slot ] = { empty = true }
        else
            ent.items[ storage_slot ].count = item.count - storage_count
        end
    end

    Ambi.SimpleInventory.SetStorage( ePly, ent )
    SaveItems( ent, ePly )
end )

local net_give = net.AddString( 'ambi_sinv_storage_give' )
net.Receive( net_give, function( nLen, ePly )
    local count = net.ReadUInt( 20 )
    local storage_slot = net.ReadUInt( 20 )
    local class = net.ReadString()
    local ent = net.ReadEntity()

    if not ent or not IsValid( ent ) or not ent.items then return end

    local slot = ent.items[ storage_slot ]
    if ( storage_slot <= 0 ) or ( storage_slot > ent.slots ) then return end
    if not slot then 
        ent.items[ storage_slot ] = { empty = true } 
        slot = ent.items[ storage_slot ]
    end
    -- todo: check distance between ePly and ent

    local item = ePly:GetItem( class )
    if not item then return end
    if ( item.count < count ) then return end

    if slot.class then
        if ( slot.class ~= class ) then return end
        if ( slot.count + count > 10000 ) then return end

        ent.items[ storage_slot ] = { class = class, count = slot.count + count, empty = false, slot = storage_slot }
        ePly:AddItem( class, -count, true )
    else
        if ( count > 10000 ) then return end

        ent.items[ storage_slot ] = { class = class, count = count, empty = false, slot = storage_slot }
        ePly:AddItem( class, -count, true )
    end

    Ambi.SimpleInventory.SetStorage( ePly, ent )
    SaveItems( ent, ePly )
end )

local net_close = net.AddString( 'ambi_sinv_storage_close' )
net.Receive( net_close, function( nLen, ePly )
    local storage = net.ReadEntity()
    if not storage or not IsValid( storage ) then return end
    if not storage.player or ( ePly ~= storage.player ) then return end

    storage.player = nil
    ePly.storage_slots = nil
    ePly.storage_items = nil
end )
