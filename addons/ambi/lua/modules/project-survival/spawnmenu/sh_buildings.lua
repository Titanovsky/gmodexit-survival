local C = Ambi.General.Global.Colors
local Add = Ambi.Survival.AddObject

---------------------------------------------------------------------------------
local CATEGORY = 'Storages'

local MODEL = 'models/galaxy/rust/wood_storagebox.mdl'
local CRAFT = {
    [ 'wood' ] = 55,
}
Add( 'Storage', CATEGORY, 'Обычный сундук для предметов ('..Ambi.Survival.Config.storage_small_slots..' слотов)', 'sinv_storage', MODEL, CRAFT, function( ePly, eObj )
    eObj:SetOptions( 'Storage', MODEL, Ambi.Survival.Config.storage_small_slots )
    eObj:SetHealth( 600 )
    eObj:SetMaxHealth( 2000 )
end )

---------------------------------------------------------------------------------

local CATEGORY = 'Base'

local MODEL = 'models/props_canal/winch02.mdl'
local CRAFT = {
    [ 'wood' ] = 25,
    [ 'stone' ] = 10,
}
Add( 'Workbench', CATEGORY, 'Для изготовления предметов', 'survival_build', MODEL, CRAFT, function( ePly, eObj )
    eObj:SetLevel( 1 )
    eObj:SetModel( MODEL )
    Ambi.RegEntity.Physics( eObj )
    eObj:SetNWString( 'Building', 'workbench' )
    eObj:SetHealth( 300 )
    eObj:SetMaxHealth( 300 )
end )

local MODEL = 'models/galaxy/rust/sleepingbag.mdl'
local CRAFT = {
    [ 'cloth' ] = 65,
    [ 'rope' ] = 8
}
Add( 'Sleeping Bag', CATEGORY, 'Спавн точка', 'survival_build_sleeping_bag', MODEL, CRAFT, function( ePly, eObj )
    eObj:SetNWString( 'Building', 'sleeping bag' )
    eObj:SetSteamID( ePly:SteamID() )
    eObj:SetHealth( 125 )
    eObj:SetMaxHealth( 125 )
end )

local MODEL = 'models/props_lab/reciever_cart.mdl'
local CRAFT = {
    [ 'copper' ] = 5,
    [ 'iron' ] = 15,
    [ 'plastic' ] = 25,
}
Add( 'Weapons Workbench', CATEGORY, 'Для изготовления оружия и инструментов', 'survival_build', MODEL, CRAFT, function( ePly, eObj )
    eObj:SetLevel( 1 )
    eObj:SetModel( MODEL )
    Ambi.RegEntity.Physics( eObj )
    eObj:SetNWString( 'Building', 'weapons workbench' )
    eObj:SetHealth( 800 )
    eObj:SetMaxHealth( 800 )
end )

local MODEL = 'models/props_lab/crematorcase.mdl'
local CRAFT = {
    [ 'glass' ] = 100,
    [ 'copper' ] = 25,
    [ 'iron' ] = 5
}
Add( 'Chemical Station', CATEGORY, 'Для изготовления химических соединений и компонентов', 'survival_build', MODEL, CRAFT, function( ePly, eObj )
    eObj:SetLevel( 1 )
    eObj:SetModel( MODEL )
    Ambi.RegEntity.Physics( eObj )
    eObj:SetNWString( 'Building', 'chemical station' )
    eObj:SetHealth( 1000 )
    eObj:SetMaxHealth( 1000 )
end )

local MODEL = 'models/props_wasteland/laundry_washer003.mdl'
local CRAFT = {
    [ 'copper' ] = 75,
    [ 'iron' ] = 45,
    [ 'iron gear' ] = 5,
    [ 'iron bolt' ] = 10,
    [ 'steel' ] = 15,
    [ 'steel fragments' ] = 5,
    [ 'steel tube' ] = 2,
    [ 'plastic' ] = 125,
}
Add( 'Factory', CATEGORY, 'Для изготовления промышленных объектов', 'survival_build', MODEL, CRAFT, function( ePly, eObj )
    eObj:SetLevel( 1 )
    eObj:SetModel( MODEL )
    Ambi.RegEntity.Physics( eObj )
    eObj:SetNWString( 'Building', 'factory' )
    eObj:SetHealth( 5000 )
    eObj:SetMaxHealth( 5000 )
end )


-----------------------------------------------------------------------------------------------------------------------------
local CATEGORY = 'Smelting'

local MODEL = 'models/galaxy/rust/campfire.mdl'
local CRAFT = {
    [ 'wood' ] = 55,
    [ 'stone' ] = 25,
}
Add( 'Campfire', CATEGORY, 'Для приготовления обычной пищи', 'survival_build', MODEL, CRAFT, function( ePly, eObj )
    eObj:SetLevel( 1 )
    eObj:SetModel( MODEL )
    Ambi.RegEntity.Physics( eObj )
    eObj:SetNWString( 'Building', 'campfire' )
    eObj:SetHealth( 100 )
    eObj:SetMaxHealth( 100 )
end )

local MODEL = 'models/galaxy/rust/furnace.mdl'
local CRAFT = {
    [ 'stone' ] = 32,
}
Add( 'Furnace', CATEGORY, 'Для выплавления предметов', 'survival_build', MODEL, CRAFT, function( ePly, eObj )
    eObj:SetLevel( 1 )
    eObj:SetModel( MODEL )
    Ambi.RegEntity.Physics( eObj )
    eObj:SetNWString( 'Building', 'furnace' )
    eObj:SetHealth( 500 )
    eObj:SetMaxHealth( 500 )
end )

local MODEL = 'models/props_c17/furnitureStove001a.mdl'
local CRAFT = {
    [ 'iron' ] = 5,
    [ 'copper' ] = 55,
    [ 'glass' ] = 4,
}
Add( 'Stove', CATEGORY, 'Для приготовления вкусной пищи', 'survival_build', MODEL, CRAFT, function( ePly, eObj )
    eObj:SetLevel( 1 )
    eObj:SetModel( MODEL )
    Ambi.RegEntity.Physics( eObj )
    eObj:SetNWString( 'Building', 'stove' )
    eObj:SetHealth( 2000 )
    eObj:SetMaxHealth( 2000 )
end )

local MODEL = 'models/props_wasteland/laundry_washer001a.mdl'
local CRAFT = {
    [ 'brick' ] = 395,
    [ 'iron' ] = 50,
    [ 'copper tube' ] = 16,
}
Add( 'Blast Furnace', CATEGORY, 'Для выплавления особых предметов', 'survival_build', MODEL, CRAFT, function( ePly, eObj )
    eObj:SetLevel( 1 )
    eObj:SetModel( MODEL )
    Ambi.RegEntity.Physics( eObj )
    eObj:SetNWString( 'Building', 'blast furnace' )
    eObj:SetHealth( 800 )
    eObj:SetMaxHealth( 800 )
end )

-----------------------------------------------------------------------------------------------------------------------------
local CATEGORY = 'Space'

local MODEL = 'models/props_phx/rocket1.mdl'
local CRAFT = {
    [ 'titan' ] = 25,
    [ 'steel' ] = 50,
    [ 'iron' ] = 150,
    [ 'rocket space spec1' ] = 1,
    [ 'rocket space spec2' ] = 1,
    [ 'rocket space spec3' ] = 1,
    [ 'rocket space spec4' ] = 2,
}
Add( 'Space Rocket', CATEGORY, 'Космическая Ракета', 'survival_build_rocket_space', MODEL, CRAFT, function( ePly, eObj )
    eObj:SetNWString( 'Building', 'space rocket' )
    eObj:SetHealth( 25000 )
    eObj:SetMaxHealth( 25000 )
end )
---------------------------------------------------------------------------------
local CATEGORY = 'Oil'

local MODEL = 'models/props_wasteland/horizontalcoolingtank04.mdl'
local CRAFT = {
    [ 'iron' ] = 50,
    [ 'copper' ] = 25
}
Add( 'Oil Pumper', CATEGORY, 'Для качки нефти', 'survival_build_oil_pumper', MODEL, CRAFT, function( ePly, eObj ) 
    eObj:SetHealth( 2400 )
    eObj:SetMaxHealth( 2400 )
end )

local MODEL = 'models/props_wasteland/coolingtank02.mdl'
local CRAFT = {
    [ 'iron' ] = 15,
    [ 'copper' ] = 75,
    [ 'plastic' ] = 10
}
Add( 'Oil Refinery', CATEGORY, 'Переработка нефтяного сырья', 'survival_build', MODEL, CRAFT, function( ePly, eObj ) 
    eObj:SetLevel( 1 )
    eObj:SetModel( MODEL )
    Ambi.RegEntity.Physics( eObj )
    eObj:SetNWString( 'Building', 'oil refinery' )
    eObj:SetHealth( 800 )
    eObj:SetMaxHealth( 800 )
end )

---------------------------------------------------------------------------------
--[[
local CATEGORY = 'Robots'

local MODEL = 'models/Combine_Helicopter/helicopter_bomb01.mdl'
local CRAFT = {
    [ 'iron' ] = 9999999999999999,
}
Add( 'Mine Robot', CATEGORY, 'Автоматическая добыча руды', 'survival_build', MODEL, CRAFT, function( ePly, eObj ) 
    eObj:SetLevel( 1 )
    eObj:SetModel( MODEL )
    Ambi.RegEntity.Physics( eObj )
    eObj:SetNWString( 'Building', 'mine robot' )
    eObj:SetHealth( 2500 )
    eObj:SetMaxHealth( 2500 )
end )

local MODEL = 'models/Combine_Helicopter/helicopter_bomb01.mdl'
local CRAFT = {
    [ 'iron' ] = 9999999999999999,
}
Add( 'Forest Robot', CATEGORY, 'Автоматический добыча дерева и угля', 'survival_build', MODEL, CRAFT, function( ePly, eObj ) 
    eObj:SetLevel( 1 )
    eObj:SetModel( MODEL )
    Ambi.RegEntity.Physics( eObj )
    eObj:SetNWString( 'Building', 'forest robot' )
    eObj:SetHealth( 2500 )
    eObj:SetMaxHealth( 2500 )
end )

local MODEL = 'models/Combine_Helicopter/helicopter_bomb01.mdl'
local CRAFT = {
    [ 'iron' ] = 9999999999999999,
}
Add( 'Farming Robot', CATEGORY, 'Автоматическая ферма', 'survival_build', MODEL, CRAFT, function( ePly, eObj ) 
    eObj:SetLevel( 1 )
    eObj:SetModel( MODEL )
    Ambi.RegEntity.Physics( eObj )
    eObj:SetNWString( 'Building', 'farming robot' )
    eObj:SetHealth( 2500 )
    eObj:SetMaxHealth( 2500 )
end )
]]

---------------------------------------------------------------------------------
local CATEGORY = 'Other'

local MODEL = 'models/gmod_tower/suitetv_large.mdl'
local CRAFT = {
    [ 'copper' ] = 250,
    [ 'iron' ] = 75,
    [ 'glass' ] = 50,
    [ 'plastic' ] = 25,
}
Add( 'TV', CATEGORY, 'Тупо для чила', 'mediaplayer_tv', MODEL, CRAFT, function( ePly, eObj )
    eObj:SetHealth( 2000 )
    eObj:SetMaxHealth( 2000 )
end )

local MODEL = 'models/airboat.mdl'
local CRAFT = {
    [ 'copper' ] = 250,
    [ 'iron' ] = 75,
    [ 'steel' ] = 15,
    [ 'plastic' ] = 75,
}
Add( 'Airboat', CATEGORY, 'Теперь работает :)', 'survival_build', MODEL, CRAFT, function( ePly, eObj )
    local pos = eObj:GetPos()
    eObj:Remove()

    local airboat = ents.Create( 'prop_vehicle_airboat' )
    airboat:SetModel( 'models/airboat.mdl' )
    airboat:SetPos( pos )
    airboat:Spawn()
    airboat:CPPISetOwner( ePly )
end )

local MODEL = 'models/buggy.mdl'
local CRAFT = {
    [ 'copper' ] = 450,
    [ 'iron' ] = 255,
    [ 'steel' ] = 75,
    [ 'plastic' ] = 1200,
    [ 'cloth' ] = 50,
    [ 'titan' ] = 75,
}
Add( 'Jeep', CATEGORY, 'Теперь работает :)', 'survival_build', MODEL, CRAFT, function( ePly, eObj )
    local pos = eObj:GetPos()
    eObj:Remove()

    local car1 = ents.Create( 'prop_vehicle_jeep' )
    car1:SetModel( 'models/buggy.mdl' )
    car1.VehicleTable = list.Get( 'Vehicles' ).Jeep
    car1:SetKeyValue( 'vehiclescript', 'scripts/vehicles/jeep_test.txt' ) 
    car1:SetHealth( 2500 )
    car1.Hurt = true
    car1:SetPos( pos )
    car1:Spawn()
    car1:Activate()
    car1:CPPISetOwner( ePly, true )
end )

local MODEL = 'models/combine_turrets/floor_turret.mdl'
local CRAFT = {
    [ 'copper' ] = 250,
    [ 'iron' ] = 100,
    [ 'steel' ] = 40,
    [ 'plastic' ] = 250,
    [ 'turrets parts' ] = 1,
}
Add( 'Turret', CATEGORY, 'Турель', 'survival_build', MODEL, CRAFT, function( ePly, eObj )
    local pos, ang = eObj:GetPos(), eObj:GetAngles()
    eObj:Remove()

    local turret = ents.Create( 'ent_jack_turret_smg' )
    turret:SetPos( pos )
    turret:SetAngles( ang )
    turret:Spawn()
    turret:SetMaxHealth( 1200 )
    turret:SetHealth( 600 )
    turret:CPPISetOwner( ePly )
end )

local MODEL = 'models/vehicles/darky_m&bypolat/rust/minicopter.mdl'
local CRAFT = {
    [ 'steel' ] = 5,
    [ 'plastic' ] = 25,
    [ 'minicopter parts' ] = 3,
}
Add( 'Minicopter', CATEGORY, 'Для Мандаринки', 'rust_minicopter', MODEL, CRAFT, function( ePly, eObj )
    eObj:CPPISetOwner( ePly )
end )