local function AddPlayerModel( name, model )

	list.Set( "PlayerOptionsModel", name, model )
	player_manager.AddValidModel( name, model )
	
end

list.Set( "PlayerOptionsModel", "Yellow Larva", "models/player/larva/yellowlarva.mdl" )
player_manager.AddValidModel( "Yellow Larva", "models/player/larva/yellowlarva.mdl" )

-- Don't try to edit this file if you're trying to add new NPCs.
-- Just make a new file and copy the format below.

local Category = "Larva"

local NPC = {
	Name = "Yellow Larva (Hostile)",
	Class = "npc_combine",
	Category = Category,
	Model = "models/player/larva/yellowlarva.mdl",
}
list.Set( "NPC", "yellowlarvaangry_evil", NPC )


-- Don't try to edit this file if you're trying to add new NPCs.
-- Just make a new file and copy the format below.

local Category = "Larva"

local NPC = {
	Name = "Yellow Larva (Friendly)",
	Class = "npc_citizen",
	Category = Category,
	Model = "models/player/larva/yellowlarva.mdl",
	KeyValues = { citizentype = CT_UNIQUE },
}
list.Set( "NPC", "yellowlarvahappy_npc", NPC )
