local ENTITY = FindMetaTable( 'Entity' )

-- -------------------------------------------------------------------------------------
local Gen = Ambi.General
local util = util

DROP_TO_GROUND_CLASSIC = 0 
DROP_TO_GROUND_STRANDED = 1

-- ---------------------------------------------------------------------------------------------------------------------------------------
local function StrandedDropToGround( eObj )
    local trace = {}
	trace.start = eObj:GetPos()
	trace.endpos = trace.start + Vector( 0, 0, -100000 )
	trace.mask = MASK_SOLID_BRUSHONLY
	trace.filter = eObj

	eObj:SetPos( util.TraceLine( trace ).HitPos )
end

function ENTITY:DropToGroundCustom( nType )
    if not nType then return Gen.Error( 'Player', 'DropToGroundCustom | nType is not selected!' ) end
    
    if ( nType == DROP_TO_GROUND_CLASSIC ) then self:DropToFloor()
    elseif ( nType == DROP_TO_GROUND_STRANDED ) then StrandedDropToGround( self )
    else A.Error( 'Player', 'DropToGroundCustom | nType '..nType..' doesn\'t exist!' )
    end
end

function ENTITY:AddHealth( nValue, bDie )
    self:SetHealth( self:Health() + nValue )

    if bDie and ( self:Health() <= 0 ) and self:IsAlive() then self:Kill() end
end

function ENTITY:AddMaxHealth( nValue )
    self:SetMaxHealth( self:GetMaxHealth() + nValue )
end

function ENTITY:AddArmor( nValue )
    self:SetArmor( self:Armor() + nValue )
end

function ENTITY:AddMaxArmor( nValue )
    self:SetMaxArmor( self:GetMaxArmor() + nValue )
end