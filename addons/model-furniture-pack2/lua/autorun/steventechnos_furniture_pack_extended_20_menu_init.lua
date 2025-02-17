--This lua file was made with "Physics_Dude's GMod Spawnlist Generator for .mdl's" 
if SERVER then
else
	local rootIcon = "icon16/photo.png"
	local rootTitle = "Steventechno's Furniture Pack Extended!"
	local models = {
		["01 - Bedroom"] = {
			"models/furniturepack3/bedroom/bed.mdl",
			"models/furniturepack3/bedroom/bedroom_table_a.mdl",
			"models/furniturepack3/bedroom/bedroom_table_b.mdl",
			"models/furniturepack3/bedroom/bed_b.mdl",
			"models/furniturepack3/bedroom/bed_c.mdl",
			"models/furniturepack3/bedroom/bed_d.mdl",
			"models/furniturepack3/bedroom/bed_e.mdl",
			"models/furniturepack3/bedroom/drawer_a.mdl",
			"models/furniturepack3/bedroom/drawer_b.mdl",
			"models/furniturepack3/bedroom/drawer_c.mdl",
			"models/furniturepack3/bedroom/drawer_d.mdl",
			"models/furniturepack3/bedroom/drawer_e.mdl",
			"models/furniturepack3/bedroom/drawer_f.mdl",
			"models/furniturepack3/bedroom/drawer_g.mdl",
			"models/furniturepack3/bedroom/drawer_h.mdl",
			"models/furniturepack3/bedroom/drawer_i.mdl",
			"models/furniturepack3/bedroom/drawer_j.mdl",
			"models/furniturepack3/bedroom/drawer_k.mdl",
			"models/furniturepack3/bedroom/drawer_l.mdl",
			"models/furniturepack3/bedroom/full_bed_a.mdl",
			"models/furniturepack3/bedroom/full_bed_b.mdl",
			"models/furniturepack3/bedroom/full_bed_c.mdl",
			"models/furniturepack3/bedroom/full_bed_d.mdl",
			"models/furniturepack3/bedroom/full_bed_e.mdl",
			"models/furniturepack3/bedroom/full_bed_f.mdl",
			"models/furniturepack3/bedroom/full_bed_g.mdl",
			"models/furniturepack3/bedroom/full_bed_h.mdl",
			"models/furniturepack3/bedroom/full_bed_i.mdl",
			"models/furniturepack3/bedroom/full_bed_j.mdl",
			"models/furniturepack3/bedroom/full_bed_k.mdl",
			"models/furniturepack3/bedroom/full_bed_l.mdl",
			"models/furniturepack3/bedroom/full_bed_m.mdl",
			"models/furniturepack3/bedroom/full_bed_n.mdl",
			"models/furniturepack3/bedroom/twin_bed_a.mdl",
			"models/furniturepack3/bedroom/twin_bed_b.mdl",
			"models/furniturepack3/bedroom/twin_bed_c1.mdl",
			"models/furniturepack3/bedroom/twin_bed_c2.mdl",
			"models/furniturepack3/bedroom/twin_bed_d.mdl",
			"models/furniturepack3/bedroom/twin_bed_e.mdl",
			"models/furniturepack3/bedroom/twin_bed_f.mdl",
			"models/furniturepack3/bedroom/twin_bed_g.mdl",
			"models/furniturepack3/bedroom/twin_bed_h.mdl",
			"models/furniturepack3/bedroom/twin_bed_i.mdl",
			"models/furniturepack3/bedroom/twin_bed_j.mdl",
			"models/furniturepack3/bedroom/twin_bed_k.mdl",
			"models/furniturepack3/bedroom/twin_bed_l.mdl",
		},
		
		["02 - Living Room"] = {
			"models/furniturepack3/livingroom/shelf_a.mdl",
			"models/furniturepack3/livingroom/shelf_b.mdl",
			"models/furniturepack3/livingroom/tvstand_a.mdl",
			"models/furniturepack3/livingroom/tvstand_b.mdl",
			"models/furniturepack3/livingroom/tvstand_c.mdl",
			"models/furniturepack3/livingroom/tvstand_d.mdl",
			"models/furniturepack3/livingroom/tvstand_e.mdl",
			"models/furniturepack3/livingroom/tvstand_f.mdl",
			"models/furniturepack3/livingroom/tvstand_g.mdl",
			"models/furniturepack3/livingroom/tvstand_h.mdl",
		},

		["03 - Kitchen"] = {
			"models/furniturepack3/kitchen/counter_a.mdl",
			"models/furniturepack3/kitchen/counter_a_1x2.mdl",
			"models/furniturepack3/kitchen/counter_a_1x4.mdl",
			"models/furniturepack3/kitchen/counter_b.mdl",
			"models/furniturepack3/kitchen/counter_b_1x2.mdl",
			"models/furniturepack3/kitchen/counter_b_1x4.mdl",
			"models/furniturepack3/kitchen/counter_overhead_a.mdl",
			"models/furniturepack3/kitchen/counter_overhead_a_1x2.mdl",
			"models/furniturepack3/kitchen/counter_overhead_a_1x4.mdl",
			"models/furniturepack3/kitchen/counter_overhead_b.mdl",
			"models/furniturepack3/kitchen/counter_overhead_b_1x2.mdl",
			"models/furniturepack3/kitchen/counter_overhead_b_1x4.mdl",
			"models/furniturepack3/kitchen/counter_overhead_half_a.mdl",
			"models/furniturepack3/kitchen/counter_overhead_half_b.mdl",
			"models/furniturepack3/kitchen/counter_overhead_half_c.mdl",
			"models/furniturepack3/kitchen/counter_overhead_sec_a.mdl",
			"models/furniturepack3/kitchen/counter_sec.mdl",
			"models/furniturepack3/kitchen/counter_sec_b.mdl",
			"models/furniturepack3/kitchen/counter_sec_b_inv.mdl",
			"models/furniturepack3/kitchen/counter_sec_overhead_b.mdl",
			"models/furniturepack3/kitchen/counter_sink_a.mdl",
			"models/furniturepack3/kitchen/counter_sink_b.mdl",
			"models/furniturepack3/kitchen/counter_stove.mdl",
		},
		
		["04 - Bathroom"] = {
			"models/furniturepack3/bathroom/shower_a.mdl",
			"models/furniturepack3/bathroom/sink_a.mdl",
			"models/furniturepack3/bathroom/sink_b.mdl",
			"models/furniturepack3/bathroom/toilet_a.mdl",
			"models/furniturepack3/bathroom/tub_a.mdl",
			"models/furniturepack3/bathroom/tub_b.mdl",
		},
		
		["05 - Desks"] = {
			"models/furniturepack3/desks/desk_a.mdl",
			"models/furniturepack3/desks/desk_b.mdl",
			"models/furniturepack3/desks/desk_c.mdl",
			"models/furniturepack3/desks/desk_d.mdl",
			"models/furniturepack3/desks/desk_e.mdl",
			"models/furniturepack3/desks/desk_f.mdl",
			"models/furniturepack3/desks/desk_g_1.mdl",
			"models/furniturepack3/desks/desk_g_2.mdl",
			"models/furniturepack3/desks/desk_h.mdl",
			"models/furniturepack3/desks/desk_i.mdl",
			"models/furniturepack3/desks/desk_j.mdl",
			"models/furniturepack3/desks/desk_k.mdl",
			"models/furniturepack3/desks/desk_l.mdl",
			"models/furniturepack3/desks/desk_m.mdl",
			"models/furniturepack3/desks/desk_n.mdl",
			"models/furniturepack3/desks/desk_o.mdl",
			"models/furniturepack3/desks/desk_p.mdl",
			"models/furniturepack3/desks/desk_q.mdl",
			"models/furniturepack3/desks/desk_r.mdl",
			"models/furniturepack3/desks/desk_s.mdl",
			"models/furniturepack3/desks/desk_t.mdl",
			"models/furniturepack3/desks/desk_u.mdl",
			"models/furniturepack3/desks/desk_v.mdl",
		},
		
		["06 - Coffee Tables"] = {
			"models/furniturepack3/coffee_tables/coffeetable_a.mdl",
			"models/furniturepack3/coffee_tables/coffeetable_b.mdl",
			"models/furniturepack3/coffee_tables/coffeetable_c.mdl",
			"models/furniturepack3/coffee_tables/coffeetable_d.mdl",
			"models/furniturepack3/coffee_tables/coffeetable_e.mdl",
			"models/furniturepack3/coffee_tables/coffeetable_f.mdl",
			"models/furniturepack3/coffee_tables/coffeetable_g.mdl",
			"models/furniturepack3/coffee_tables/coffeetable_h.mdl",
			"models/furniturepack3/coffee_tables/coffeetable_i.mdl",
			"models/furniturepack3/coffee_tables/coffeetable_j.mdl",
			"models/furniturepack3/coffee_tables/coffeetable_k.mdl",
			"models/furniturepack3/coffee_tables/coffeetable_l.mdl",
			"models/furniturepack3/coffee_tables/coffeetable_m.mdl",
			"models/furniturepack3/coffee_tables/coffeetable_n.mdl",
			"models/furniturepack3/coffee_tables/coffeetable_o.mdl",
		},
		
		["07 - Chairs"] = {
			"models/furniturepack3/chairs/chair_a.mdl",
		},

		["08 - Couches"] = {
			"models/furniturepack3/couches/couch_a.mdl",
			"models/furniturepack3/couches/couch_b.mdl",
			"models/furniturepack3/couches/couch_c.mdl",
			"models/furniturepack3/couches/couch_d.mdl",
		},
		
		["09 - Pictures"] = {
			"models/furniturepack3/pictures/frame_a.mdl",
			"models/furniturepack3/pictures/frame_a_big.mdl",
			"models/furniturepack3/pictures/mastersofhardcore.mdl",
			"models/furniturepack3/pictures/posters_101drinking.mdl",
			"models/furniturepack3/pictures/posters_assassinscreed.mdl",
			"models/furniturepack3/pictures/posters_borderlands_1.mdl",
			"models/furniturepack3/pictures/posters_brains.mdl",
			"models/furniturepack3/pictures/posters_brains_zombie.mdl",
			"models/furniturepack3/pictures/posters_coolstory.mdl",
			"models/furniturepack3/pictures/posters_daftpunk.mdl",
			"models/furniturepack3/pictures/posters_deadpool_a.mdl",
			"models/furniturepack3/pictures/posters_doom.mdl",
			"models/furniturepack3/pictures/posters_dragrace.mdl",
			"models/furniturepack3/pictures/posters_equality.mdl",
			"models/furniturepack3/pictures/posters_exploited.mdl",
			"models/furniturepack3/pictures/posters_fallenstars.mdl",
			"models/furniturepack3/pictures/posters_fallout3.mdl",
			"models/furniturepack3/pictures/posters_fartzone.mdl",
			"models/furniturepack3/pictures/posters_fightclub.mdl",
			"models/furniturepack3/pictures/posters_gaming_2.mdl",
			"models/furniturepack3/pictures/posters_gaming_3.mdl",
			"models/furniturepack3/pictures/posters_gaming_4.mdl",
			"models/furniturepack3/pictures/posters_gaming_5.mdl",
			"models/furniturepack3/pictures/posters_gaming_a.mdl",
			"models/furniturepack3/pictures/posters_ghostbusters.mdl",
			"models/furniturepack3/pictures/posters_guitarchords.mdl",
			"models/furniturepack3/pictures/posters_halo_a.mdl",
			"models/furniturepack3/pictures/posters_halo_b.mdl",
			"models/furniturepack3/pictures/posters_hardcore.mdl",
			"models/furniturepack3/pictures/posters_hellrock.mdl",
			"models/furniturepack3/pictures/posters_highwayofthreats.mdl",
			"models/furniturepack3/pictures/posters_housemusic.mdl",
			"models/furniturepack3/pictures/posters_iheartmusic.mdl",
			"models/furniturepack3/pictures/posters_imnotcen.mdl",
			"models/furniturepack3/pictures/posters_internet.mdl",
			"models/furniturepack3/pictures/posters_ipurged.mdl",
			"models/furniturepack3/pictures/posters_keepcalm_a.mdl",
			"models/furniturepack3/pictures/posters_keepcalm_b.mdl",
			"models/furniturepack3/pictures/posters_kungfupanda.mdl",
			"models/furniturepack3/pictures/posters_marajuana.mdl",
			"models/furniturepack3/pictures/posters_mario_a.mdl",
			"models/furniturepack3/pictures/posters_meplusdog.mdl",
			"models/furniturepack3/pictures/posters_metroid_a.mdl",
			"models/furniturepack3/pictures/posters_minecraft_a.mdl",
			"models/furniturepack3/pictures/posters_nosmoking.mdl",
			"models/furniturepack3/pictures/posters_openmind.mdl",
			"models/furniturepack3/pictures/posters_pikachu.mdl",
			"models/furniturepack3/pictures/posters_pokemon.mdl",
			"models/furniturepack3/pictures/posters_portal_a.mdl",
			"models/furniturepack3/pictures/posters_proudbychoice.mdl",
			"models/furniturepack3/pictures/posters_ratchetandclank.mdl",
			"models/furniturepack3/pictures/posters_scarsymm.mdl",
			"models/furniturepack3/pictures/posters_skaters.mdl",
			"models/furniturepack3/pictures/posters_skull.mdl",
			"models/furniturepack3/pictures/posters_skyrim_a.mdl",
			"models/furniturepack3/pictures/posters_slipknot.mdl",
			"models/furniturepack3/pictures/posters_sonic_a.mdl",
			"models/furniturepack3/pictures/posters_spaceballs.mdl",
			"models/furniturepack3/pictures/posters_spaceinvaders_a.mdl",
			"models/furniturepack3/pictures/posters_spaceinvaders_b.mdl",
			"models/furniturepack3/pictures/posters_stevenuniverse.mdl",
			"models/furniturepack3/pictures/posters_stormtrooper.mdl",
			"models/furniturepack3/pictures/posters_successfart.mdl",
			"models/furniturepack3/pictures/posters_suicidejoker.mdl",
			"models/furniturepack3/pictures/posters_tequila.mdl",
			"models/furniturepack3/pictures/posters_terraria_a.mdl",
			"models/furniturepack3/pictures/posters_therewillbeblood.mdl",
			"models/furniturepack3/pictures/posters_tlm.mdl",
			"models/furniturepack3/pictures/posters_tombraider_a.mdl",
			"models/furniturepack3/pictures/posters_twistedmetal.mdl",
			"models/furniturepack3/pictures/posters_wreckitralph.mdl",
			"models/furniturepack3/pictures/posters_yeswecannabis.mdl",
			"models/furniturepack3/pictures/posters_yourfuture.mdl",
			"models/furniturepack3/pictures/posters_zelda_a.mdl",
		}
	}

	hook.Add("PopulateContent", rootTitle, function(pnlContent, tree)

		local RootNode = tree:AddNode(rootTitle, rootIcon)

		local ViewPanel = vgui.Create("ContentContainer", pnlContent)
		ViewPanel:SetVisible(false)
		
		RootNode.DoClick = function()
		
			ViewPanel:Clear(true)
			
			for name, tbl in SortedPairs(models) do
			
				local label = vgui.Create("ContentHeader", container)
				label:SetText(name)

				ViewPanel:Add(label)
			
				for _, v in ipairs(tbl) do
				
					local mdlicon = spawnmenu.GetContentType("model")
					if mdlicon then
						mdlicon(ViewPanel, {model = v})
					end

				end
				
			end
			
			pnlContent:SwitchPanel(ViewPanel)
			
		end

	end)
	
end
