local function AddWeapon( sClass, sName, nEnd )
	nEnd = nEnd or 2

	local SWEP = {}
	SWEP.Primary = {}

	SWEP.Base = 'tfa_rustalpha_meleebase'

	SWEP.Category = 'Выживашка.Кирки'
	SWEP.Spawnable = true
	SWEP.AdminOnly = false

	SWEP.Author = 'Ambition' -- original: YuRaNnNzZZ
	SWEP.PrintName = sName

	SWEP.Type = 'Melee Weapon'
	SWEP.Type_Displayed = 'Инструмент'

	SWEP.ViewModel = 'models/ambition/survival/weapons/'..sClass..'.mdl'
	SWEP.UseHands = true
	SWEP.WorldModel = 'models/weapons/yurie_rustalpha/wm-pickaxe.mdl'
	SWEP.HoldType = 'melee2'
	SWEP.Slot = 1
	SWEP.Offset = {
		Pos = {
			Up = -3,
			Right = 1,
			Forward = 4
		},
		Ang = {
			Up = 0,
			Right = 10,
			Forward = 180
		},
		Scale = 0.9
	}

	SWEP.ViewModelFOV = 54

	SWEP.Primary.Damage = 60

	SWEP.EventTable = {
		[ACT_VM_DRAW] = {
			{time = 0, type = "sound", value = Sound("YURIE_RUSTALPHA.Draw")}
		},
	}

	SWEP.Primary.MaxCombo = -1
	SWEP.Primary.Attacks = {
		{
			["act"] = ACT_VM_SWINGMISS, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
			["len"] = 16 * 3, -- Trace distance
			["dir"] = Vector(0, 0, 0), -- Trace arc cast
			["dmg"] = SWEP.Primary.Damage, --Damage
			["dmgtype"] = DMG_CLUB, --DMG_SLASH,DMG_CRUSH, etc.
			["delay"] = 0.85, --Delay
			["spr"] = false, --Allow attack while sprinting?
			["snd"] = Sound("YURIE_RUSTALPHA.Melee.Swing"),
			["snd_delay"] = 0.85,
			["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
			["end"] = nEnd, --time before next attack
			["hull"] = 16, --Hullsize
			["direction"] = "F", --Swing dir,
			["hitflesh"] = "",
			["hitworld"] = "",
			["combotime"] = 0
		}
	}

	SWEP.AllowSprintAttack = false
	SWEP.RunSightsPos = Vector(0, 0, 0)
	SWEP.RunSightsAng = Vector(-20, 0, 0)

	-- SWEP.InspectPos = Vector(-3.25, -9, -5.5)
	-- SWEP.InspectAng = Vector(34, -24, 12)

	AMB.RegEntity.Register( sClass, 'weapons', SWEP )
end

AddWeapon( 'surv_pickaxe_stone', '1. Кирка Каменная' )
AddWeapon( 'surv_pickaxe_copper', '2. Кирка Медная', 1.95 )
AddWeapon( 'surv_pickaxe_iron', '3. Кирка Железная', 1.85 )
AddWeapon( 'surv_pickaxe_steel', '4. Кирка Стальная', 1.75 )
AddWeapon( 'surv_pickaxe_titan', '5. Кирка Титановая', 1.55 )

AddWeapon( 'surv_pickaxe_uranium', 'Кирка для Titanium', 0.45 )
--[[
-- old
AddWeapon( 'surv_pickaxe_stone', '1. Кирка Каменная' )
AddWeapon( 'surv_pickaxe_aluminum', '2. Кирка Алюминиевая' )
AddWeapon( 'surv_pickaxe_copper', '3. Кирка Медная' )
AddWeapon( 'surv_pickaxe_zink', '4. Кирка Цинковая' )
AddWeapon( 'surv_pickaxe_iron', '5. Кирка Железная' )
AddWeapon( 'surv_pickaxe_steel', '6. Кирка Стальная' )
AddWeapon( 'surv_pickaxe_titan', '7. Кирка Титановая' )
AddWeapon( 'surv_pickaxe_gold', '8. Кирка Золотая' )
AddWeapon( 'surv_pickaxe_uranium', '9. Кирка Урановая' )
AddWeapon( 'surv_pickaxe_thorium', '10. Кирка Ториумная' )
--]]