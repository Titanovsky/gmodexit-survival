Ambi.General.CreateModule( 'Restrict' )

Ambi.Restrict.Config.version = 2.0

-- Communication distance ---------------------------------------
Ambi.Restrict.Config.voice_max_distance = 1300
Ambi.Restrict.Config.chat_max_distance = 1300

-- Can ----------------------------------------------------------
Ambi.Restrict.Config.can_suicide = true
Ambi.Restrict.Config.can_noclip = true
Ambi.Restrict.Config.can_death_sound = false
Ambi.Restrict.Config.can_physgun_pickup = true
Ambi.Restrict.Config.can_physgun_reload = false
Ambi.Restrict.Config.can_gravitygun_punt = false
Ambi.Restrict.Config.can_gravitygun_pickup = true

-- Types --------------------------------------------------------
Ambi.Restrict.Config.types = {
    props       = { available = false, limit = 4096 },
    sents       = { available = false, limit = 4096 },
    npcs        = { available = false, limit = 4096 },
    weapons     = { available = false },
    properties  = { available = true }, -- Временно
    tools       = { available = true },
    vehicles    = { available = false },
    effects     = { available = false },
    ragdolls    = { available = false }
}
Ambi.Restrict.Config.props = Ambi.Restrict.Config.props or { }
Ambi.Restrict.Config.ragdolls = Ambi.Restrict.Config.ragdolls or {}
Ambi.Restrict.Config.sents = Ambi.Restrict.Config.sents or {}
Ambi.Restrict.Config.npcs = Ambi.Restrict.Config.npcs or {}
Ambi.Restrict.Config.vehicles = Ambi.Restrict.Config.vehicles or {}
Ambi.Restrict.Config.effects = Ambi.Restrict.Config.effects or {}
Ambi.Restrict.Config.weapons = Ambi.Restrict.Config.weapons or {}
Ambi.Restrict.Config.properties = Ambi.Restrict.Config.properties or {}
Ambi.Restrict.Config.tools = Ambi.Restrict.Config.tools or {}