local Add = Ambi.Farming.AddSeed

local function AddPlantFruit( sClass, nHeader, sModel, tSeconds, nFruits, nSeeds, tColors )
    Add( sClass, nHeader, sModel, tSeconds, function( ePlant )
        ePlant:SetColor( tColors and tColors[ 1 ] or Color( 0, 50, 0 ) )
    end, function( ePlant )
        ePlant:SetColor( tColors and tColors[ 2 ] or Color( 0, 150, 0 ) )
    end, function( ePlant )
        ePlant:SetColor( tColors and tColors[ 3 ] or Color( 0, 255, 0 ) )
    end, function( ePly, ePlant ) 
        ePly:ChatPrint( 'Вы взяли урожай '..nHeader )
        ePly:AddItem( sClass, math.random( 1, nFruits ), true )

        local rand = math.random( 0, 1 )
        if ( rand == 1 ) then 
            ePly:ChatPrint( 'Вы взяли Семячко от '..nHeader )
            ePly:AddItem( sClass..' seed', math.random( 1, nSeeds ), true ) 
        end
    end )
end

AddPlantFruit( 'apple', 'Яблоня', 'models/props_foliage/ah_medium_pine_skybox.mdl', { 60, 120, 120 }, 3, 4 )
AddPlantFruit( 'banana', 'Банана', 'models/props_foliage/ash03_skybox.mdl', { 60, 120, 120 }, 3, 4 )
AddPlantFruit( 'cabbage', 'Капустки', 'models/props_foliage/ah_hedge_512_static_skybox.mdl', { 60, 120, 120 }, 3, 4 )
AddPlantFruit( 'corn', 'Кукурзки', 'models/props_foliage/ash01_skybox.mdl', { 60, 120, 120 }, 3, 4 )
AddPlantFruit( 'cucumber', 'Огурца', 'models/props_foliage/poplar01_skybox.mdl', { 60, 120, 120 }, 3, 4 )
AddPlantFruit( 'eggplant', 'Бакложанчика', 'models/props_foliage/poplar02_skybox.mdl', { 60, 120, 120 }, 3, 4 )
AddPlantFruit( 'leek', 'Лука', 'models/props_foliage/small-tree01_skybox.mdl', { 60, 120, 120 }, 3, 4 )
AddPlantFruit( 'onion', 'Лука', 'models/props_foliage/r_wildhedge1_skybox.mdl', { 60, 120, 120 }, 3, 4 )

AddPlantFruit( 'lemon', 'Лимона', 'models/props_foliage/ah_medium_pine_skybox.mdl', { 60, 120, 120 }, 3, 4, {
    Color( 50, 50, 0 ), Color( 150, 150, 0 ), Color( 255, 255, 0 )
} )
AddPlantFruit( 'orange', 'Апельсинчика', 'models/props_foliage/ah_medium_pine_skybox.mdl', { 60, 120, 120 }, 3, 4, {
    Color( 242, 213, 165 ), Color( 184, 132, 44 ), Color( 237, 162, 36 )
} )
AddPlantFruit( 'peach', 'Некторина', 'models/props_foliage/ah_medium_pine_skybox.mdl', { 60, 120, 120 }, 3, 4, {
    Color( 140, 124, 102 ), Color( 153, 120, 75 ), Color( 217, 156, 72 )
} )
AddPlantFruit( 'pear', 'Груши', 'models/props_foliage/ah_medium_pine_skybox.mdl', { 60, 120, 120 }, 3, 4, {
    Color( 224, 199, 164 ), Color( 179, 191, 128 ), Color( 196, 217, 108 )
} )
AddPlantFruit( 'pineapple', 'Ананасий', 'models/props_foliage/ah_medium_pine_skybox.mdl', { 60, 120, 120 }, 3, 4, {
    Color( 242, 215, 196 ), Color( 185, 189, 108 ), Color( 226, 235, 59 )
} )
AddPlantFruit( 'pumpkin', 'Тыквы', 'models/props_foliage/ah_medium_pine_skybox.mdl', { 60, 120, 120 }, 3, 4, {
    Color( 179, 130, 93 ), Color( 186, 106, 45 ), Color( 237, 116, 24 )
} )
AddPlantFruit( 'watermelon', 'Арбуза', 'models/props_foliage/ah_medium_pine_skybox.mdl', { 60, 120, 120 }, 3, 4, {
    Color( 28, 82, 3 ), Color( 48, 135, 8 ), Color( 53, 242, 104 )
} )
AddPlantFruit( 'tomato', 'Помидора', 'models/props_foliage/ah_medium_pine_skybox.mdl', { 60, 120, 120 }, 3, 4, {
    Color( 138, 201, 127 ), Color( 184, 132, 121 ), Color( 207, 103, 81 )
} )

AddPlantFruit( 'cannabis', 'Конополя', 'models/props_foliage/ash01_skybox.mdl', { 200, 150, 100 }, 18, 3, {
    Color( 152, 184, 110 ), Color( 125, 184, 48 ), Color( 28, 189, 23 ) 
} )