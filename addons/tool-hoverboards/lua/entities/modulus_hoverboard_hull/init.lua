
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( "shared.lua" )

function ENT:Precache( )

	util.PrecacheModel( "models/modulus/player_hull.mdl" )
	util.PrecacheSound( "Player.FallDamage" )

end

function ENT:UpdateTransmitState()

	return TRANSMIT_ALWAYS

end

function ENT:Initialize()

	self:Precache()

	self:SetModel( "models/modulus/player_hull.mdl" )
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:DrawShadow( false )
	self:SetNoDraw( true )

	-- For debugging
	self:SetColor( Color( 0, 0, 0, 128 ) )
	self:SetRenderMode( RENDERMODE_TRANSCOLOR )

	self.Player = NULL
	self.PhysgunDisabled = true

end

function ENT:SetPlayer( pl )

	self.Player = pl

end

function ENT:Think()

	if ( GetConVarNumber( "sv_hoverboard_canfall" ) == 1 ) then

		local phys = self:GetPhysicsObject()
		if ( IsValid( phys ) && phys:IsPenetrating() ) then

			local board = self:GetOwner()

			board:SetDriver( NULL )

			local damage = self.Player:Health() * 0.9
			board:HurtDriver( damage )

			self.Player:EmitSound( "Player.FallDamage" )

		end

	end

	self:NextThink( CurTime() )
	return true

end

function ENT:PhysicsCollide( data, phys )

	local board = self:GetOwner()
	if ( !IsValid( self.Player ) || !IsValid( board ) || GetConVarNumber( "sv_hoverboard_canfall" ) == 0 ) then return end

	-- Is the board upside down? If so, boot the player. Timer to avoid the message about crashing in a physics hook
	if ( board:GetUp().z < 0.33 ) then timer.Simple( 0, function() board:SetDriver( NULL ) end ) end

	if ( data.DeltaTime < 0.2 ) then return end -- timing

	local speed = phys:GetVelocity():Length()
	local lastspeed = data.OurOldVelocity:Length()
	local diff = math.abs( lastspeed - speed )
	if ( diff < 40 ) then return end -- have enough speed?

	local damage = math.Clamp( diff * 0.025, 0, 100 )
	board:HurtDriver( damage )

	self.Player:EmitSound( "Player.FallDamage" )

	util.Decal( "Blood", data.HitPos - data.HitNormal * 2, data.HitPos + data.HitNormal * 2 )

	for i = 1, 3 do

		local effect = EffectData()
		effect:SetOrigin( data.HitPos + data.HitNormal * 2 + VectorRand() * math.Rand( 8, 16 ) )

		util.Effect( "BloodImpact", effect, true, true )

	end

end
