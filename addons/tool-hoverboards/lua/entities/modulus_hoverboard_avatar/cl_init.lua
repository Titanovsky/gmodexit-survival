
include( "shared.lua" )

function ENT:Draw( flags )

	if ( !IsValid( self:GetNWEntity( "Board" ) ) || !IsValid( self:GetNWEntity( "Board" ):GetDriver() ) || !IsValid( self:GetNWEntity( "Player" ) ) ) then return end

	local ply = self:GetNWEntity( "Player" )

	self.GetPlayerColor = function()
		if ( IsValid( ply ) && ply.GetPlayerColor ) then
			return ply:GetPlayerColor()
		else
			return Vector( 1, 1, 1 )
		end
	end

	self:DrawModel( flags )

end

function ENT:DrawTranslucent( flags )

	self:Draw( flags )

end
