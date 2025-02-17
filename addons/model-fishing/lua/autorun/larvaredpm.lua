local function AddPlayerModel( name, model )

	list.Set( "PlayerOptionsModel", name, model )
	player_manager.AddValidModel( name, model )
	
end

list.Set( "PlayerOptionsModel", "Red Larva", "models/player/larva/redlarva.mdl" )
player_manager.AddValidModel( "Red Larva", "models/player/larva/redlarva.mdl" )

-- Don't try to edit this file if you're trying to add new NPCs.
-- Just make a new file and copy the format below.

local Category = "Larva"

local NPC = {
	Name = "Red Larva (Hostile)",
	Class = "npc_combine",
	Category = Category,
	Model = "models/player/larva/redlarva.mdl",
}
list.Set( "NPC", "redlarva_evil", NPC )


-- Don't try to edit this file if you're trying to add new NPCs.
-- Just make a new file and copy the format below.

local Category = "Larva"

local NPC = {
	Name = "Red Larva (Friendly)",
	Class = "npc_citizen",
	Category = Category,
	Model = "models/player/larva/redlarva.mdl",
	KeyValues = { citizentype = CT_UNIQUE },
}
list.Set( "NPC", "redlarvahappy_npc", NPC )
