SWEP.Base				= "tfa_cssnade_base"

SWEP.Category				= "TFA Rust Legacy"
SWEP.Author				= "YuRaNnNzZZ"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.PrintName				= "F1 Grenade"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 4				-- Slot in the weapon selection menu
SWEP.SlotPos				= 40			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= false		-- set false if you want no crosshair
SWEP.Weight				= 2			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "grenade"		-- how others view you carrying the weapon

SWEP.Type = "Grenade"

SWEP.ViewModelFOV			= 54
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/yurie_rustalpha/c-vm-f1.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/yurie_rustalpha/wm-f1.mdl"	-- Weapon world model
SWEP.Spawnable				= (TFA_BASE_VERSION and TFA_BASE_VERSION >= 4.5) and (TFA and TFA.RUSTALPHA ~= nil)
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

SWEP.Primary.RPM				= 60 / 0.75		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 1		-- Size of a clip
SWEP.Primary.DefaultClip		= 1		-- Bullets you start with
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "grenade"

SWEP.ProjectileEntity = "tfa_rustalpha_f1_thrown"
SWEP.ProjectileVelocity = 750
SWEP.Primary.ProjectileModel = "models/weapons/yurie_rustalpha/wm-f1-irp.mdl"

SWEP.EventTable = {
	[ACT_VM_DRAW] = {
		{time = 0, type = "sound", value = Sound("YURIE_RUSTALPHA.Draw")}
	},
	[ACT_VM_PULLPIN] = {
		{time = 0, type = "sound", value = Sound("YURIE_RUSTALPHA.F1.Arm")}
	}
}

SWEP.ViewModelBoneMods = {
	["v_grenade_bone_root"] = { scale = Vector(0.7, 0.7, 0.7), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_grenade_bone_ring"] = { scale = Vector(0.735, 0.735, 0.735), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.VMPos = Vector(-1.75, 0, -4.5)
SWEP.VMAng = Vector(6.325, 0, 0)

SWEP.RunSightsPos = Vector(-0.35, 0, -6)
SWEP.RunSightsAng = Vector(0, 0, 0)

SWEP.Offset = {
	Pos = {
		Up = 0,
		Right = 2.5,
		Forward = 3.25,
	},
	Ang = {
		Up = 180,
		Right = 0,
		Forward = 180
	},
	Scale = 1
}