local Add = Ambi.Survival.AddProp

--------------------------------------------------------------------------------------------------------
local COLOR_GOLD = Color( 255, 255, 0 )

local CATEGORY = 'Роскошь'

local function SetHealth( ePly, eObj )
    eObj:SetHealth( 1000 )
    eObj:SetMaxHealth( 3000 )
end

Add( 'Золотой унитаз', CATEGORY, 'models/props_c17/furnituretoilet001a.mdl', {
    [ 'gold' ] = 8991
}, SetHealth )

--------------------------------------------------------------------------------------------------------
local CATEGORY = 'База: Дерево'

Add( 'Деревянный Фундамент/Потолок', CATEGORY, 'models/galaxy/rust/wood_ceiling.mdl', {
    [ 'wood' ] = 55
}, SetHealth )

Add( 'Деревянная Балка', CATEGORY, 'models/galaxy/rust/wood_pillar.mdl', {
    [ 'wood' ] = 35
}, SetHealth )

Add( 'Деревянная Стена', CATEGORY, 'models/galaxy/rust/wood_wall.mdl', {
    [ 'wood' ] = 45
}, SetHealth )

Add( 'Деревянный Оконный Проём', CATEGORY, 'models/galaxy/rust/wood_window.mdl', {
    [ 'wood' ] = 45
}, SetHealth )

Add( 'Деревянный Дверной Проём', CATEGORY, 'models/galaxy/rust/wood_doorframe.mdl', {
    [ 'wood' ] = 55
}, SetHealth )

Add( 'Деревянная Дверь', CATEGORY, 'models/galaxy/rust/wood_door.mdl', {
    [ 'wood' ] = 75
}, SetHealth )

Add( 'Деревянная Баррикада', CATEGORY, 'models/galaxy/rust/wood_barricade.mdl', {
    [ 'wood' ] = 125,
    [ 'rope' ] = 10
}, SetHealth )

Add( 'Деревянная Рампа', CATEGORY, 'models/galaxy/rust/wood_ramp.mdl', {
    [ 'wood' ] = 65
}, SetHealth )

Add( 'Деревянная Лестница', CATEGORY, 'models/galaxy/rust/wood_stairs.mdl', {
    [ 'wood' ] = 85
}, SetHealth )

Add( 'Шелтер', CATEGORY, 'models/galaxy/rust/wood_shelter.mdl', {
    [ 'wood' ] = 125
}, SetHealth )

--------------------------------------------------------------------------------------------------------
local CATEGORY = 'База: Металлическая'

local function SetHealth( ePly, eObj )
    eObj:SetHealth( 5000 )
    eObj:SetMaxHealth( 10000 )
end

Add( 'Железная Фундамент/Потолок', CATEGORY, 'models/galaxy/rust/metal_ceiling.mdl', {
    [ 'iron' ] = 20
}, SetHealth )

Add( 'Железная Балка', CATEGORY, 'models/galaxy/rust/metal_pillar.mdl', {
    [ 'iron' ] = 20
}, SetHealth )

Add( 'Железная Стена', CATEGORY, 'models/galaxy/rust/metal_wall.mdl', {
    [ 'iron' ] = 50
}, SetHealth )

Add( 'Железный Оконный Проём', CATEGORY, 'models/galaxy/rust/metal_window.mdl', {
    [ 'iron' ] = 100
}, SetHealth )

Add( 'Железный Дверной Проём', CATEGORY, 'models/galaxy/rust/metal_doorway.mdl', {
    [ 'iron' ] = 100
}, SetHealth )

Add( 'Железная Дверь', CATEGORY, 'models/galaxy/rust/metal_door.mdl', {
    [ 'iron' ] = 50
}, SetHealth )

Add( 'Железная Рампа', CATEGORY, 'models/galaxy/rust/metal_ramp.mdl', {
    [ 'iron' ] = 125
}, SetHealth )

Add( 'Железная Лестница', CATEGORY, 'models/galaxy/rust/metal_stairs.mdl', {
    [ 'iron' ] = 125
}, SetHealth )

Add( 'Железная Решётка на Окна', CATEGORY, 'models/galaxy/rust/metal_bars.mdl', {
    [ 'iron' ] = 25
}, SetHealth )

--------------------------------------------------------------------------------------------------------
local CATEGORY = 'Plastic'

local function SetHealth( ePly, eObj )
    eObj:SetHealth( 800 )
    eObj:SetMaxHealth( 3000 )
end

Add( 'Cube 8x8x1', CATEGORY, 'models/hunter/blocks/cube8x8x1.mdl', { [ 'plastic' ] = 25 }, SetHealth )
Add( 'Cube 1x1x1', CATEGORY, 'models/hunter/blocks/cube1x1x1.mdl', { [ 'plastic' ] = 25 }, SetHealth )
Add( 'Cube 075x3x1', CATEGORY, 'models/hunter/blocks/cube075x3x1.mdl', { [ 'plastic' ] = 30 }, SetHealth )
Add( 'Plate 3x3', CATEGORY, 'models/hunter/plates/plate3x3.mdl', { [ 'plastic' ] = 30 }, SetHealth )
Add( 'Plate 7x8', CATEGORY, 'models/hunter/plates/plate7x8.mdl', { [ 'plastic' ] = 40 }, SetHealth )
Add( 'Lift 2x2', CATEGORY, 'models/hunter/misc/lift2x2.mdl', { [ 'plastic' ] = 30 }, SetHealth )
Add( 'Stair 1x1', CATEGORY, 'models/hunter/misc/stair1x1.mdl', { [ 'plastic' ] = 30 }, SetHealth )
Add( 'Наклонная Лестница', CATEGORY, 'models/hunter/triangles/1x1x1.mdl', { [ 'plastic' ] = 30 }, SetHealth )
Add( 'Plate 1x2.mdl', CATEGORY, 'models/hunter/plates/plate1x2.mdl', { [ 'plastic' ] = 30 }, SetHealth )
Add( 'Cube 2x2x2', CATEGORY, 'models/hunter/blocks/cube2x2x2.mdl', { [ 'plastic' ] = 30 }, SetHealth )
Add( 'Plate 2x24', CATEGORY, 'models/hunter/plates/plate2x24.mdl', { [ 'plastic' ] = 20 }, SetHealth )


--------------------------------------------------------------------------------------------------------
local CATEGORY = 'Metal'

local function SetHealth( ePly, eObj )
    eObj:SetHealth( 2500 )
    eObj:SetMaxHealth( 5000 )
end

Add( 'plate4x4', CATEGORY, 'models/props_phx/construct/metal_plate4x4.mdl', { [ 'iron' ] = 20 }, SetHealth )
Add( 'plate1', CATEGORY, 'models/props_phx/construct/metal_plate1.mdl', { [ 'iron' ] = 25 }, SetHealth )
Add( 'metal_tube', CATEGORY, 'models/props_phx/construct/metal_tube.mdl', { [ 'iron' ] = 25 }, SetHealth )
Add( 'metal_wire1x1x1', CATEGORY, 'models/props_phx/construct/metal_wire1x1x1.mdl', { [ 'iron' ] = 35 }, SetHealth )
Add( 'metal_wire1x1x2', CATEGORY, 'models/props_phx/construct/metal_wire1x1x2.mdl', { [ 'iron' ] = 35 }, SetHealth )

--------------------------------------------------------------------------------------------------------
local CATEGORY = 'Glass'

local function SetHealth( ePly, eObj )
    eObj:SetHealth( 500 )
    eObj:SetMaxHealth( 1000 )
end

Add( 'glass_plate1x1', CATEGORY, 'models/props_phx/construct/glass/glass_plate1x1.mdl', { [ 'metal' ] = 15, [ 'glass' ] = 30 }, SetHealth )
Add( 'glass_plate1x2', CATEGORY, 'models/props_phx/construct/glass/glass_plate1x2.mdl', { [ 'metal' ] = 10, [ 'glass' ] = 50 }, SetHealth )
Add( 'glass_plate2x2', CATEGORY, 'models/props_phx/construct/glass/glass_plate2x2.mdl', { [ 'metal' ] = 10, [ 'glass' ] = 60 }, SetHealth )
Add( 'glass_plate4x4', CATEGORY, 'models/props_phx/construct/glass/glass_plate4x4.mdl', { [ 'metal' ] = 5, [ 'glass' ] = 80 }, SetHealth )

--------------------------------------------------------------------------------------------------------

local function SetHealthObject( eObj, nHP )
    eObj:SetHealth( nHP )
    eObj:SetMaxHealth( nHP )
end

--------------------------------------------------------------------------------------------------------
local CATEGORY = 'Construct Props'

local HEALTH = 800
Add( 'Дверной Руль', CATEGORY, 'models/props_borealis/door_wheel001a.mdl', { [ 'iron' ] = 4 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 2000
Add( 'Барьер', CATEGORY, 'models/props_c17/concrete_barrier001a.mdl', { [ 'stone' ] = 250 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 200
Add( 'Прилавок', CATEGORY, 'models/props_c17/display_cooler01a.mdl', { [ 'plastic' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 200
Add( 'Железный Забор #1', CATEGORY, 'models/props_c17/fence01a.mdl', { [ 'iron' ] = 15 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Железный Забор #2', CATEGORY, 'models/props_c17/fence01b.mdl', { [ 'iron' ] = 25 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Железный Забор #3', CATEGORY, 'models/props_c17/fence03a.mdl', { [ 'iron' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 1500
Add( 'Фонтант', CATEGORY, 'models/props_c17/fountain_01.mdl', { [ 'iron' ] = 40 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 1500
Add( 'Железная Кровать', CATEGORY, 'models/props_c17/FurnitureBed001a.mdl', { [ 'iron' ] = 15 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 400
Add( 'Бройлер', CATEGORY, 'models/props_c17/FurnitureBoiler001a.mdl', { [ 'iron' ] = 5 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 50
Add( 'Сидения #1', CATEGORY, 'models/props_c17/FurnitureChair001a.mdl', { [ 'wood' ] = 25 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Сидения #2', CATEGORY, 'models/props_c17/FurnitureCouch001a.mdl', { [ 'wood' ] = 25, [ 'cloth' ] = 15 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Сидения #3', CATEGORY, 'models/props_c17/FurnitureCouch002a.mdl', { [ 'wood' ] = 25, [ 'cloth' ] = 15 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

Add( 'Деревянные Тумбочки #1', CATEGORY, 'models/props_c17/FurnitureCupboard001a.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Деревянные Тумбочки #2', CATEGORY, 'models/props_c17/FurnitureDrawer001a.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Деревянные Тумбочки #3', CATEGORY, 'models/props_c17/FurnitureDrawer002a.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Деревянные Тумбочки #4', CATEGORY, 'models/props_c17/FurnitureDrawer003a.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Деревянные Тумбочки #5', CATEGORY, 'models/props_c17/FurnitureDresser001a.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

Add( 'Батарея', CATEGORY, 'models/props_c17/FurnitureRadiator001a.mdl', { [ 'iron' ] = 4 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 150
Add( 'Туалет', CATEGORY, 'models/props_c17/FurnitureToilet001a.mdl', { [ 'stone' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Раковина', CATEGORY, 'models/props_c17/FurnitureSink001a.mdl', { [ 'stone' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 250
Add( 'Надгробная Плита #1', CATEGORY, 'models/props_c17/gravestone002a.mdl', { [ 'stone' ] = 100 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Надгробная Плита #2', CATEGORY, 'models/props_c17/gravestone003a.mdl', { [ 'stone' ] = 100 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Надгробная Плита #3', CATEGORY, 'models/props_c17/gravestone004a.mdl', { [ 'stone' ] = 100 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

Add( 'Могила #1', CATEGORY, 'models/props_c17/gravestone_coffinpiece001a.mdl', { [ 'stone' ] = 100 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Могила #2', CATEGORY, 'models/props_c17/gravestone_coffinpiece002a.mdl', { [ 'stone' ] = 100 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

Add( 'Оруженый Шкафчик', CATEGORY, 'models/props_c17/Lockers001a.mdl', { [ 'iron' ] = 20 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 75
Add( 'Лестница #1', CATEGORY, 'models/props_c17/metalladder001.mdl', { [ 'iron' ] = 5 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Лестница #2', CATEGORY, 'models/props_c17/metalladder002.mdl', { [ 'iron' ] = 5 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

Add( 'Бочка', CATEGORY, 'models/props_c17/oildrum001.mdl', { [ 'iron' ] = 15 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 125
Add( 'Столб #1', CATEGORY, 'models/props_c17/utilitypole01a.mdl', { [ 'wood' ] = 200 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Столб #2', CATEGORY, 'models/props_c17/utilitypole01b.mdl', { [ 'wood' ] = 200 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Столб #3', CATEGORY, 'models/props_c17/utilitypole01d.mdl', { [ 'wood' ] = 200 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Столб #4', CATEGORY, 'models/props_c17/utilitypole02b.mdl', { [ 'wood' ] = 200 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Столб #5', CATEGORY, 'models/props_c17/utilitypole03a.mdl', { [ 'wood' ] = 200 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

--------------------------------------------------------------------------------------------------------
local CATEGORY = 'Comic Props'

local HEALTH = 100
Add( 'Combine Interior #1', CATEGORY, 'models/props_combine/combine_intmonitor001.mdl', { [ 'iron' ] = 10, [ 'plastic' ] = 5, [ 'glass' ] = 20 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Combine Interior #2', CATEGORY, 'models/props_combine/combine_interface001.mdl', { [ 'iron' ] = 25, [ 'plastic' ] = 10, [ 'glass' ] = 5 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Combine Interior #3', CATEGORY, 'models/props_combine/combine_monitorbay.mdl', { [ 'iron' ] = 5, [ 'plastic' ] = 5, [ 'glass' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 1800
Add( 'Железная Тюремная Дверь', CATEGORY, 'models/props_combine/combine_monitorbay.mdl', { [ 'iron' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 100
Add( 'Cab Breen: Стул', CATEGORY, 'models/props_combine/breenchair.mdl', { [ 'cloth' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Cab Breen: Стол', CATEGORY, 'models/props_combine/breendesk.mdl', { [ 'wood' ] = 150 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Cab Breen: Бюст', CATEGORY, 'models/props_combine/breenbust.mdl', { [ 'stone' ] = 200 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Cab Breen: Часы', CATEGORY, 'models/props_combine/breenclock.mdl', { [ 'red stone' ] = 15 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Cab Breen: Глобус', CATEGORY, 'models/props_combine/breenglobe.mdl', { [ 'cloth' ] = 25 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 500
Add( 'Автомат Содовой', CATEGORY, 'models/props_interiors/VendingMachineSoda01a.mdl', { [ 'iron' ] = 25 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

--------------------------------------------------------------------------------------------------------
local CATEGORY = 'Furniture Pack'

local HEALTH = 100
Add( 'Furniture: Кровать #1', CATEGORY, 'models/furniturepack2/bedroomtwinframecomplete2.mdl', { [ 'wood' ] = 25, [ 'cloth' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кровать #2', CATEGORY, 'models/furniturepack2/bedroomtwinframecomplete1.mdl', { [ 'wood' ] = 25, [ 'cloth' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кровать #3', CATEGORY, 'models/furniturepack2/bedroombed1.mdl', { [ 'wood' ] = 25, [ 'cloth' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кровать #4', CATEGORY, 'models/furniturepack2/bedroombed2.mdl', { [ 'wood' ] = 25, [ 'cloth' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кровать #5', CATEGORY, 'models/furniturepack3/bedroom/bed.mdl', { [ 'wood' ] = 25, [ 'cloth' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кровать #6', CATEGORY, 'models/furniturepack3/bedroom/bed_b.mdl', { [ 'wood' ] = 25, [ 'cloth' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кровать #7', CATEGORY, 'models/furniturepack3/bedroom/bed_c.mdl', { [ 'wood' ] = 25, [ 'cloth' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кровать #8', CATEGORY, 'models/furniturepack3/bedroom/bed_d.mdl', { [ 'wood' ] = 25, [ 'cloth' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кровать #9', CATEGORY, 'models/furniturepack3/bedroom/bed_e.mdl', { [ 'wood' ] = 40, [ 'cloth' ] = 20 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кровать #10', CATEGORY, 'models/furniturepack3/bedroom/full_bed_a.mdl', { [ 'wood' ] = 25, [ 'cloth' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кровать #11', CATEGORY, 'models/furniturepack3/bedroom/full_bed_h.mdl', { [ 'wood' ] = 25, [ 'cloth' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кровать #12', CATEGORY, 'models/furniturepack3/bedroom/full_bed_k.mdl', { [ 'wood' ] = 25, [ 'cloth' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кровать #13', CATEGORY, 'models/furniturepack3/bedroom/twin_bed_b.mdl', { [ 'wood' ] = 25, [ 'cloth' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кровать #14', CATEGORY, 'models/furniturepack3/bedroom/twin_bed_h.mdl', { [ 'wood' ] = 25, [ 'cloth' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кровать #15', CATEGORY, 'models/furniturepack3/bedroom/twin_bed_c2.mdl', { [ 'wood' ] = 25, [ 'cloth' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 300
Add( 'Furniture: Стол #1', CATEGORY, 'models/furniturepack2/basicdesk.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #2', CATEGORY, 'models/furniturepack2/basicdesk2.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #3', CATEGORY, 'models/furniturepack2/basicdesk3.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #4', CATEGORY, 'models/furniturepack2/cornerdesk1.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #5', CATEGORY, 'models/furniturepack2/cornerdesk2.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #6', CATEGORY, 'models/furniturepack2/couchtable.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #7', CATEGORY, 'models/furniturepack2/desksec.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #8', CATEGORY, 'models/furniturepack2/desksec2.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #9', CATEGORY, 'models/furniturepack2/desksecglass.mdl', { [ 'glass' ] = 25 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #10', CATEGORY, 'models/furniturepack2/desksecglass2.mdl', { [ 'glass' ] = 25 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #11', CATEGORY, 'models/furniturepack2/kitchentable.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #12', CATEGORY, 'models/furniturepack2/kitchentable1.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #13', CATEGORY, 'models/furniturepack2/kitchentable2.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #14', CATEGORY, 'models/furniturepack3/bedroom/bedroom_table_a.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #15', CATEGORY, 'models/furniturepack3/coffee_tables/coffeetable_a.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #16', CATEGORY, 'models/furniturepack3/coffee_tables/coffeetable_b.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #17', CATEGORY, 'models/furniturepack3/coffee_tables/coffeetable_c.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #18', CATEGORY, 'models/furniturepack3/coffee_tables/coffeetable_d.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #19', CATEGORY, 'models/furniturepack3/coffee_tables/coffeetable_e.mdl', { [ 'wood' ] = 50, [ 'glass' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #20', CATEGORY, 'models/furniturepack3/coffee_tables/coffeetable_f.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #21', CATEGORY, 'models/furniturepack3/coffee_tables/coffeetable_g.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #22', CATEGORY, 'models/furniturepack3/coffee_tables/coffeetable_h.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #23', CATEGORY, 'models/furniturepack3/coffee_tables/coffeetable_i.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #24', CATEGORY, 'models/furniturepack3/coffee_tables/coffeetable_j.mdl', { [ 'wood' ] = 50, [ 'glass' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #25', CATEGORY, 'models/furniturepack3/coffee_tables/coffeetable_k.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #26', CATEGORY, 'models/furniturepack3/coffee_tables/coffeetable_l.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #27', CATEGORY, 'models/furniturepack3/coffee_tables/coffeetable_m.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #28', CATEGORY, 'models/furniturepack3/coffee_tables/coffeetable_n.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #29', CATEGORY, 'models/furniturepack3/coffee_tables/coffeetable_o.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #30', CATEGORY, 'models/furniturepack3/desks/desk_a.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #31', CATEGORY, 'models/furniturepack3/desks/desk_b.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #32', CATEGORY, 'models/furniturepack3/desks/desk_c.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #33', CATEGORY, 'models/furniturepack3/desks/desk_d.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #34', CATEGORY, 'models/furniturepack3/desks/desk_j.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #35', CATEGORY, 'models/furniturepack3/desks/desk_n.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #36', CATEGORY, 'models/furniturepack3/desks/desk_o.mdl', { [ 'wood' ] = 100 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #37', CATEGORY, 'models/furniturepack3/desks/desk_q.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #38', CATEGORY, 'models/furniturepack3/desks/desk_s.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #39', CATEGORY, 'models/furniturepack3/desks/desk_t.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #40', CATEGORY, 'models/furniturepack3/desks/desk_u.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стол #41', CATEGORY, 'models/furniturepack3/desks/desk_v.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 450
Add( 'Furniture: Комоды #1', CATEGORY, 'models/furniturepack2/bedroomdrawers.mdl', { [ 'wood' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Комоды #2', CATEGORY, 'models/furniturepack2/bedroomtalldrawers.mdl', { [ 'wood' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Комоды #3', CATEGORY, 'models/furniturepack3/bedroom/bedroom_table_b.mdl', { [ 'wood' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Комоды #4', CATEGORY, 'models/furniturepack3/bedroom/drawer_a.mdl', { [ 'wood' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Комоды #5', CATEGORY, 'models/furniturepack3/bedroom/drawer_b.mdl', { [ 'wood' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Комоды #6', CATEGORY, 'models/furniturepack3/bedroom/drawer_c.mdl', { [ 'wood' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Комоды #7', CATEGORY, 'models/furniturepack3/bedroom/drawer_d.mdl', { [ 'wood' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Комоды #8', CATEGORY, 'models/furniturepack3/bedroom/drawer_e.mdl', { [ 'wood' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Комоды #9', CATEGORY, 'models/furniturepack3/bedroom/drawer_f.mdl', { [ 'wood' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Комоды #10', CATEGORY, 'models/furniturepack3/bedroom/drawer_g.mdl', { [ 'wood' ] = 125 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Комоды #11', CATEGORY, 'models/furniturepack3/bedroom/drawer_h.mdl', { [ 'wood' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Комоды #12', CATEGORY, 'models/furniturepack3/bedroom/drawer_i.mdl', { [ 'wood' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Комоды #13', CATEGORY, 'models/furniturepack3/bedroom/drawer_j.mdl', { [ 'wood' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Комоды #14', CATEGORY, 'models/furniturepack3/bedroom/drawer_k.mdl', { [ 'wood' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Комоды #15', CATEGORY, 'models/furniturepack3/bedroom/drawer_l.mdl', { [ 'wood' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Комоды #16', CATEGORY, 'models/furniturepack3/livingroom/tvstand_f.mdl', { [ 'wood' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Комоды #17', CATEGORY, 'models/furniturepack3/livingroom/tvstand_h.mdl', { [ 'wood' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Комоды #18', CATEGORY, 'models/furniturepack2/bigtvstand.mdl', { [ 'wood' ] = 75 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 150
Add( 'Furniture: Стиральная Машина', CATEGORY, 'models/furniturepack2/dishwasher.mdl', { [ 'iron' ] = 12 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Холодильник', CATEGORY, 'models/furniturepack2/fridge.mdl', { [ 'iron' ] = 12 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Плита', CATEGORY, 'models/furniturepack2/stove.mdl', { [ 'iron' ] = 55 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Урна', CATEGORY, 'models/furniturepack2/trashcan.mdl', { [ 'iron' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Душ', CATEGORY, 'models/furniturepack2/shower.mdl', { [ 'iron' ] = 25 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

Add( 'Furniture: Кухня #1', CATEGORY, 'models/furniturepack2/kitchencounter.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #2', CATEGORY, 'models/furniturepack2/kitchencounterisland.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #3', CATEGORY, 'models/furniturepack2/kitchencounterislandsec.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #4', CATEGORY, 'models/furniturepack2/kitchencounterislandsec2.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #5', CATEGORY, 'models/furniturepack2/kitchencounterislandsecout.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #6', CATEGORY, 'models/furniturepack2/kitchencountersec.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #7', CATEGORY, 'models/furniturepack2/kitchencountersink.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #8', CATEGORY, 'models/furniturepack2/kitchencountersinkwater.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #9', CATEGORY, 'models/furniturepack2/kitchencountertopcab.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #10', CATEGORY, 'models/furniturepack2/kitchencountertopcab2.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #11', CATEGORY, 'models/furniturepack2/kitchencountertopcab3.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #12', CATEGORY, 'models/furniturepack2/kitchencountertopcabsec.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #13', CATEGORY, 'models/furniturepack3/kitchen/counter_a.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #14', CATEGORY, 'models/furniturepack3/kitchen/counter_a_1x2.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #15', CATEGORY, 'models/furniturepack3/kitchen/counter_a_1x4.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #16', CATEGORY, 'models/furniturepack3/kitchen/counter_b.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #17', CATEGORY, 'models/furniturepack3/kitchen/counter_b_1x2.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #18', CATEGORY, 'models/furniturepack3/kitchen/counter_b_1x4.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #19', CATEGORY, 'models/furniturepack3/kitchen/counter_overhead_a.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #20', CATEGORY, 'models/furniturepack3/kitchen/counter_overhead_a_1x2.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #21', CATEGORY, 'models/furniturepack3/kitchen/counter_overhead_a_1x4.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #22', CATEGORY, 'models/furniturepack3/kitchen/counter_overhead_b.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #23', CATEGORY, 'models/furniturepack3/kitchen/counter_overhead_b_1x2.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #24', CATEGORY, 'models/furniturepack3/kitchen/counter_overhead_b_1x4.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #25', CATEGORY, 'models/furniturepack3/kitchen/counter_overhead_half_a.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #26', CATEGORY, 'models/furniturepack3/kitchen/counter_overhead_half_b.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #27', CATEGORY, 'models/furniturepack3/kitchen/counter_overhead_half_c.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #28', CATEGORY, 'models/furniturepack3/kitchen/counter_overhead_sec_a.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #29', CATEGORY, 'models/furniturepack3/kitchen/counter_sec.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #30', CATEGORY, 'models/furniturepack3/kitchen/counter_sec_b.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #31', CATEGORY, 'models/furniturepack3/kitchen/counter_sec_b_inv.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #32', CATEGORY, 'models/furniturepack3/kitchen/counter_sec_overhead_b.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #33', CATEGORY, 'models/furniturepack3/kitchen/counter_sink_a.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Кухня #34', CATEGORY, 'models/furniturepack3/kitchen/counter_sink_b.mdl', { [ 'wood' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

Add( 'Furniture: Диваны #1', CATEGORY, 'models/furniturepack2/couch1.mdl', { [ 'cloth' ] = 55 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Диваны #2', CATEGORY, 'models/furniturepack2/couch1_2.mdl', { [ 'cloth' ] = 55 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Диваны #3', CATEGORY, 'models/furniturepack2/smlcouch1.mdl', { [ 'cloth' ] = 55 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Диваны #4', CATEGORY, 'models/furniturepack3/couches/couch_a.mdl', { [ 'cloth' ] = 55 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Диваны #5', CATEGORY, 'models/furniturepack3/couches/couch_b.mdl', { [ 'cloth' ] = 55 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Диваны #6', CATEGORY, 'models/furniturepack3/couches/couch_c.mdl', { [ 'cloth' ] = 55 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Диваны #7', CATEGORY, 'models/furniturepack3/couches/couch_d.mdl', { [ 'cloth' ] = 55 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

Add( 'Furniture: Стулья #1', CATEGORY, 'models/furniturepack2/kitchentablechair1.mdl', { [ 'wood' ] = 35 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стулья #2', CATEGORY, 'models/furniturepack2/kitchentablechair2.mdl', { [ 'wood' ] = 35 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стулья #3', CATEGORY, 'models/furniturepack2/kitchentablechair3.mdl', { [ 'wood' ] = 35 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Стулья #4', CATEGORY, 'models/furniturepack3/chairs/chair_a.mdl', { [ 'wood' ] = 35 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

Add( 'HL2: Диваны #1', CATEGORY, 'models/props_c17/furniturearmchair001a.mdl', { [ 'cloth' ] = 15 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'HL2: Диваны #2', CATEGORY, 'models/props_c17/furniturecouch001a.mdl', { [ 'cloth' ] = 15 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'HL2: Диваны #3', CATEGORY, 'models/props_c17/furniturecouch002a.mdl', { [ 'cloth' ] = 15 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'HL2: Диваны #4', CATEGORY, 'models/props_interiors/furniture_couch02a.mdl', { [ 'cloth' ] = 15 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

Add( 'Furniture: Ванная #1', CATEGORY, 'models/furniturepack3/bathroom/shower_a.mdl', { [ 'stone' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Ванная #2', CATEGORY, 'models/furniturepack3/bathroom/sink_a.mdl', { [ 'stone' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Ванная #3', CATEGORY, 'models/furniturepack3/bathroom/sink_b.mdl', { [ 'stone' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Ванная #4', CATEGORY, 'models/furniturepack3/bathroom/toilet_a.mdl', { [ 'stone' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Ванная #5', CATEGORY, 'models/furniturepack3/bathroom/tub_a.mdl', { [ 'stone' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Ванная #6', CATEGORY, 'models/furniturepack3/bathroom/tub_b.mdl', { [ 'stone' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

Add( 'Furniture: Книжные Полки #1', CATEGORY, 'models/furniturepack3/livingroom/shelf_a.mdl', { [ 'wood' ] = 25 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Книжные Полки #2', CATEGORY, 'models/furniturepack3/livingroom/shelf_b.mdl', { [ 'wood' ] = 25 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

Add( 'Furniture: Картины #1', CATEGORY, 'models/furniturepack3/pictures/frame_a.mdl', { [ 'wood' ] = 50 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Furniture: Картины #1', CATEGORY, 'models/furniturepack3/pictures/frame_a_big.mdl', { [ 'wood' ] = 25 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

--------------------------------------------------------------------------------------------------------
local CATEGORY = 'Posters'
local HEALTH = 25

Add( 'Плакат #1', CATEGORY, 'models/furniturepack3/pictures/posters_skull.mdl', { [ 'plastic' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Плакат #2', CATEGORY, 'models/furniturepack3/pictures/posters_yeswecannabis.mdl', { [ 'plastic' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Плакат #3', CATEGORY, 'models/furniturepack3/pictures/posters_therewillbeblood.mdl', { [ 'plastic' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Плакат #4', CATEGORY, 'models/furniturepack3/pictures/posters_coolstory.mdl', { [ 'plastic' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Плакат #5', CATEGORY, 'models/furniturepack3/pictures/posters_daftpunk.mdl', { [ 'plastic' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )
Add( 'Плакат #6', CATEGORY, 'models/furniturepack3/pictures/posters_proudbychoice.mdl', { [ 'plastic' ] = 10 }, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

--------------------------------------------------------------------------------------------------------
local CATEGORY = 'Houses Pack'

local HEALTH = 25000
local CRAFT = { [ 'wood' ] = 7500, [ 'stone' ] = 1200, [ 'brick' ] = 5500, [ 'glass' ] = 255 }
Add( 'House #1', CATEGORY, 'models/housepack2/house1.mdl', CRAFT, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 20000
local CRAFT = { [ 'wood' ] = 6000, [ 'stone' ] = 1000, [ 'brick' ] = 4800, [ 'glass' ] = 300 }
Add( 'House #2', CATEGORY, 'models/housepack2/house2.mdl', CRAFT, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 22000
local CRAFT = { [ 'wood' ] = 6500, [ 'stone' ] = 1100, [ 'brick' ] = 4500, [ 'glass' ] = 450 }
Add( 'House #3', CATEGORY, 'models/housepack2/house3.mdl', CRAFT, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 32000
local CRAFT = { [ 'wood' ] = 3000, [ 'stone' ] = 5000, [ 'brick' ] = 8500, [ 'glass' ] = 100 }
Add( 'House #4', CATEGORY, 'models/housepack2/house4.mdl', CRAFT, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 18000
local CRAFT = { [ 'wood' ] = 6500, [ 'stone' ] = 500 }
Add( 'House #5', CATEGORY, 'models/megalomaniac/megahouse.mdl', CRAFT, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 28000
local CRAFT = { [ 'wood' ] = 9000, [ 'brick' ] = 9000, [ 'iron' ] = 500 }
Add( 'House #6', CATEGORY, 'models/erikszeug/gebaeude/eriksvilla.mdl', CRAFT, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 30000
local CRAFT = { [ 'wood' ] = 2000, [ 'brick' ] = 9800, [ 'stone' ] = 9800, [ 'iron' ] = 250 }
Add( 'House #7 - Хрущёвка', CATEGORY, 'models/kunoszeug/altkunohaus.mdl', CRAFT, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 28500
local CRAFT = { [ 'wood' ] = 4500, [ 'brick' ] = 8500, [ 'stone' ] = 8500, [ 'iron' ] = 100 }
Add( 'House #8', CATEGORY, 'models/kunoszeug/bunkerhaus.mdl', CRAFT, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 28500
local CRAFT = { [ 'wood' ] = 4500, [ 'brick' ] = 8500, [ 'stone' ] = 8500 }
Add( 'House #9', CATEGORY, 'models/kunoszeug/kunohaus_neu.mdl', CRAFT, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 35000
local CRAFT = { [ 'wood' ] = 9999, [ 'brick' ] = 9999, [ 'stone' ] = 9999, [ 'iron' ] = 1000, [ 'plastic' ] = 150 }
Add( 'House #10 - Высокая Хрущёвка', CATEGORY, 'models/kunoszeug/towerb.mdl', CRAFT, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 15000
local CRAFT = { [ 'wood' ] = 2000, [ 'brick' ] = 4500 }
Add( 'House #11', CATEGORY, 'models/kunoszeug/traumwohnung-stein.mdl', CRAFT, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )

local HEALTH = 25000
local CRAFT = { [ 'wood' ] = 2000, [ 'brick' ] = 8500, [ 'stone' ] = 4500 }
Add( 'House #12', CATEGORY, 'models/kunoszeug/wohnblock.mdl', CRAFT, function( _, eObj ) SetHealthObject( eObj, HEALTH ) end )