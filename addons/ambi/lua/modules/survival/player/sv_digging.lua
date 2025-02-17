local C, SND = Ambi.General.Global.Colors, Ambi.General.Global.Sounds

local RAND_RESOURCES = {
    'ground', 'ground', 'ground', 'ground', 'ground', 'sand', 'sand', 'sand', 'stone'
}

local RAND_RESOURCES_COUNT = {
    [ 'ground' ] = { 1, 14 },
    [ 'sand' ] = { 2, 6 },
    [ 'stone' ] = { 1, 2 },
}

local RAND_SEEDS = {
    'cannabis seed', 'cannabis seed', 'banana seed', 'banana seed', 'banana seed', 'apple seed', 'apple seed', 'cabbage seed', 'cabbage seed',
    'corn seed', 'corn seed', 'cucumber seed', 'eggplant seed', 'tomato seed', 'tomato seed', 'eggplant seed', 'leek seed', 'leek seed',
    'onion seed', 'onion seed', 'lemon seed', 'lemon seed', 'orange seed', 'orange seed', 'peach seed', 'pear seed',
    'pineapple seed', 'pumpkin seed', 'watermelon seed'
}

local PLAYER = FindMetaTable( 'Player' )

function PLAYER:Digging( bIsShowel )
    local collect_skill = self:GetSkill( 'collection' )
    local time = ( bIsShowel and 13.75 or 7.75 ) - ( collect_skill + 1 ) / 2.55
    if ( time < 0 ) then time = 0.05 end

    self:RunProcess( 'Digging', 'Копаем и ищем ресурсы', time, 2, function()
        local res = {}
        local bonus = bIsShowel and math.random( 25, 50 ) or 0
        local rand_amounts = math.random( 0, 3 )
        if ( rand_amounts == 0 ) then return end

        for i = 1, rand_amounts do
            local rand_res = table.Random( RAND_RESOURCES )
            local rand_count = math.random( RAND_RESOURCES_COUNT[ rand_res ][ 1 ], RAND_RESOURCES_COUNT[ rand_res ][ 2 ] ) + bonus

            if not self:GetItem( rand_res ) and not self:GetLastFreeSlot() then self:NotifySend( 4, { text = 'У вас нет свободного места для '..rand_res, time = 6, color = C.AMBI_RED } ) return end
            
            self:AddItem( rand_res, rand_count, true )

            if self:GetItem( rand_res ) and ( self:GetItem( rand_res ).count >= rand_count ) then
                self:NotifySend( 4, { text = 'x'..rand_count..' '..Ambi.SimpleInventory.GetClass( rand_res ).name, time = 3, color = C.AMBI_GREEN } )
            end
        end

        self:AddSkillXP( 'collection', math.random( 1, 7 ) )

        if bIsShowel then return end

        local rand_is_seed = math.random( 0, 1 )
        if ( rand_is_seed == 0 ) then     
            hook.Call( '[Ambi.Survival.Digging]', nil, self, false ) 

            return 
        end

        local rand_seed = table.Random( RAND_SEEDS )
        local rand_count = math.random( 1, 3 )

        if not self:GetItem( rand_seed ) and not self:GetLastFreeSlot() then self:NotifySend( 4, { text = 'У вас нет свободного места для '..rand_seed, time = 6, color = C.AMBI_RED } ) return end

        self:AddItem( rand_seed, rand_count, true )

        if self:GetItem( rand_seed ) and ( self:GetItem( rand_seed ).count >= rand_count ) then
            self:NotifySend( 4, { text = 'x'..rand_count..' '..AMB.SimpleInventory.GetClass( rand_seed ).name, time = 3.75, color = C.FLAT_GREEN } )

            hook.Call( '[Ambi.Survival.Digging]', nil, self, true ) 
        end
    end )
end

local ACCESS_SURFACES = {
    [ 'grass' ] = true,
    [ 'sand' ] = true,
    [ 'dirty' ] = true,
    [ 'default' ] = true -- temp
}

hook.Add( 'KeyPress', 'Ambi.Survival.Digging', function( ePly, nKey )
	if ( nKey == IN_USE ) and ePly:Alive() and not ePly:IsProcess() and ( ePly:WaterLevel() == 0 ) then

        local tr = ePly:GetEyeTrace()
        local hitpos = tr.HitPos

        print( util.GetSurfacePropName( tr.SurfaceProps ) )
        if ACCESS_SURFACES[ util.GetSurfacePropName( tr.SurfaceProps ) ] and ( hitpos:Distance( ePly:GetPos() ) <= 55 ) then
		    ePly:Digging()
        end
	end
end )