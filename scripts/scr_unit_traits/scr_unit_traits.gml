function initialize_marine_traits(){
	global.trait_list = json_to_gamemaker(working_directory + "\\data\\traits.json", json_parse);
}

function marine_has_trait(wanted_trait){
	return array_contains(traits, wanted_trait);
}
//TODO Jsonify
global.astartes_trait_dist = [
		[
			"beast_slayer", 
			[500,499],
			{
				recruit_world_type: [
					["Ice", -2],
					["Death", -10],
					["Desert", -2],
					["Feudal", -1],
					["Lava", 1],
				],
				recruit_trial : [
					[eTrials.EXPOSURE, -1],
					[eTrials.SURVIVAL, -1],
					[eTrials.HUNTING, -3],
					[eTrials.APPRENTICESHIP, -1],
					[eTrials.CHALLENGE, 1],
					[eTrials.BLOODDUEL, 2],
					[eTrials.KNOWLEDGE, 1]
				]				
			}				
		],

		[	
			"very_hard_to_kill", 
			[400,397],
			{
				recruit_world_type: [
					["Ice", -1],
					["Lava", -4],
					["Death", -4],
					["Desert", -1],
				],
				recruit_trial : [
					[eTrials.EXPOSURE, -3],
					[eTrials.SURVIVAL, -2],
					[eTrials.APPRENTICESHIP, -1],
				]
			}					
		],
		[
			"harshborn",
			[149,147],
			{
				recruit_world_type: [
					["Ice", -2],
					["Lava", -1],
					["Desert", -2],
					["Death", -3],
					["Forge",1],
					["Shrine",1]					
				],
				recruit_trial : [
					[eTrials.EXPOSURE, -1],
					[eTrials.SURVIVAL, -1],
				]				
			}				
		],
		[
			"scholar", 
			[150,148],
			{
				recruit_world_type: [
					["Agri", -1],
					["Feudal", -1],
					["Hive", -1],
					["Temperate", -2],
					["Forge",-3],
					["Shrine", -4],
				],
				recruit_trial : [
					[eTrials.KNOWLEDGE, -2],
					[eTrials.APPRENTICESHIP, -1],
					[eTrials.BLOODDUEL, 1],					
				]
			}					
		],
		[
			"feral", 
			[299,296],
			{
				recruit_world_type: [
					["Ice", -2],
					["Desert", -2],
					["Death", -3],
					["Feudal", -1],
					["Forge",50],
					["Temperate", 1],
					["Agri", 1],
					["Hive", 2],
					["Shrine",2]					
				],
				recruit_trial : [
					[eTrials.KNOWLEDGE, 5],
					[eTrials.APPRENTICESHIP, 10],
					[eTrials.EXPOSURE, -1],
					[eTrials.BLOODDUEL, -1],	
					[eTrials.SURVIVAL, -1],					
				]				
			}
		],
		[
			"brawler",
			[99,98],
			{
				chapter_name:[
					"Space Wolves",[200,190]
				],
				recruit_trial : [
					[eTrials.BLOODDUEL, -2],
					[eTrials.CHALLENGE, -1],
				]			
			}
		],
		[
			"brute", 
			[200,198],
			{
				recruit_world_type: [
					["Ice", -1],
					["Desert", -1],
					["Death", -1],				
				],
				recruit_trial : [
					[eTrials.BLOODDUEL, -2],
					[eTrials.CHALLENGE, -1],
					[eTrials.KNOWLEDGE, 1],
					[eTrials.APPRENTICESHIP, 1],
				]				
			}					
		],
		[
			"charismatic", 
			[99,98],
			{
				recruit_world_type: [
					["Shrine", -3],
					["Temperate", -2],
					["Agri", -1],
					["Hive", -2],
					["Forge", -1],
				],
				recruit_trial : [
					[eTrials.KNOWLEDGE, -1],
					[eTrials.APPRENTICESHIP, -1],
				]				
			}
		],
		[
			"skeptic",
			[99,98]
		],
		[
			"blunt", 
			[99,98],
			{
				recruit_trial : [
					[eTrials.BLOODDUEL, -1],
				],
			}
		],
		[
			"nimble", 
			[99,98],
			{
				recruit_trial : [
					[eTrials.HUNTING, -1],
					[eTrials.EXPOSURE, -1],
					[eTrials.BLOODDUEL, -1],	
					[eTrials.SURVIVAL, -1],
					[eTrials.CHALLENGE, -1],
					[eTrials.APPRENTICESHIP, -1],
				]
			}
		],
		[
			"recluse", 
			[199,198],
			{
				recruit_trial : [
					[eTrials.BLOODDUEL, -1],
					[eTrials.EXPOSURE, -1],
					[eTrials.SURVIVAL, -2],
				]
			}

		],
		[	
			"perfectionist", 
			[99,98],
			{
				// progenitor:[ePROGENITOR.EMPERORS_CHILDREN,[1000,800],"required"],
				recruit_trial : [
					[eTrials.KNOWLEDGE, -1],
					[eTrials.APPRENTICESHIP, -3],
					[eTrials.HUNTING, -2],
					[eTrials.EXPOSURE, -1],
					[eTrials.SURVIVAL, -1],
				]	
			}				
		],
		[
			"observant", 
			[99,98],
			{
				recruit_trial : [
					[eTrials.KNOWLEDGE, -1],
					[eTrials.APPRENTICESHIP, -1],
					[eTrials.HUNTING, -1],
				]	
			}			
		],
		[
			"cunning", 
			[99,98],
			{
				recruit_world_type: [
					["Hive", -4],				
				],
				recruit_trial : [
					[eTrials.HUNTING, -3],
				]						
			}					
		],
		[
			"guardian",
			[99,98],
		],
		[
			"technophobe", 
			[99,98],
			{
				"progenitor":[
					ePROGENITOR.IRON_HANDS,[1000,999]
				],
				recruit_world_type : [
					["Ice", -1],
					["Death", -2],
					["Desert", -1],
					["Feudal", -1],
					["Lava", 1],
					["Shrine", 1],
					["Temperate", 2],
					["Agri", 1],
					["Hive", 1],
					["Forge",50],
				],
			}
		],
		[
			"jaded",
			[99,98],
		],
		[
			"strong", 
			[99,98],
			{
				recruit_world_type: [
					["Ice", -1],
					["Death", -1],
					["Desert", -1],
				],
				recruit_trial : [
					[eTrials.HUNTING, -1],
					[eTrials.CHALLENGE, -1],
					[eTrials.SURVIVAL, -1],
					[eTrials.BLOODDUEL, -1],
					[eTrials.EXPOSURE, -1],
				],		
			}
		],
		[
			"fast_learner", 
			[149,148],
			{
				recruit_trial : [
					[eTrials.KNOWLEDGE, -1],
					[eTrials.APPRENTICESHIP, -1],
				],
			}
		],
		[
			"feet_floor", 
			[199,198],
			{
				chapter_name:[
					"Space Wolves",[100,70]
				],
			}
		],
		[
			"paragon", 
			[999,998],
			{
				recruit_trial : [
					[eTrials.APPRENTICESHIP, -1],
				],
			}
		],
		[
			"favoured_by_the_warp",
			[299,298],
			{
				"disadvantage":[
					"Favoured By The Warp",[10,9]
				]
			}
		],
		[
			"warp_tainted",
			[299,298],
			{
			"disadvantage":[
				"Warp Tainted",[20,1]
			]
			}
		],
		[
			"shitty_luck",
			[99,98],
			{
				"disadvantage":[
					"Shitty Luck",[3,2]
				]
			}
		],
		[
			"lucky",
			[99,98],
			{
				"advantage":[
					"Great Luck",[3,2]
				]
			}
		],
		[
			"natural_leader",
			[199,198],
			{
				recruit_world_type: [
					["Feudal", -1],
					["Temperate", -1],
					["Forge", -1],
					["Shrine", -2],
					["Hive", -2],
				],
				recruit_trial : [
					[eTrials.KNOWLEDGE, -1],
					[eTrials.APPRENTICESHIP, -2],
				]
			}
		],
		[
			"slow_and_purposeful",
			[99,98],
			{
				"advantage":[
					"Devastator Doctrine",[300,100]
				]
			}
		],
		[
			"melee_enthusiast",
			[99,98],
			{
				"advantage":[
					"Assault Doctrine",[300,100]
				],
				recruit_trial : [
					[eTrials.BLOODDUEL, -1],
					[eTrials.CHALLENGE, -1],
				]				
			}, 
		],
		[
			"lightning_warriors",
			[99,98],
			{
				"advantage":[
					"Lightning Warriors",[300,100]
				]
			}
		],
		[
			"zealous_faith",
			[99,98],
			{
				"advantage":[
					"Psyker Intolerant",[300,200]
				],
				recruit_world_type: [
					["Shrine", -15]
				],
				recruit_trial : [
					[eTrials.KNOWLEDGE, -2],
				]										
			}
		],
		[
			"faithless",
			[1000,980],
			{
				"disadvantage":[
					"Small Reclusiam",[1000,50],"required"
				],
				recruit_world_type: [
					["Shrine", 15],
					["Forge", -1],
				],
			}
		],
		[
			"flesh_is_weak",
			[1000,999],
			{
				chapter_name:["Iron Hands",[1000,600],"required"],
				// chapter_name:["Iron Warriors",[1000,600],"required"],
				progenitor:[ePROGENITOR.IRON_HANDS,[1000,800],"required"],
				// progenitor:[ePROGENITOR.IRON_WARRIORS,[1000,800],"required"],
				recruit_world_type: [
					["Forge", -30],
					["Hive", -4],
					["Temperate", -2],
					["Agri", -1],
					["Lava", -15],
					["Feudal", 1],
				],						
			}
		],
		[
			"tinkerer",
			[199,198],
			{
				chapter_name:["Iron Hands",[49,47]],
				// chapter_name:["Iron Warriors",[49,47]],
				progenitor:[ePROGENITOR.IRON_HANDS,[25,24]],
				// progenitor:[ePROGENITOR.IRON_WARRIORS,[25,24]],
				recruit_world_type: [
					["Forge", -5],
					["Hive", -4],
					["Temperate", -2],
					["Agri", -1],
					["Lava", -1],
					["Shrine", -1],
				],
				recruit_trial : [
					[eTrials.APPRENTICESHIP, -2],
					[eTrials.KNOWLEDGE, -1],
				]
			}
		],
		[
			"crafter",
			[299,298],
			{
				advantage:["Crafters",[299,297]],
				recruit_world_type: [
					["Forge", -2],
					["Lava", -1],
					["Agri", -1],
					["Hive", -1],
					["Temperate", -1],
					["Shrine", -1],
				],
				recruit_trial : [
					[eTrials.APPRENTICESHIP, -2],
					[eTrials.KNOWLEDGE, -1],
				]												
			}					
		],
		[
			"honorable",
			[299,297],
			{
				recruit_world_type: [
					["Feudal", -3],
					["Shrine", -1],
					["Desert", -1],
					["Death", -1],
					["Ice", -1],
				],
				recruit_trial : [
					[eTrials.BLOODDUEL, 2],
					[eTrials.SURVIVAL, 1],
					[eTrials.CHALLENGE, -1],
					[eTrials.KNOWLEDGE, -1],
					[eTrials.APPRENTICESHIP, -2],
				],
			}
		],
		[
			"duelist",
			[299,298],
			{
				chapter_name:[
					"Black Templars",[199,197]
				],
				recruit_world_type: [
					["Feudal", -5],
				],
				recruit_trial : [
					[eTrials.CHALLENGE, -2],
					[eTrials.APPRENTICESHIP, -1],
				]										
			}
		],	
		[
			"siege_master",
			[299,297],
			{
				// progenitor:[ePROGENITOR.IMPERIAL_FISTS,[1000,800],"required"],
				// progenitor:[ePROGENITOR.IRON_WARRIORS,[1000,800],"required"],
				recruit_world_type: [
					["Feudal", -3],
					["hive", -2],
					["Temperate", -1],
					["Forge", -1],
					["Shrine", -1],
				],
				recruit_trial : [
					[eTrials.APPRENTICESHIP, -2],
					[eTrials.KNOWLEDGE, -1],
				]				
			}
		],		
		[
			"secretive_knights",
			[1,1],
			{
				chapter_name:[
					"Dark Angels",[500,0]
				],			
			}
		],		
		[
			"warriors_of_the_wind",
			[1,1],
			{
				chapter_name:[
					"White Scars",[500,0]
				],			
			}
		],		
		[
			"wolf_prince",
			[1,1],
			{
				chapter_name:[
					"Space Wolves",[500,0]
				],			
			}
		],		
		[
			"obstinate_defenders",
			[1,1],
			{
				chapter_name:[
					"Imperial Fists",[500,0]
				],			
			}
		],		
		[
			"host_of_angels",
			[1,1],
			{
				chapter_name:[
					"Blood Angels",[500,0]
				],			
			}
		],		
		[
			"will_of_iron",
			[1,1],
			{
				chapter_name:[
					"Iron Hands",[500,0]
				],			
			}
		],		
		[
			"students_of_war",
			[1,1],
			{
				chapter_name:[
					"Ultramarines",[500,0]
				],			
			}
		],		
		[
			"keepers_of_the_flame",
			[1,1],
			{
				chapter_name:[
					"Salamanders",[500,0]
				],			
			}
		],		
		[
			"shadow_masters",
			[1,1],
			{
				chapter_name:[
					"Raven Guard",[500,0]
				],			
			}
		],		
		
	];



function scr_marine_trait_spawning(distribution_set){

	function is_state_required(mod_area){
		is_required = false;
		if (array_length(mod_area)>2){
			if (mod_area[2] == "require"){
				is_required =true;
			}
		}
		return is_required;
	}		
	for (var i=0;i<array_length(distribution_set);i++){//standard distribution for trait
		if (array_length(distribution_set[i])==2){
			if (irandom(distribution_set[i][1][0])>distribution_set[i][1][1]){
				add_trait(distribution_set[i][0])
			}
		} else if (array_length(distribution_set[i])==3){  //trait has conditions
			var dist_modifiers = variable_clone(distribution_set[i][2]);
			var dist_rate=[];
			array_copy(dist_rate, 0, distribution_set[i][1], 0, array_length(distribution_set[i][1]));
			if (struct_exists(dist_modifiers, "disadvantage")){
				if (scr_has_disadv(dist_modifiers[$"disadvantage"][0])){
					dist_rate = dist_modifiers[$"disadvantage"][1];  //apply new modifier rate
				} else if (is_state_required(dist_modifiers[$"disadvantage"])){
					dist_rate=[0,0];
				}
			}
			if (struct_exists(dist_modifiers, "advantage")){
				if (scr_has_adv(dist_modifiers[$"advantage"][0])){
					dist_rate = dist_modifiers[$"advantage"][1];  //apply new modifier rate
				} else if (is_state_required(dist_modifiers[$"advantage"])){
					dist_rate=[0,0];
				}
			}
			if (struct_exists(dist_modifiers, "progenitor")){
				if (obj_ini.progenitor == dist_modifiers[$ "progenitor"][0]){
					dist_rate = dist_modifiers[$"progenitor"][1]; 
				}else if (is_state_required(dist_modifiers[$ "progenitor"])){
					dist_rate=[0,0];
				}
			}
			if (struct_exists(dist_modifiers, "chapter_name")){
				if (global.chapter_name == dist_modifiers[$ "chapter_name"][0]){
					dist_rate = dist_modifiers[$"chapter_name"][1]; 
				}else if (is_state_required(dist_modifiers[$ "chapter_name"])){
					dist_rate=[0,0];
				}
			}
			if (struct_exists(spawn_data, "recruit_data")){
				var recruit_world_data = spawn_data.recruit_data;
				if (struct_exists(dist_modifiers, "recruit_world_type")){
					var type_data = dist_modifiers.recruit_world_type;
					for (var t=0;t<array_length(type_data);t++){
						if (type_data[t][0] == recruit_world_data.recruit_world){
							dist_rate[1] += type_data[t][1];
						}
					}
				}
				if (struct_exists(dist_modifiers,"trial_type")){
					if (struct_exists(dist_modifiers, "recruit_trial")){
						trial_data = dist_modifiers.recruit_trial;
						for (var t=0;t<array_length(trial_data);t++){
							if (type_data[t][0] == recruit_world_data.aspirant_trial){
								dist_rate[1] += type_data[t][1];
							}
						}						
					}
				}
			}						
			if (irandom(dist_rate[0])>dist_rate[1]){
				add_trait(distribution_set[i][0]);
			}
		}
	}	
}
