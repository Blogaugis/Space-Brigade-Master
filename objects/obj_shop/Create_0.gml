hover = 0;
shop = "";
click = 0;
click2 = 0;
discount = 0;
construction_started = 0;
eta = 0;
target_comp = obj_controller.new_vehicles;

slate_panel =  new DataSlate();
scroll_point=0;
tooltip_show = 0;
tooltip = "";
tooltip_stat1 = 0;
tooltip_stat2 = 0;
tooltip_stat3 = 0;
tooltip_stat4 = 0;
tooltip_other = "";
last_item = "";
forge_master = scr_role_count("Forge Master", "", "units");
if (array_length(forge_master)>0){
    forge_master=forge_master[0];
} else {
    forge_master="none";
}
mechanicus_modifier = (((obj_controller.disposition[eFACTION.Mechanicus]-50)/200)*-1)+1
var research = obj_controller.production_research;
shop = "equipment";
/*if (obj_controller.menu=55) then shop="equipment";
if (obj_controller.menu=56) then shop="vehicles";
if (obj_controller.menu=57) then shop="warships";
if (obj_controller.menu=58) then shop="equipment2";*/
if (instance_number(obj_shop) > 1) {
    var war;
    war = instance_nearest(0, 0, obj_shop);
    shop = war.shop;
    with(war) {
        instance_destroy();
    }
    x = 0;
    y = 0;
}

var research = obj_controller.production_research;
var research_pathways = obj_controller.production_research_pathways;
var i, rene;
i = -1;
rene = 0;
repeat(80) {
    i += 1;
    item[i] = "";
    x_mod[i] = 0;
    item_stocked[i] = 0;
    mc_stocked[i] = 0;
    item_cost[i] = 0;
    nobuy[i] = 0;
    forge_cost[i]=0;
    tooltip_overide[i]=0;
}
if (obj_controller.faction_status[eFACTION.Imperium] = "War") {
    rene = 1;
    with(obj_temp6) {
        instance_destroy();
    }
    with(obj_star) {
        var u;
        u = 0;
        repeat(4) {
            u += 1;
            if (p_type[u] = "Forge") and(p_owner[u] = 1) then instance_create(x, y, obj_temp6);
        }
    }
    if (instance_exists(obj_temp6)) then rene = 0;
    with(obj_temp6) {
        instance_destroy();
    }
}

tab_buttons = {
    "equipment":new MainMenuButton(spr_ui_but_3, spr_ui_hov_3),
    "armour":new MainMenuButton(spr_ui_but_3, spr_ui_hov_3),
    "vehicles":new MainMenuButton(spr_ui_but_3, spr_ui_hov_3),
    "ships":new MainMenuButton(spr_ui_but_3, spr_ui_hov_3),
}  
var require_tool_tip = "requires: #"
if (shop = "equipment") {
    i = 0;
	// Tribal shop weapons
    i += 1;
    item[i] = "Wooden Club";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 1;
    forge_cost[i] = 1;
    i += 1;
    item[i] = "Wooden Spear";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 1;
    forge_cost[i] = 1;
    i += 1;
    item[i] = "Ritual Stone Knife";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 5;
    if (research.psi[0]>0){
    forge_cost[i] = 100;
    }
	// Early Conventional Weapons
	i += 1;
    item[i] = "Iron Sword";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 1;
	if (research.metallurgy[0]>0){
		forge_cost[i] = 6;
	}
	// Late Conventional Melee Weapons
	i += 1;
    item[i] = "Steel Sword";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 1;
	if (research.metallurgy[0]>1){
		forge_cost[i] = 12;
	}
	// Weapons of 40k
    i += 1;
    item[i] = "Combat Knife";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 1;
	if (research.metallurgy[0]>1){
    forge_cost[i] = 10;
	}
    i += 1;
    item[i] = "Chainsword";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 5;
	if (research.chain[0]>0){
    forge_cost[i] = 25;
	}
    i += 1;
    item[i] = "Chainaxe";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 6;
	if (research.chain[0]>0){
    forge_cost[i] = 30;
	}
    i += 1;
    x_mod[i] = 9;
    item[i] = "Eviscerator";
    if (research.chain[0]>0){
        forge_cost[i] = 150;
    }
    item_stocked[i] = scr_item_count(item[i]);
    nobuy[i] = 1;

    i += 1;
    item[i] = "Power Axe";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 30;
    if (research.power_fields[0]>0){
        forge_cost[i] = 150;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Power Sword";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 25;
    if (research.power_fields[0]>0){
        forge_cost[i] = 125;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
	i += 1;
    item[i] = "Power Spear";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 30;
    if (research.power_fields[0]>0){
        forge_cost[i] = 150;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
	i += 1;
    item[i] = "Crozius Arcanum";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 75;
    if (research.power_fields[0]>0){
        forge_cost[i] = 150;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Power Fist";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 30;
    if (research.power_fields[0]>0){
        forge_cost[i] = 150;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
	 i += 1;
    item[i] = "Boltstorm Gauntlet";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 90;
    if (research.power_fields[0]>0&& research.bolt[0]>=2){
        forge_cost[i] = 300;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
	/*i += 1;
	item[i] = "Executioner Power Axe";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 100;
    if (research.power_fields[0]>0){
        forge_cost[i] = 300;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
		forge_cost[i] = 0;
    }*/
    i += 1;
    item[i] = "Power Mace";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 50;
    if (research.power_fields[0]>0){
        forge_cost[i] = 140;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    if (global.chapter_name == "Dark Angels"){
        i += 1;
        item[i] = "Mace of Absolution";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 70;
        if (research.power_fields[0]>0){
            forge_cost[i] = 160;
        }
    }
    i += 1;
    item[i] = "Lightning Claw";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 35;
    if (research.power_fields[0]>0){
        forge_cost[i] = 150;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Chainfist";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 35;
    if (research.power_fields[0]>0 && research.chain[0]>0){
        forge_cost[i] = 150;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Force Staff";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 80;
    if (research.psi[0]>1){
        forge_cost[i] = 500;
        item_cost[i] = 50;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
	i += 1;
    item[i] = "Force Sword";
    item_stocked[i] = scr_item_count(item[i]);
    if (research.psi[0]>1){
        forge_cost[i] = 400;
    }
    item_cost[i] = 55;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
	i += 1;
    item[i] = "Force Axe";
    item_stocked[i] = scr_item_count(item[i]);
    if (research.psi[0]>1){
        forge_cost[i] = 450;
    }
    item_cost[i] = 60;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Thunder Hammer";
    item_cost[i] = 50;
    if (research.power_fields[0]>0){
        forge_cost[i] = 500;
    }
    item_stocked[i] = scr_item_count(item[i]);
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Heavy Thunder Hammer";
    if (research.power_fields[0]>0){
        forge_cost[i] = 750;
    }    
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 135;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Lascutter";
    item_cost[i] = 5;
	if (research.plastics[0]>0){
    forge_cost[i] = 50;
	}
    item_stocked[i] = scr_item_count(item[i]);
    i += 1;
    x_mod[i] = 9;
    item[i] = "Boarding Shield";
    item_cost[i] = 2;
	if (research.metallurgy[0]>1){
    forge_cost[i] = 20;
	}
    item_stocked[i] = scr_item_count(item[i]);
    i += 1;
    x_mod[i] = 9;
    item[i] = "Storm Shield";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 15;
    if (research.power_fields[0]>0){
        forge_cost[i] = 150;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Company Standard";
    item_cost[i] = 250;
    forge_cost[i] = 2500;
    item_stocked[i] = scr_item_count(item[i]);

	// Tribal ranged weapons
    i += 1;
    item[i] = "Bow";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 1;
    forge_cost[i] = 10;
    i += 1;
    item[i] = "Sling";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 1;
    forge_cost[i] = 10;
	// Early Conventional Ranged Weapons
	i += 1;
    item[i] = "Crossbow";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 1;
	if (research.mechanisms[0]>0){
		forge_cost[i] = 10;
	} else {
		tooltip_overide[i] = $"{require_tool_tip} {research_pathways.mechanisms[0][0]}"
	}
	// Late Conventional Ranged Weapons
	i += 1;
    item[i] = "Hellgun";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 1;
	if (research.plastics[0]>0){
		forge_cost[i] = 10;
	}
	// Weapons of 40k
    i += 1;
    item[i] = "Bolt Pistol";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 5;
	if (research.bolt[0]>1){
        forge_cost[i] = 50;
    }
    i += 1;
    item[i] = "Bolter";
    item_cost[i] = 7;
	if (research.bolt[0]>1){
        forge_cost[i] = 75;
    }
    item_stocked[i] = scr_item_count(item[i]);
    i += 1;
    item[i] = "Stalker Pattern Bolter";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 8;
    if (research.bolt[0]>1){
        forge_cost[i] = 90;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Combiflamer";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 12;
    forge_cost[i] = 110;
    if (research.bolt[0]<3 || research.flame[0]<1) then forge_cost[i] = 0;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Combiplasma";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 110;
    forge_cost[i] = 450;
    if (research.bolt[0]<3 || research.plasma[0]<1) then forge_cost[i] = 0;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Combigrav";
    item_stocked[i] = scr_item_count(item[i]);
    nobuy[i] = 1; // item_cost[i] = 110;
    forge_cost[i] = 450;
    if (research.bolt[0]<3 || research.grav[0]<1) then forge_cost[i] = 0;
    i += 1;
    x_mod[i] = 9;
    item[i] = "Combimelta";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 40;
    forge_cost[i] = 350;
    if (research.bolt[0]<3 || research.melta[0]<1) then forge_cost[i] = 0;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Heavy Bolter";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 20;
    if (research.bolt[0]>=1) then forge_cost[i] = 200;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Storm Bolter";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 10;
	if (research.bolt[0]>=2) then forge_cost[i] = 110;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
	i += 1;
    item[i] = "Infernus Pistol";
    forge_cost[i] = 100;
    if (research.flame[0]<1) then forge_cost[i] = 0;
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 12;
    i += 1;
    item[i] = "Hand Flamer";
    forge_cost[i] = 35;
    if (research.flame[0]<1) then forge_cost[i] = 0;
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 7;
    i += 1;
    item[i] = "Flamer";
    item_cost[i] = 7;
    forge_cost[i] = 35;
    if (research.flame[0]<1) then forge_cost[i] = 0;
    item_stocked[i] = scr_item_count(item[i]);
    i += 1;
    item[i] = "Heavy Flamer";
    item_cost[i] = 15;
    forge_cost[i] = 150;
     if (research.flame[0]<1) then forge_cost[i] = 0;
    item_stocked[i] = scr_item_count(item[i]);
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }

    i += 1;
    item[i] = "Incinerator";
    item_stocked[i] = scr_item_count(item[i]);
    nobuy[i] = 1;
	forge_cost[i] = 150;
	if (research.flame[0]<1) then forge_cost[i] = 0;
    // i += 1;
    // item[i] = "Integrated Bolter";
    // item_stocked[i] = scr_item_count(item[i]);
    // item_cost[i] = 120;

    i += 1;
    item[i] = "Meltagun";
    item_cost[i] = 15;
    forge_cost[i] = 160;
    if (research.melta[0]<1) then forge_cost[i] = 0;
    item_stocked[i] = scr_item_count(item[i]);
    i += 1;
    item[i] = "Multi-Melta";
    item_cost[i] = 30;
    forge_cost[i] = 350;
     if (research.melta[0]<1) then forge_cost[i] = 0;
    item_stocked[i] = scr_item_count(item[i]);
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Plasma Pistol";
    item_cost[i] = 50;
    forge_cost[i] = 600;
     if (research.plasma[0]<1) then forge_cost[i] = 0;
    item_stocked[i] = scr_item_count(item[i]);
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Plasma Gun";
    item_cost[i] = 75;
    forge_cost[i] = 850;
    if (research.plasma[0]<1) then forge_cost[i] = 0;
    item_stocked[i] = scr_item_count(item[i]);
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Plasma Cannon";
    item_cost[i] = 100;
    forge_cost[i] = 950;
    if (research.plasma[0]<1) then forge_cost[i] = 0;
    item_stocked[i] = scr_item_count(item[i]);
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Grav-Pistol";
    forge_cost[i] = 250;
     if (research.grav[0]<1) then forge_cost[i] = 0;
    item_stocked[i] = scr_item_count(item[i]);
    nobuy[i] = 1; // item_cost[i] = 60
    i += 1;
    item[i] = "Grav-Gun";
    forge_cost[i] = 350;
    if (research.grav[0]<1) then forge_cost[i] = 0;
    item_stocked[i] = scr_item_count(item[i]);
    nobuy[i] = 1; // item_cost[i] = 100;
    i += 1;
    item[i] = "Grav-Cannon";
    forge_cost[i] = 600;
    if (research.grav[0]<1) then forge_cost[i] = 0;
    item_stocked[i] = scr_item_count(item[i]);
    nobuy[i] = 1; // item_cost[i] = 300;
    i += 1;
    x_mod[i] = 9;
    item[i] = "Archeotech Laspistol";
    item_stocked[i] = scr_item_count(item[i]);
    nobuy[i] = 1;
    i += 1;
    x_mod[i] = 9;
    item[i] = "Hellrifle";
    item_stocked[i] = scr_item_count(item[i]);
    nobuy[i] = 1;
    i += 1;
    x_mod[i] = 9;
    item[i] = "Webber";
    item_stocked[i] = scr_item_count(item[i]);
    nobuy[i] = 1;
    i += 1;
    item[i] = "Sniper Rifle";
    item_cost[i] = 8;
	if (research.mechnchem[0] > 0 && research.metallurgy[0] > 1){
    forge_cost[i] = 75;
	}
    item_stocked[i] = scr_item_count(item[i]);
    i += 1;
    item[i] = "Missile Launcher";
    item_cost[i] = 25;
	if (research.mechnchem[0] > 0 && research.metallurgy[0] > 1){
    forge_cost[i] = 250;
	}
    item_stocked[i] = scr_item_count(item[i]);
    i += 1;
    item[i] = "Lascannon";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 25;
    forge_cost[i] = 250;
    if (research.las[0]<1) then forge_cost[i] = 0;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
	i += 1;
	//Debug space for 30k weapons
       //Volkite Pack
        item[i] = "Volkite Serpenta";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        nobuy[i] = 1;
		i += 1;
        nobuy[i] = 1;
        item[i] = "Volkite Charger";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        i += 1;
        nobuy[i] = 1;
        item[i] = "Volkite Caliver";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        i += 1;
        nobuy[i] = 1;
        item[i] ="Volkite Culverin";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        i += 1;
        nobuy[i] = 1;
        //Bolt Pack
        item[i] = "Phobos Bolt Pistol";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        i += 1;
        nobuy[i] = 1;
        item[i] = "Phobos Bolter";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        i += 1;
        nobuy[i] = 1;
        item[i] = "Mars Heavy Bolter";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        i += 1;
        nobuy[i] = 1;
        item[i] = "Tigris Combi Bolter";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        i += 1;
        nobuy[i] = 1;
        //Plasma Pack
        item[i] = "Ryza Plasma Gun";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        i += 1;
        nobuy[i] = 1;
        item[i] = "Ryza Plasma Pistol";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        i += 1;
        nobuy[i] = 1;
        item[i] = "Mars Plasma Cannon";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        i += 1;
        nobuy[i] = 1;
		item[i] = "Primus Melta Gun";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        i += 1;
        nobuy[i] = 1;
		item[i] = "Proteus Multi-Melta";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        i += 1;
        nobuy[i] = 1;
		item[i] = "Phaestos Flamer";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        i += 1;
        nobuy[i] = 1;
		item[i] = "Power Scythe";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        i += 1;
        nobuy[i] = 1;
		item[i] = "Ryza Lascannon";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        i += 1;
        nobuy[i] = 1;
		item[i] = "Cthon Autocannon";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        i += 1;
		item[i] = "Contemptor Dreadnought";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
		nobuy[i]=1
        i += 1;
		nobuy[i]=1;
		item[i] = "Twin-linked Volkite Culverins";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
        i += 1;
		nobuy[i]=1;
		item[i] = "Contemptor CCW";
        item_stocked[i] = scr_item_count(item[i]);
        item_cost[i] = 0;
        forge_cost[i] = 0;
		
    var mc = 0;
    repeat(i) {
        mc++;
        if (item[mc] != ""){
            mc_stocked[mc] = scr_item_count(item[mc], "master_crafted");
        }
    }
}

if (shop = "equipment2") {
    i = 0;
	// Tribal armour
    i += 1;
    item[i] = "Tribalwear";
    item_stocked[i] = scr_item_count(item[i]);
    forge_cost[i] = 25;
    item_cost[i] = 1;
	// Early conventional armour
	i += 1;
    item[i] = "Chainmail";
    item_stocked[i] = scr_item_count(item[i]);
	if (research.metallurgy[0] > 0){
		forge_cost[i] = 50;
	} else {
		tooltip_overide[i] = $"{require_tool_tip} {research_pathways.metallurgy[0][0]}"
    }
    item_cost[i] = 2;
	// Late conventional Armour
	i += 1;
    item[i] = "Plate Armour";
    item_stocked[i] = scr_item_count(item[i]);
	if (research.metallurgy[0] > 1){
		forge_cost[i] = 75;
	} else {
		tooltip_overide[i] = $"{require_tool_tip} {research_pathways.metallurgy[0][1]}"
    }
    item_cost[i] = 4;

	i += 1;
    item[i] = "Flak Armour";
    item_stocked[i] = scr_item_count(item[i]);
	if (research.plastics[0] > 0){
		forge_cost[i] = 100;
	} else {
		tooltip_overide[i] = $"{require_tool_tip} {research_pathways.plastics[0][0]}"
    }
    item_cost[i] = 4;
	// 40k armour
	i += 1;
    item[i] = "Scout Armour";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 10;
	if (research.plastics[0] > 0){
    forge_cost[i] = 150;
	}
	i += 1;
    item[i] = "MK1 Thunder Armour";
    item_stocked[i] = scr_item_count("MK1 Thunder Armour");
    nobuy[i] = 1;
	if (research.armourmk1[0] > 0){
	forge_cost[i] = 300;
	}
	i += 1;
    item[i] = "MK2 Crusade Armour";
    item_stocked[i] = scr_item_count("MK2 Crusade Armour");
    nobuy[i] = 1;
	if (research.armourmk2[0] > 0){
	forge_cost[i] = 350;
	}
    i += 1;
    item[i] = "MK3 Iron Armour";
    item_stocked[i] = scr_item_count("MK3 Iron Armour");
    nobuy[i] = 1;
     if (obj_controller.in_forge){
        if (research.armourmk3[0] > 0){
            forge_cost[i] = 750;
        }
    }

    i += 1;
    var mk_4_able = false;
    var mk_4_tool_tip = ""
    item[i] = "MK4 Maximus";
    item_stocked[i] = scr_item_count("MK4 Maximus");
    if (obj_controller.in_forge){
        if (research.armourmk4[0] > 0){
            forge_cost[i] = 750;
            mk_4_able=true;
        }
    }
    nobuy[i] = 1;
    i += 1;
    item[i] = "MK5 Heresy";
    item_stocked[i] = scr_item_count("MK5 Heresy");
    item_cost[i] = 25;
	if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
	if (research.armourmk5[0] > 0){
    forge_cost[i] = 300;
	}
    i += 1;
    item[i] = "MK6 Corvus";
    item_stocked[i] = scr_item_count("MK6 Corvus");
    item_cost[i] = 50;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    if (obj_controller.in_forge){
        if (research.armourmk6[0] > 0){
            forge_cost[i] = 400;
        }
    }
    i += 1;
    item[i] = "MK7 Aquila";
    item_stocked[i] = scr_item_count("MK7 Aquila");
    item_cost[i] = 30;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    if (obj_controller.in_forge){
        if (research.armourmk7[0] > 0){
            forge_cost[i] = 325;
        }
    }
    i += 1;
    item[i] = "MK8 Errant";
    item_stocked[i] = scr_item_count("MK8 Errant");
    item_cost[i] = 100;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    if (obj_controller.in_forge){
        if (research.armourmk8[0] > 0){
            forge_cost[i] = 400;
        }
    }
	i += 1;
    item[i] = "Power Armour";
    item_stocked[i] = scr_item_count("Power Armour");
    item_cost[i] = 25;
	if (research.mechnchem[0] > 0 && research.metallurgy[0] > 1){
    forge_cost[i] = 375;
	}
    i += 1;
    item[i] = "Artificer Armour";
    item_stocked[i] = scr_item_count("Artificer Armour");
    nobuy[i] = 1;
	if (research.armourmk4[0] > 0){
    forge_cost[i] = 1000;
	}

    i += 1;
    item[i] = "Early Terminator Armour";
    item_stocked[i] = scr_item_count("Early Terminator Armour");
    item_cost[i] = 75;
	if (research.hvyarmcon[0] > 0){
    forge_cost[i] = 750;
	}
	i += 1;
    item[i] = "Cataphractii Pattern Terminator";
    item_stocked[i] = scr_item_count("Cataphractii Pattern Terminator");
    nobuy[i] = 1; // item_cost[i] = 750;
	if (research.hvyarmcon[0] > 0 && research.armourmk4[0] > 0) {
        forge_cost[i] = 3500;
    }
	i += 1;
    item[i] = "Tartaros";
    item_stocked[i] = scr_item_count("Tartaros");
    nobuy[i] = 1; // && obj_controller.stc_wargear >= 6
	if (research.hvyarmcon[0] > 0 && research.armourmk3[0] > 0) {
    forge_cost[i] = 2500;
	}
    i += 1;
    item[i] = "Terminator Armour";
    item_stocked[i] = scr_item_count("Terminator Armour");
    item_cost[i] = 275;
	if (research.hvyarmcon[0] > 0 && research.armourmk8[0] > 0) {
    forge_cost[i] = 2000;
	}

	i += 1;
    item[i] = "Animal Mount";
    item_stocked[i] = scr_item_count(item[i]);
	if (research.animal[0] > 0){
		forge_cost[i] = 100;
	} else {
		tooltip_overide[i] = $"{require_tool_tip} {research_pathways.animal[0][0]}"
    }
    item_cost[i] = 5;

    i += 1;
    x_mod[i] = 9;
    item[i] = "Jump Pack";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 25;
	if (research.mechnchem[0] > 0 && research.metallurgy[0] > 1){
    forge_cost[i] = 250;
	}
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }

    i += 1;
    x_mod[i] = 9;
    nobuy[i] = 1;
	item[i] = "Serpha Jump Pack";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 0;
    forge_cost[i] = 0;

    i += 1;
    x_mod[i] = 9;
    item[i] = "Heavy Weapons Pack";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 10;
	if (research.mechnchem[0] > 0 && research.metallurgy[0] > 1){
    forge_cost[i] = 100;
	}
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }

    i += 1;
    x_mod[i] = 9;
    item[i] = "Servo-harness";
    item_stocked[i] = scr_item_count(item[i]);
	if (research.mechnchem[0] > 0 && research.metallurgy[0] > 1){
    forge_cost[i] = 1500;
	}
	if (obj_controller.stc_wargear >= 6) {
		forge_cost[i] = 400;
    }
    item_cost[i] = 150;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }

    i += 1;
    x_mod[i] = 9;
    item[i] = "Conversion Beamer Pack";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 180;
	if (research.grav[0]>=1 && research.flame[0]>=1 && research.las[0]>=1 && research.plasma[0]>=1 ) then forge_cost[i] = 950;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }

// Tribal tools
    i += 1;
    x_mod[i] = 9;
    item[i] = "Primitive Tools";
    item_stocked[i] = scr_item_count(item[i]);
    forge_cost[i] = 50;
    item_cost[i] = 2;
    i += 1;
	x_mod[i] = 9;
    item[i] = "Stone Hammer";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 0;
	nobuy[i] = 1;
    forge_cost[i] = 0;
// Conventional tools
	i += 1;
    x_mod[i] = 9;
    item[i] = "Combi-Tool";
    item_stocked[i] = scr_item_count(item[i]);
	if (research.metallurgy[0]>0){
		forge_cost[i] = 75;
	}
    item_cost[i] = 5;
	i += 1;
	x_mod[i] = 9;
    item[i] = "Iron Hammer";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 0;
	nobuy[i] = 1;
    forge_cost[i] = 0;
// 40k items
    i += 1;
    x_mod[i] = 9;
    item[i] = "Servo-arm";
    item_stocked[i] = scr_item_count(item[i]);
    // Requires mechnchem progression
    if (research.mechnchem[0] > 0) {
        forge_cost[i] = 250;
    }
    item_cost[i] = 25;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
// Tribal Medicine
    i += 1;
    x_mod[i] = 9;
    item[i] = "Medical Herb Pack";
    forge_cost[i] = 25; // It in theory should be easier to instruct a marine/serf/other subject to gather them than purchase with requisition
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 5;
// Conventional Medical Tech
	i += 1;
    x_mod[i] = 9;
    item[i] = "Sororitas Medkit";
	if (research.chemistry[0]>0){
		forge_cost[i] = 50;
	} else {
		tooltip_overide[i] = $"{require_tool_tip} {research_pathways.chemistry[0][0]}"
	}
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 5;
// 40k Medical
    i += 1;
    x_mod[i] = 9;
    item[i] = "Bionics";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 5;
    if (research.mechnchem[0] > 0) {
        forge_cost[i] = 25;
    } else {
        forge_cost[i] = 0;
        tooltip_overide[i] = $"{require_tool_tip} {research_pathways.mechnchem[0][0]}";
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Narthecium";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 25;
    if (research.mechnchem[0] > 0) {
        forge_cost[i] = 250;
    } else {
        forge_cost[i] = 0;
        tooltip_overide[i] = $"{require_tool_tip} {research_pathways.mechnchem[0][0]}";
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
// Tribal psychic accessories
    i += 1;
    x_mod[i] = 9;
    item[i] = "Psychic Accessories";
    if (research.psi[0]>0){
    forge_cost[i] = 100;
    }
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 10;
// 40k accessories
    i += 1;
    x_mod[i] = 9;
    item[i] = "Psychic Hood";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 100;
    if (research.psi[0]>1 && research.metallurgy[0] > 0){ 
    forge_cost[i] = 1000;
    } else { forge_cost[i] = 0;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
// Tribal shield
    i += 1;
    x_mod[i] = 9;
    item[i] = "Wooden Shield";
    forge_cost[i] = 10;
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 1;
// 40k tools
    i += 1;
    x_mod[i] = 9;
    item[i] = "Combat Shield";
	if (research.metallurgy[0]>1){
    forge_cost[i] = 75;
	}
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 15;
    i += 1;
    x_mod[i] = 9;
    item[i] = "Rosarius";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 100;
	if (research.power_fields[0] > 0) {
    forge_cost[i] = 1000; 
	}
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Iron Halo";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 300;
	if (research.power_fields[0] > 0) {
    forge_cost[i] = 2000; // TODO: Lock beyond further research, add more power field tech tiers
	}
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Plasma Bomb";
    item_cost[i] = 175;
	if (research.mechnchem[0] > 0) {
    forge_cost[i] = 1750;
	}
    item_stocked[i] = scr_item_count(item[i]);

    i += 1;
    x_mod[i] = 9;
    item[i] = "Exterminatus";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 2500;
	if (research.mechnchem[0] > 0) { // TODO: lock beyond more advanced research
	forge_cost[i] = 10000;
	}

    i += 1;
    x_mod[i] = 9;
    item[i] = "Gene Pod Incubator";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 25;   
    if (research.mechnchem[0] > 0) {
        forge_cost[i] = 100;
    } else {
        forge_cost[i] = 0;
        tooltip_overide[i] = $"{require_tool_tip} {research_pathways.mechnchem[0][0]}";
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }

    mc=0;
    repeat(i) {
        mc += 1;
        if (item[mc] != ""){
            mc_stocked[i] = scr_item_count(item[mc], "master_crafted");
        }
    }    

}

var player_hanger = min(array_length(obj_controller.player_forge_data.vehicle_hanger),1);
if (shop = "vehicles") {
    i = 0;
    i += 1;
    item[i] = "Dreadnought";
    item_stocked[i] = scr_item_count(item[i]);
    nobuy[i] = 1; // && obj_controller.stc_wargear >= 6
	if (research.dread[0] > 0) {
    forge_cost[i] = 3000;
	}

    i += 1;
    x_mod[i] = 9;
    item[i] = "Close Combat Weapon";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 50;
	if (research.dread[0] > 0) {
	forge_cost[i] = 500;
	}
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Bike";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 35;
    if (research.combustion[0] > 0) {
        forge_cost[i] = 250;
    } else {
        forge_cost[i] = 0;
        tooltip_overide[i] = $"{require_tool_tip} {research_pathways.combustion[0][0]}";
    }
    i += 1;
    item[i] = "Rhino";
    item_stocked[i] = scr_vehicle_count(item[i], "");
    item_cost[i] = 120;
	if (obj_controller.stc_vehicles >= 2) {
    forge_cost[i] = 2000;
	}
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Predator";
    item_stocked[i] = scr_vehicle_count(item[i], "");
    item_cost[i] = 240;
	if (obj_controller.stc_vehicles >= 3) {
    forge_cost[i] = 3000;
	}
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Autocannon Turret";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 30;
	if (research.bolt[0]> 1) then forge_cost[i] = 250;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Twin Linked Lascannon Turret";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 60;
	if (research.las[0]>1) then 	forge_cost[i] = 400;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Heavy Bolter Sponsons";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 38;
	if (research.bolt[0]> 0) then forge_cost[i] = 380;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Heavy Flamer Sponsons";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 25;
	forge_cost[i] = 250;
    if (research.flame[0] < 1) then forge_cost[i] = 0;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Lascannon Sponsons";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 60;
	if (research.las[0] > 0) then forge_cost[i] = 300;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Land Raider";
    item_stocked[i] = scr_vehicle_count(item[i], "");
    nobuy[i] = 1;
    if (obj_controller.stc_vehicles >= 6) {
        nobuy[i] = 0;
        item_cost[i] = 500;
        forge_cost[i] = 5500;
    }
    if (rene=1) {
        nobuy[i]=1;
        item_cost[i]=0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Twin Linked Heavy Bolter Mount";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 28;
	if (research.bolt[0]> 1) then forge_cost[i] = 250;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Quad Linked Heavy Bolter Sponsons";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 60;
	if (research.bolt[0]> 1) then 	forge_cost[i] = 350;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Twin Linked Assault Cannon Mount";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 60;
	if (research.bolt[0]> 1) then 	forge_cost[i] = 400;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Flamestorm Cannon Sponsons";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 100;
	forge_cost[i] = 300;
    if (research.flame[0] < 1) then forge_cost[i] = 0;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Hurricane Bolter Sponsons";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 70;
	if (research.bolt[0] > 1) then 	forge_cost[i] = 300;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Twin Linked Lascannon Sponsons";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 120;
	if (research.las[0]>1) then forge_cost[i] = 250;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Whirlwind";
    item_stocked[i] = scr_vehicle_count(item[i], "");
    item_cost[i] = 180;
	if (obj_controller.stc_vehicles >= 3) {
	forge_cost[i] = 2500;
	}
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "HK Missile";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 10;
	if (obj_controller.stc_vehicles >= 4) {
	forge_cost[i] = 250;
	}
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Land Speeder";
    item_stocked[i] = scr_vehicle_count(item[i]);
    nobuy[i] = 1;
	if (obj_controller.stc_vehicles >= 6) {
    nobuy[i] = 0;
    item_cost[i] = 120;
	forge_cost[i] = 700;
    }

    i += 1;
    x_mod[i] = 9;
    item[i] = "Twin Linked Bolters";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 8;
	if (research.bolt[0]>= 2) then forge_cost[i] = 150;
    i += 1;
    x_mod[i] = 9;
    item[i] = "Twin Linked Heavy Bolter";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 110;
	if (research.bolt[0]> 1) then 	forge_cost[i] = 400;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Twin Linked Lascannon";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 110;
	if (research.las[0]>0) then forge_cost[i] = 500;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Autocannon";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 80;
	if (research.bolt[0]> 1) then 	forge_cost[i] = 350;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Inferno Cannon";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 65;
	if (research.flame[0]>0){
	forge_cost[i] = 350;
	}
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Dreadnought Lightning Claw";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 185;
	if (research.dread[0] > 0) {
    forge_cost[i] = 650;
	}
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Assault Cannon";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 75;
	if (research.bolt[0]> 1) {
	forge_cost[i] = 350;
	}
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Dreadnought Power Claw";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 150;
	if (research.dread[0] > 0) {
	forge_cost[i] = 600;
	}
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Whirlwind Missiles";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 90;
	if (obj_controller.stc_vehicles >= 6) {
	forge_cost[i] = 350;
	}
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Heavy Conversion Beam Projector";
    item_stocked[i] = scr_item_count(item[i]);
	if (obj_controller.stc_vehicles >= 6) {
	forge_cost[i] = 500;
	}
	nobuy[i] = 1;
    if (rene = 1) {
        item_cost[i] = 0;
    }
	i += 1;
    x_mod[i] = 9;
    item[i] = "Plasma Destroyer Turret";
    item_stocked[i] = scr_item_count(item[i]);
	if (research.plasma[0]>0){
    forge_cost[i] = 450;
	}
	nobuy[i] = 1;
    if (rene = 1) {
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Flamestorm Cannon Turret";
    item_stocked[i] = scr_item_count(item[i]);
	if (research.flame[0]>0){
	forge_cost[i] = 450;
	}
	nobuy[i] = 1;
    if (rene = 1) {
        item_cost[i] = 0;
    }
	i += 1;
    x_mod[i] = 9;
    item[i] = "Magna-Melta Turret";
    item_stocked[i] = scr_item_count(item[i]);
	if (research.melta[0]>0){
	forge_cost[i] = 450;
	}
	nobuy[i] = 1;
    if (rene = 1) {
        item_cost[i] = 0;
    }
	i += 1;
    x_mod[i] = 9;
    item[i] = "Neutron Blaster Turret";
    item_stocked[i] = scr_item_count(item[i]);
	if (obj_controller.stc_vehicles >= 6) {
	forge_cost[i] = 450;
	}
	nobuy[i] = 1;
    if (rene = 1) {
        item_cost[i] = 0;
    }
	i += 1;
    x_mod[i] = 9;
    item[i] = "Volkite Saker Turret";
    item_stocked[i] = scr_item_count(item[i]);
	if (obj_controller.stc_vehicles >= 6) {
	forge_cost[i] = 400;
	}
	nobuy[i] = 1;
    if (rene = 1) {
        item_cost[i] = 0;
    }
	i += 1;
    x_mod[i] = 9;
    item[i] = "Volkite Culverin Sponsons";
    item_stocked[i] = scr_item_count(item[i]);
	if (obj_controller.stc_vehicles >= 6) {
	forge_cost[i] = 400;
	}
	nobuy[i] = 1;
    if (rene = 1) {
        item_cost[i] = 0;
    }
	i += 1;
    x_mod[i] = 9;
    item[i] = "Twin Linked Volkite Culverin Sponsons";
    item_stocked[i] = scr_item_count(item[i]);
	if (obj_controller.stc_vehicles >= 6) {
	forge_cost[i] = 800;
	}
	nobuy[i] = 1;
    if (rene = 1) {
        item_cost[i] = 0;
    }
	i += 1;
    x_mod[i] = 9;
    item[i] = "Twin Linked Multi-Melta Sponsons";
    item_stocked[i] = scr_item_count(item[i]);
	item_cost[i] = 120;
	if (research.melta[0]>0){
	forge_cost[i] = 900;
	}
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
	i += 1;
    x_mod[i] = 9;
    item[i] = "Twin Linked Heavy Flamer Sponsons";
    item_stocked[i] = scr_item_count(item[i]);
	if (research.flame[0]>0){
	forge_cost[i] = 600;
	}
	item_cost[i] = 150;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
	i += 1;
    x_mod[i] = 9;
    item[i] = "Reaper Autocannon Mount";
    item_stocked[i] = scr_item_count(item[i]);
	if (obj_controller.stc_vehicles >= 6){
	forge_cost[i] = 650;
	}
	nobuy[i] = 1;
    if (rene = 1) {
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Void Shield";
    item_stocked[i] = scr_item_count(item[i]);
    nobuy[i] = 1;
    if (obj_controller.stc_vehicles >= 6) {
        nobuy[i] = 0;
        item_cost[i] = 500;
		forge_cost[i] = 2500;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Lucifer Pattern Engine";
    item_stocked[i] = scr_item_count(item[i]);
    nobuy[i] = 1;
    if (obj_controller.stc_vehicles >= 6) {
        nobuy[i] = 0;
        item_cost[i] = 90;
		forge_cost[i] = 1250;
    }
   if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Artificer Hull";
    item_stocked[i] = scr_item_count(item[i]);
    nobuy[i] = 1;
    if (obj_controller.stc_vehicles >= 3) {
        nobuy[i] = 0;
        item_cost[i] = 200;
		forge_cost[i] = 2500;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Armoured Ceramite";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 100;
	 if (obj_controller.stc_vehicles >= 3) {
		forge_cost[i] = 600;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Heavy Armour";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 50;
	 if (obj_controller.stc_vehicles >= 3) {
		forge_cost[i] = 250;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Smoke Launchers";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 5;
	 if (obj_controller.stc_vehicles >= 1) {
		forge_cost[i] = 50;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Dozer Blades";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 5;
	 if (obj_controller.stc_vehicles >= 1) {
		forge_cost[i] = 50;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Searchlight";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 5;
	 if (obj_controller.stc_vehicles >= 1) {
		forge_cost[i] = 50;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Frag Assault Launchers";
    item_stocked[i] = scr_item_count(item[i]);
    item_cost[i] = 10;
	 if (obj_controller.stc_vehicles >= 2) {
		forge_cost[i] = 100;
    }
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
}

if (shop = "warships") {
    i = 0;
    i += 1;
    item[i] = "Battle Barge";
    item_stocked[i] = scr_ship_count(item[i]);
    item_cost[i] = 20000;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Strike Cruiser";
    item_stocked[i] = scr_ship_count(item[i]);
    item_cost[i] = 8000;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Gladius";
    item_stocked[i] = scr_ship_count(item[i]);
    item_cost[i] = 2250;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    item[i] = "Hunter";
    item_stocked[i] = scr_ship_count(item[i]);
    item_cost[i] = 3000;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
    i += 1;
    x_mod[i] = 9;
    item[i] = "Cyclonic Torpedo";
    item_stocked[i] = scr_item_count(item[i]);
    nobuy[i] = 1;
    if (rene = 1) {
        nobuy[i] = 1;
        item_cost[i] = 0;
    }
}



with(obj_p_fleet) {
    if (capital_number > 0) and(action = "") {
        var you;
        you = instance_nearest(x, y, obj_star);
        if (you.trader > 0) then obj_shop.discount = 1;
    }
}
with(obj_star) {
    if (array_contains(p_owner, 1)) and(trader > 0) then obj_shop.discount = 1;
}


if (shop = "equipment") or(shop = "equipment2") {
    var disc;
    disc = 1;
    if (obj_controller.stc_wargear >= 1) then disc = 0.92;
    if (obj_controller.stc_wargear >= 3) then disc = 0.86;
    if (obj_controller.stc_wargear >= 5) then disc = 0.75;
    var mc = 0;
    repeat(i) {
        mc++;
        if (forge_cost[mc] > 1) then forge_cost[mc] = round(forge_cost[mc] * disc);
    }
}
if (shop = "vehicles") {
    var disc;
    disc = 1;
    if (obj_controller.stc_vehicles >= 1) then disc = 0.92;
    if (obj_controller.stc_vehicles >= 3) then disc = 0.86;
    if (obj_controller.stc_vehicles >= 5) then disc = 0.75;
   var mc = 0;
    repeat(31) {
        mc += 1;
        var ahuh;
        ahuh = 1;
        if (mc >= 7) and(mc <= 12) then ahuh = 0;
        if (ahuh = 1) {
            if (forge_cost[mc] > 1) then forge_cost[mc] = round(forge_cost[mc] * disc);
        }
    }
}
if (shop == "production"){
    i = 0;
    var research_item;
    // Tribal research
    if (research.psi[0] == 0){
        i++;
        item[i] = ["research", research_pathways.psi[0][research.psi[0]], ["psi"]];
        item_stocked[i] = 0;
        forge_cost[i] = 1000;
        tooltip_overide[i] = "Even though our ancestors, or even we, claimed that 'there are no gods in the ground and in the sky. This is the Imperial Truth' long ago, there is no use denying that psionics exist. To make use of, or guard against, we need to study how can we interact with it in the material world. Preliminary research suggests that certain signs - 'marks' - may hold clues to it. \nRequired for: Ritual Stone Knife, Psychic Accessories.";
    }
	if (research.animal[0] == 0){
        i++;
        item[i] = ["research", research_pathways.animal[0][research.animal[0]], ["animal"]];
        item_stocked[i] = 0;
        forge_cost[i] = 1000;
		tooltip_overide[i] = "While unusual, it is not impossible for us to try making use of the local - or the one we encounter on our travels - fauna, to help us move things around. \nRequired for: Animal Mount.";
	}
	// Early Conventional Tech
	if (research.metallurgy[0] == 0){
        i++;
        item[i] = ["research", research_pathways.metallurgy[0][research.metallurgy[0]], ["metallurgy"]];
        item_stocked[i] = 0;
        forge_cost[i] = 500;
		tooltip_overide[i] = "Our options to forge weaponry are going to be very limited with access to just carpentry and stoneworking. Building basic metalworking tools and facilities will expand these options. \nRequired for: Iron Sword, Chainmail Armour, Combi-Tool."; // Iron Armour and numerous other items
	}
	if (research.mechanisms[0] == 0){
        i++;
        item[i] = ["research", research_pathways.mechanisms[0][research.mechanisms[0]], ["mechanisms"]];
        item_stocked[i] = 0;
        forge_cost[i] = 500;
		tooltip_overide[i] = "Constructing devices which can make use of potential and kinetic energies more efficiently requires some precision tools and facilities. \nRequired for: Crossbow."; // Balista, Catapult and numerous other items
	}
	if (research.chemistry[0] == 0){
        i++;
        item[i] = ["research", research_pathways.chemistry[0][research.chemistry[0]], ["chemistry"]];
        item_stocked[i] = 0;
        forge_cost[i] = 500;
		tooltip_overide[i] = "We need facilities to convert certain liquids and gases into resources that can be used in forging. \nRequired for: Sororitas Medkit."; // and numerous other items
	}
	// Late Conventional Tech
	if (research.metallurgy[0] == 1){
        i++;
        item[i] = ["research", research_pathways.metallurgy[0][research.metallurgy[0]], ["metallurgy"]];
        item_stocked[i] = 0;
        forge_cost[i] = 1000;
		tooltip_overide[i] = "While our current metalworking facilities are enough for simple things, we need to expand them to be able to make more complex materials, such as steel. \nRequired for: Steel Sword, Plate Armour."; // Steel Armour and numerous other items
	}
	if (research.combustion[0] == 0){
        i++;
        item[i] = ["research", research_pathways.combustion[0][research.combustion[0]], ["combustion"]];
        item_stocked[i] = 0;
		if (research.metallurgy[0] > 0 && research.mechanisms[0] > 0 && research.chemistry[0] > 0){
        forge_cost[i] = 1000;
		} else { forge_cost[i] = 0; 
		}
		tooltip_overide[i] = "If we want capability to build our own vehicles, we need ways to make them mobile. Combustion engines are the old, but reliable method of giving them locomotion. \nRequired for: Bike."; // and other vehicles
	}
	if (research.plastics[0] == 0){
        i++;
        item[i] = ["research", research_pathways.plastics[0][research.plastics[0]], ["plastics"]];
        item_stocked[i] = 0;
		if (research.combustion[0] > 0){
        forge_cost[i] = 1000;
		} else { forge_cost[i] = 0;
		}
		tooltip_overide[i] = "We can expand our chemical facilities to accomodate plastic making. \nRequired for: Hellgun, Lascutter, Flak Armour."; // Lasgun and its variants, Composite armour and other items
	}
	if (research.mechnchem[0] == 0){
        i++;
        item[i] = ["research", research_pathways.mechnchem[0][research.mechnchem[0]], ["mechnchem"]];
        item_stocked[i] = 0;
		if (research.chemistry[0] > 0 && research.mechanisms[0] > 0){
        forge_cost[i] = 1000;
		}
		tooltip_overide[i] = "To forge proper medical tools and bionics, some improvements to mechanism making and chemical facilities are required. \nRequired for: Bionics, Narthecium, Servo-arm.";
	}
    //Research of 40k
	// Bolters
    if (research.bolt[0] == 0){
        i++;
        item[i] = ["research",research_pathways.bolt[0][research.bolt[0]], ["bolt"]];
		item_stocked[i] = 0;
		if (research.mechnchem[0] > 0 && research.metallurgy[0] > 1){
        forge_cost[i] = 1000;
		} else { tooltip_overide[i] = $"{require_tool_tip} {research_pathways.mechnchem[0][0]}"
		}
        tooltip_overide[i] = "Before we can start forging bolters - the standard weapon of the Space Marines - we need to construct facilities dedicated to their construction and maintenance. \n\nUnlocks: Heavy Bolter, Heavy bolter Sponsons.\nRequired for: Combiflamer, Combiplasma, Combimelta, Combigrav, Assault Cannon, Autocannon Turret, Hurricane Bolter, Quad Linked Heavy Bolter Sponsons, Twin Linked Bolters, Twin Linked Heavy Bolter mount, Twin Linked assault cannon.";
    }
    if (research.bolt[0] == 1){
        i++;
        item[i] = ["research",research_pathways.bolt[0][research.bolt[0]], ["bolt"]];
		item_stocked[i] = 0;
        forge_cost[i] = 1500;
        tooltip_overide[i] = "To allow bolters to be constructed in a compact form, we need to increase precision in our bolter forging. \n\nUnlocks: Stalker Pattern Bolter, Bolter, Bolt Pistol, Storm Bolter, Autocannon, Assault Cannon, Twin Linked bolters.\nRequired for: Combiflamer, Combiplasma, Combimelta, Combigrav, Assault Cannon, Autocannon Turret, Hurricane Bolter, Quad Linked Heavy Bolter Sponsons, Twin Linked Bolters, Twin Linked Heavy Bolter mount, Twin Linked assault cannon.";
    }
	if (research.bolt[0] == 2){
        i++;
        item[i] = ["research",research_pathways.bolt[0][research.bolt[0]], ["bolt"]];
		item_stocked[i] = 0;
        forge_cost[i] = 2000;
        tooltip_overide[i] = "The final iteration is the combination weaponry - bolter, mixed in with a weapon from a different class. \nUnlocks: Combi-weapons.";
    }
	// Las
    if (research.las[0] == 0){
        i++;
        item[i] = ["research", research_pathways.las[0][research.las[0]], ["las"]];
        item_stocked[i] = 0;
        if (research.plastics[0] > 0){
        forge_cost[i] = 1000;
		}
        tooltip_overide[i] = "To forge las weaponry of greater power, we need some improvements to our facilities.\n\nUnlocks: Lascannon.\nRequired for: Twin Linked Lascannon Turret, Twin Linked Lascannon Sponsons, Twin Linked Lascannon.";
    }
	// Flamers
    if (research.flame[0] == 0){
        i++;
        item[i] = ["research", research_pathways.flame[0][research.flame[0]], ["flame"]];
        item_stocked[i] = 0;
        if (research.mechnchem[0] > 0 && research.metallurgy[0] > 1){
        forge_cost[i] = 2000;
		}
        tooltip_overide[i] = "To forge flamer weaponry, we need to build facilities that allow creation of materials that can hold the fuel and withstand their destructive properties.\nUnlocks: Flamers, Heavy Flamers, Incinerator.\nRequired for: Heavy Flamer Sponsons, Flamestorm Cannon Sponsons, Inferno Cannon, Servo-harness, Combi-flamer.";
    }
    if (research.melta[0] == 0){
        i++;
        item[i] = ["research",research_pathways.melta[0][research.melta[0]], ["melta"]];
        item_stocked[i] = 0;
		if (research.mechnchem[0] > 0 && research.metallurgy[0] > 1){
        forge_cost[i] = 3000;
		}
        tooltip_overide[i] = "To deal with armored targets at close distance, melta weaponry is an option.\n\nUnlocks: Meltagun, Multi-Melta.\nRequired for: Combimelta";
    }
	// Plasma
    if (research.plasma[0] == 0){
        i++;
        item[i] = ["research", research_pathways.plasma[0][research.plasma[0]], ["plasma"]];
        item_stocked[i] = 0;
		if (research.mechnchem[0] > 0 && research.metallurgy[0] > 1){
        forge_cost[i] = 5000;
		}
        tooltip_overide[i] = "Getting the capability to forge our own plasma weaponry is an expensive undertaking. But with sufficient resources, we'd gain a serious advantage over any adversary.\n\nUnlocks: Plasma Pistol, Plasma Gun, Plasma Cannon.\nRequired for: Combiplasma.";
    }
    if (research.grav[0] == 0){
        i++;
        item[i] = ["research", research_pathways.grav[0][research.grav[0]], ["grav"]];
        item_stocked[i] = 0;
		if (research.mechnchem[0] > 0 && research.metallurgy[0] > 1){
        forge_cost[i] = 10000;
		}
        tooltip_overide[i] = "Grav weapons, being extremely rare, will be difficult to properly reproduce. Nonetheless, with enough resources and time, we could attempt to forge them for our purposes.\n\nUnlocks: Grav-Pistol, Grav-Gun, Grav-Cannon.\nRequired for: Combigrav";
    }
	// Psi of 40k
    if (research.psi[0] == 1){
        i++;
        item[i] = ["research", research_pathways.psi[0][research.psi[0]], ["psi"]];
        item_stocked[i] = 0;
		if (research.mechnchem[0] > 0 && research.metallurgy[0] > 1){
        forge_cost[i] = 5000;
		}
        tooltip_overide[i] = "In addition to inscribing runes, some materials may have properties that make channeling warp power easier, or harder. Developing facilities to exploit this is necessary for more advanced force weaponry.\n\nUnlocks: Force Staff, Force Sword, Force Axe.";
    }
	// Chain
     if (research.chain[0] == 0){
        i++;
        item[i] = ["research", research_pathways.chain[0][research.chain[0]], ["chain"]];
        item_stocked[i] = 0;
		if (research.combustion[0] > 0 && research.metallurgy[0] > 1){
        forge_cost[i] = 1000;
		}
        tooltip_overide[i] = "One of the options for forging affordable and reasonably powerful melee weaponry, would be chain weaponry. \n\nUnlocks: Chainsword, Chainaxe, Eviscerator, Chainfist.";
    }
	// Power fields
    if (research.power_fields[0] == 0){
        i++;
        item[i] = ["research",research_pathways.power_fields[0][research.power_fields[0]], ["power_fields"]];
        item_stocked[i] = 0;
		if (research.mechnchem[0] > 0 && research.metallurgy[0] > 1){
        forge_cost[i] = 3000;
		}
        tooltip_overide[i] = "To make the most out of our melee arsenal, integrating power fields in them is the standard approach.\n\nUnlocks: Power Axe, Power Sword, Power Spear, Crozius Arcanum, Power Fist, Power Mace, Lightning Claw, Chainfist, Thunder Hammer, Heavy Thunder Hammer, Storm Shield.";
    }
	// Armour Techs
	if (research.armourmk1[0] == 0){
		i++;
        item[i] = ["research",research_pathways.armourmk1[0][0], ["armourmk1"]];
        item_stocked[i] = 0;
		if (research.mechnchem[0] > 0 && research.metallurgy[0] > 1){
        forge_cost[i] = 500;
		}
        tooltip_overide[i] = "The first powered armour - Mark I Thunder Armour - was used only on Terra by Thunder warriors. In the original schematics, it would be of little use, with no life suport and Thunder warrior physical differences, however, we can improve and adapt the design, to make it useable.\n\nUnlocks: MK1 Thunder Armour.\nRequired for: MK2 Crusade Armour.";
    }
	if (research.armourmk2[0] == 0){
		i++;
        item[i] = ["research",research_pathways.armourmk2[0][0], ["armourmk2"]];
        item_stocked[i] = 0;
		if (research.armourmk1[0] > 0 || research.armourmk5[0] > 0 || research.armourmk7[0] > 0){
        forge_cost[i] = 1000;
		}
        tooltip_overide[i] = "Mark II Crusade Armour was used, as the name implies, during the Great Crusade. Considering specifications, it would be superior in some aspects to the armours used nowadays.\n\nUnlocks: MK2 Crusade Armour.\nRequired for: MK3 Iron Armour.";
    }
	if (research.armourmk3[0] == 0){
		i++;
        item[i] = ["research",research_pathways.armourmk3[0][0], ["armourmk3"]];
        item_stocked[i] = 0;
		if (research.armourmk2[0] > 0){
        forge_cost[i] = 2500;
		}
        tooltip_overide[i] = "Mark III Iron Armour was an attempt to improve survivability of the MK2. If estimations are correct, this armour offers the best in terms of protection of powered armour, besides artificer and terminator variants.\n\nUnlocks: MK3 Iron Armour.\nRequired for: MK4 Maximus, Tartaros.";
    }
	if (research.armourmk4[0] == 0){
		i++;
        item[i] = ["research",research_pathways.armourmk4[0][0], ["armourmk4"]];
        item_stocked[i] = 0;
		if (research.armourmk3[0] > 0 && research.armourmk6[0] > 0){
        forge_cost[i] = 5000;
		}
        tooltip_overide[i] = "Mark IV Imperium Maximus Armour was created at the end of the Great Crusade, as a symbol of power of the Imperium. The suits of this mark are extremely rare, and considering the types of resources used, it is very difficult to properly reproduce. It would be an expensive undertaking to establish forging facilities of this armour.\n\nUnlocks: MK4 Maximus.\nRequired for: Artificer Armour, Cataphractii Pattern Terminator.";
    }
	if (research.armourmk5[0] == 0){
		i++;
        item[i] = ["research",research_pathways.armourmk5[0][0], ["armourmk5"]];
        item_stocked[i] = 0;
		if (research.mechnchem[0] > 0 && research.metallurgy[0] > 1){
        forge_cost[i] = 600;
		}
        tooltip_overide[i] = "Mark V Heresy Armour was created at the beginning of Horus Heresy. It is less a standardized variant, but rather a group of variants competing for a name. It would not be too hard to establish facilities for a sub-variant that we can forge and maintain.\n\nUnlocks: MK5 Heresy.\nRequired for: MK6 Corvus, MK2 Crusade Armour.";
    }
	if (research.armourmk6[0] == 0){
		i++;
        item[i] = ["research",research_pathways.armourmk6[0][0], ["armourmk6"]];
        item_stocked[i] = 0;
		if (research.armourmk2[0] > 0 || research.armourmk5[0] > 0 || research.armourmk7[0] > 0){
        forge_cost[i] = 3000;
		}
        tooltip_overide[i] = "Mark VI Corvus Armour was a variant with improved sensor suite. While it tends to improve accuracy and thus combat performance, the survivability is not as good.\n\nUnlocks: MK6 Corvus.\nRequired for: MK4 Maximus.";
    }
	if (research.armourmk7[0] == 0){
		i++;
        item[i] = ["research",research_pathways.armourmk7[0][0], ["armourmk7"]];
        item_stocked[i] = 0;
		if (research.mechnchem[0] > 0 && research.metallurgy[0] > 1){
        forge_cost[i] = 750;
		}
        tooltip_overide[i] = "Mark VII Aquila Armour is the standard armour currently used by most chapters in the imperium. It would not be too difficult to set up capabilities to forge it locally.\n\nUnlocks: MK7 Aquila.\nRequired for: MK2 Crusade Armour, MK6 Corvus, MK8 Errant, Artificer Armour, Terminator Armour, Tartaros.";
    }
	if (research.armourmk8[0] == 0){
		i++;
        item[i] = ["research",research_pathways.armourmk8[0][0], ["armourmk8"]];
        item_stocked[i] = 0;
		if (research.armourmk7[0] > 0){
        forge_cost[i] = 1000;
		}
        tooltip_overide[i] = "Mark 8 Errant Armour is a further development of MK7, most notable improvement is increased survivability.\n\nUnlocks: MK8 Errant.\nRequired for: Terminator Armour.";
    }
	if (research.hvyarmcon[0] == 0){
		i++;
        item[i] = ["research",research_pathways.hvyarmcon[0][0], ["hvyarmcon"]];
        item_stocked[i] = 0;
		if (research.armourmk1[0] > 0 || research.armourmk5[0] > 0 || research.armourmk7[0] > 0){
        forge_cost[i] = 2500;
		}
        tooltip_overide[i] = "Now that we possess the means to forge a regular power armour, there is a possibility to go beyond it. The Indomitus pattern may require more research, but we should be able to forge a militarized variant of a heavy-duty industrial armour.\n\nUnlocks: Early Terminator Armour.\nRequired for: Terminator Armour, Tartaros, Artificer Armour.";
    }
	if (research.dread[0] == 0){
		i++;
        item[i] = ["research",research_pathways.dread[0][0], ["dread"]];
        item_stocked[i] = 0;
		if (research.hvyarmcon[0] > 0 && research.combustion[0] > 0){
        forge_cost[i] = 25000;
		}
        tooltip_overide[i] = "With rudimentary heavy power armour forging capabilities, as well as ways to give locomotion, we can consider building facilities necessary for dreadnought construction. It would be a very costly development however.\n\nUnlocks: Dreadnought, Close Combat Weapon, Dreadnought Lightning Claw, Dreadnought Power Claw."; // \nRequired for: other types of dreads, perhaps
    }

}
legitimate_items = i;
if (shop = "warships") {
    var disc;
    disc = 1;
    if (obj_controller.stc_ships >= 1) then disc = 0.92;
    if (obj_controller.stc_ships >= 3) then disc = 0.86;
    if (obj_controller.stc_ships >= 5) then disc = 0.75;
    i = 0;
    repeat(31) {
        i += 1;
        if (item_cost[i] > 1) then item_cost[i] = round(item_cost[i] * disc);
    }
}
if (discount = 1) {
    discount = 2;
    i = 0;
    repeat(31) {
        i += 1;
        if (item_cost[i] >= 5) then item_cost[i] = round(item_cost[i] * 0.8);
        if (item_cost[i] > 1) and(item_cost[i] < 5) then item_cost[i] -= 1;
    }
}

if (rene = 1) {
    i = 0;
    repeat(31) {
        i += 1;
        item_cost[i] *= 2;
    }
}
forge_master_modifier=0;
if (forge_master!="none"){
    forge_master_modifier = 2500/((forge_master.charisma+10)*forge_master.technology);
    if (forge_master.has_trait("flesh_is_weak") && forge_master_modifier>0.75){
        forge_master_modifier-=0.1;
    };
} else {
    forge_master_modifier=1.7;
}
var tech_heretic_modifier =1
 i = 0;
  repeat(array_length(item_cost)-2){
    i += 1;
    if (shop != "warships"){
        item_cost[i] *= 2;
    }
    if (rene != 1){
		item_cost[i]*=mechanicus_modifier;
        if (obj_controller.tech_status=="heretics"){
            tech_heretic_modifier = 1.05;
            item_cost[i]*=tech_heretic_modifier
        }
	}
	item_cost[i] *= forge_master_modifier;
    item_cost[i] = ceil(item_cost[i]);
}

if (global.cheat_debug) {
    var i_count = array_length(item_cost);
    var empty_array = array_create(i_count, 0);
    item_cost = empty_array;
    forge_cost = array_create(i_count, 1);
    nobuy = empty_array;
}

item_cost_tooltip_info = "";
item_cost_tooltip_info += $"Modifier from forge Master : X{forge_master_modifier}/n"
item_cost_tooltip_info += $"Mechanicus Relations : X{mechanicus_modifier}/n"
item_cost_tooltip_info += $"Chapter tech approach (obj_controller.tech_status) : X{tech_heretic_modifier}/n"


/* */
/*  */

/// @description Sells an item and adds resources to the player
/// @param {Real} item_index The index of the item in the global array
/// @param {Real} sell_count The quantity to sell
/// @param {Real} sell_modifier The value modifier (0.0-1.0)
/// @returns {Boolean} Whether the sale was successful
sell_item = function (item_index, sell_count, sell_modifier) {
    if (item_stocked[item_index] >= sell_count) {
        scr_add_item(item[item_index], (-sell_count), "standard");
        item_stocked[item_index] -= (sell_count);
        var sell_price = (item_cost[item_index] * sell_modifier) * sell_count;
        obj_controller.requisition += sell_price;

        return true;
    }
    return false;
}
