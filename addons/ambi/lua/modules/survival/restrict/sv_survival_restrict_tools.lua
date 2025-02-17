local Add = Ambi.Restrict.Add
local TOOLS = 'tools'

Add( 'light', TOOLS, {
    level = function( ePly ) return ( ePly:GetLevel() >= 5 ) end,
    --creator = function( ePly ) return ePly:IsUserGroup( 'creator' ) end
} )

Add( 'hoverboard', TOOLS, {
    level = function( ePly ) return ( ePly:GetLevel() == 0 ) end,
    creator = function( ePly ) return ePly:IsUserGroup( 'creator' ) end
} )

Add( 'weld', TOOLS, {
    level = function( ePly ) return ( ePly:GetLevel() == 0 ) end,
    creator = function( ePly ) return ePly:IsUserGroup( 'creator' ) end
} )

Add( 'dynamite', TOOLS, {
    level = function( ePly ) return ( ePly:GetLevel() == 0 ) end,
    creator = function( ePly ) return ePly:IsUserGroup( 'creator' ) end
} )

Add( 'balloon', TOOLS, {
    level = function( ePly ) return ( ePly:GetLevel() == 0 ) end,
    creator = function( ePly ) return ePly:IsUserGroup( 'creator' ) end
} )

Add( 'advdupe2', TOOLS, {
    creator = function( ePly ) return ePly:IsUserGroup( 'creator' ) end
} )

Add( 'starfall_component', TOOLS, {
    creator = function( ePly ) return ePly:IsUserGroup( 'creator' ) end
} )

Add( 'starfall_processor', TOOLS, {
    creator = function( ePly ) return ePly:IsUserGroup( 'creator' ) end
} )

Add( 'stacker_improved', TOOLS, {
    creator = function( ePly ) return ePly:IsUserGroup( 'creator' ) end
} )

Add( 'duplicator', TOOLS, {
    creator = function( ePly ) return ePly:IsUserGroup( 'creator' ) end
} )

Add( 'dupe', TOOLS, {
    creator = function( ePly ) return ePly:IsUserGroup( 'creator' ) end
} )

Add( 'models/props_borealis/bluebarrel001.mdl', 'props', {
    level = function( ePly ) return ( ePly:GetLevel() == 2 ) end,
    creator = function( ePly ) return ePly:IsUserGroup( 'creator' ) end
} )


--------------------------------------------------------------------------------------------------------------
local CATEGORY = 'properties'

Add( 'remover', CATEGORY, {
    level = function( ePly ) return ( ePly:GetLevel() >= 2 ) end,
} )

Add( 'drive', CATEGORY, {
    creator = function( ePly ) return ePly:IsUserGroup( 'creator' ) end,
} )

Add( 'collision', CATEGORY, {
    creator = function( ePly ) return ePly:IsUserGroup( 'creator' ) end,
} )

Add( 'ignite', CATEGORY, {
    creator = function( ePly ) return ePly:IsUserGroup( 'creator' ) end,
} )

Add( 'extinguish', CATEGORY, {
    creator = function( ePly ) return ePly:IsUserGroup( 'creator' ) end,
} )

--[[
AMB.Restrict.Add( 'colour', TOOLS, 4 )
AMB.Restrict.Add( 'stacker', TOOLS, 6 )
AMB.Restrict.Add( 'advdupe2', TOOLS, 6 )

-- blocked
AMB.Restrict.Add( 'duplicator', TOOLS, 99 )
AMB.Restrict.Add( 'weld', TOOLS, 99 )
AMB.Restrict.Add( 'axis', TOOLS, 99 )
AMB.Restrict.Add( 'dynamite', TOOLS, 99 )
AMB.Restrict.Add( 'nocollide', TOOLS, 99 )
AMB.Restrict.Add( 'rope', TOOLS, 99 )
AMB.Restrict.Add( 'slider', TOOLS, 99 )
AMB.Restrict.Add( 'ballsocket', TOOLS, 99 )
AMB.Restrict.Add( 'elastic', TOOLS, 99 )
AMB.Restrict.Add( 'hyudralic', TOOLS, 99 )
AMB.Restrict.Add( 'balloon', TOOLS, 99 )
AMB.Restrict.Add( 'hoverball', TOOLS, 99 )
AMB.Restrict.Add( 'emitter', TOOLS, 99 )
]]