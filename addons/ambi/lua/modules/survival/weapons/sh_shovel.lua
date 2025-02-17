local SWEP = {}
SWEP.Primary = {}

SWEP.Class              = 'surv_shovel'
SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.PrintName			= 'Лопата'
SWEP.DrawAmmo			= false
SWEP.DrawCrosshair		= true
SWEP.ViewModelFOV		= 55
SWEP.ViewModelFlip		= false
SWEP.CSMuzzleFlashes	= false
SWEP.Slot = 3
SWEP.SlotPos		= 3

SWEP.Author		= "Stranded Team"
SWEP.Contact		= ""
SWEP.Purpose		= "Dig."
SWEP.Instructions	= "Use primary to dig."

SWEP.Category           = 'Выживашка.Лопаты'
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= false

SWEP.ViewModel = "models/weapons/c_gms_shovel.mdl"
SWEP.WorldModel = "models/weapons/w_gms_shovel.mdl"

SWEP.Primary.ClipSize		= 0
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "none"

/*---------------------------------------------------------
	PrimaryAttack
---------------------------------------------------------*/
local ACCESS_SURFACES = {
    [ 'grass' ] = true,
    [ 'sand' ] = true,
    [ 'dirty' ] = true,
}

function SWEP:PrimaryAttack()
    if CLIENT then return end
    self.Weapon:SetNextPrimaryFire(CurTime() + 1)
	self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)

    local owner = self.Owner
    local tr = owner:GetEyeTrace()
    local hitpos = tr.HitPos

    if ACCESS_SURFACES[ util.GetSurfacePropName( tr.SurfaceProps ) ] and ( hitpos:Distance( owner:GetPos() ) <= 55 ) then
        owner:Digging( true )
        self:SendWeaponAnim( ACT_VM_SWINGMISS )
    end
end

function SWEP:SecondaryAttack()
    if CLIENT then return end
    self.Weapon:SetNextSecondaryFire(CurTime() + 1)
	self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)

    local owner = self.Owner
    local tr = owner:GetEyeTrace()
    local hitpos = tr.HitPos

    if ACCESS_SURFACES[ util.GetSurfacePropName( tr.SurfaceProps ) ] and ( hitpos:Distance( owner:GetPos() ) <= 55 ) then
        owner:Digging( true )
    end
end

AMB.RegEntity.Register( SWEP.Class, 'weapons', SWEP )
