local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft
local NO_ICON = nil

local function Plant( ePly, sPlant, sSound )
    if not ePly:IsPlantSeed( sPlant ) then return false end

    ePly:PlantSeed( sPlant )
    ePly:EmitSound( sSound )

    return true
end

local CATEGORY = 'Семечки'

Add( 'seed', 'Seed', CATEGORY, '', 'Debug' )

local FOOD = {
    { 'apple', 'Яблони', 'https://i.ibb.co/CH31RFm/apple-seed.png' },
    { 'banana', 'Бананчика', 'https://i.ibb.co/7NDX4tR/banana-seed.png' },
    { 'cabbage', 'Капустки', 'https://i.ibb.co/BjnnKGq/cabbage-seed.png' },
    { 'corn', 'Кукурузки', 'https://i.ibb.co/vqqJ7v1/corn-seed.png' },
    { 'cucumber', 'Огурца', 'https://i.ibb.co/tmsbHyL/cucumber-seed.png' },
    { 'eggplant', 'Баклажанчика', 'https://i.ibb.co/59KZ6Zn/eggplant-seed.png' },
    { 'leek', 'Лука', 'https://i.ibb.co/J7049VL/leek-seed.png' },
    { 'onion', 'Лука', 'https://i.ibb.co/bFt2YxX/onion-seed.png' },
    { 'lemon', 'Лимона', 'https://i.ibb.co/GshSmjh/lemon-seed.png' },
    { 'orange', 'Апельсина', 'https://i.ibb.co/3TFpG2R/orange-seed.png' },
    { 'peach', 'Абрикоса', 'https://i.ibb.co/8dcQGPH/peach-seed.png' },
    { 'pear', 'Груши', 'https://i.ibb.co/McgZW8X/pear-seed.png' },
    { 'pineapple', 'Ананасика', 'https://i.ibb.co/RYbbsVH/pineapple-seed.png' },
    { 'pumpkin', 'Тыквы', 'https://i.ibb.co/3hvZHGc/pumpkin-seed.png' },
    { 'watermelon', 'Арбуза', 'https://i.ibb.co/6nwwPT2/watermelon-seed.png' },
    { 'tomato', 'Помидорки', 'https://i.ibb.co/q9kyr87/tomato-seed.png' },
    { 'cannabis', 'Каннабиса', 'https://i.ibb.co/4VWnr1g/cannabis-seed.png' },
}
for k, v in ipairs( FOOD ) do
    Add( v[ 1 ]..' seed', 'Семя '..v[ 2 ], CATEGORY, v[ 3 ] or nil, 'Можно посадить на землю', function( ePly )
        return Plant( ePly, v[ 1 ], 'buttons/button14.wav' )
    end )
end