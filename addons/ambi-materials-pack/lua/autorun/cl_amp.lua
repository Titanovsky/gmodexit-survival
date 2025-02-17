local FileFind, StringExplode, ipairs, ListAdd = file.Find, string.Explode, ipairs, list.Add
local Add = function( sPathMaterial ) ListAdd( 'OverrideMaterials', 'ambi/amp/'..sPathMaterial ) end

-- ---------------------------------------------------------------------------------
local materials, _ = FileFind( 'materials/ambi/amp/*', 'GAME' )
if not materials then return end

for _, name in ipairs( materials ) do
    local tag = StringExplode( '.', name )[ 1 ]

    Add( tag )
end