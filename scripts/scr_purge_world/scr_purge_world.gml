function scr_purge_world(star, planet, action_type, action_score) {

	var pop_before,pop_after,sci1,sci2,txt1,txt2, max_kill, overkill, heres_before, heres_after, kill;
	var isquest,thequest,questnum;isquest=0;thequest="";questnum=0;pop_after=0;txt1="";txt2="";overkill=0;


	// TODO - A small scale engagement during a selective purge with chaos elements 
	if /* ( */(action_type==DropType.PurgeFire) /* or (action_type==DropType.PurgeSelective)) */ and (star.p_traitors[planet]=0) and (star.p_chaos[planet]=0) and (obj_controller.turn>=obj_controller.chaos_turn){
	    if (planet_feature_bool(star.p_feature[planet],P_features.Warlord10) == 1) and (obj_controller.known[10]=0) and (obj_controller.faction_gender[10]=1) then with(obj_drop_select){
	        var pop=instance_create(0,0,obj_popup);
	        pop.image="chaos_symbol";
	        pop.title="Concealed Heresy";
	        pop.text=$"Your astartes set out and begin the purge of {planet_numeral_name(planet, star)}.  The operation was going as expected, albeit minor oddities in the locals' behavior was noted.  However, it soon was rectified as an attempt to ambush your forces.  Your marines gathered in a combat formation to battle the foe...";        
	        exit;   
	    }
	    if (planet_feature_bool(star.p_feature[planet],P_features.Warlord10) == 1) and (obj_controller.known[10]>=2) and (obj_controller.faction_gender[10]=1) then with(obj_drop_select){

			attacking=10;
			obj_controller.cooldown=30;combating=1;// Start battle here

			instance_deactivate_all(true);
			instance_activate_object(obj_controller);
			instance_activate_object(obj_ini);
			instance_activate_object(obj_drop_select);

			instance_create(0,0,obj_ncombat);
			obj_ncombat.battle_object=p_target;
			obj_ncombat.battle_loc=p_target.name;
			obj_ncombat.battle_id=obj_controller.selecting_planet;
			obj_ncombat.dropping=0;
			obj_ncombat.attacking=10;
			obj_ncombat.enemy=10;
			obj_ncombat.formation_set=1;

			/*
			obj_ncombat.battle_object=p_target;
			obj_ncombat.battle_loc=p_target.name;
			obj_ncombat.battle_id=obj_controller.selecting_planet;
			obj_ncombat.dropping=1-attack;
			obj_ncombat.attacking=attack;
			obj_ncombat.enemy=attacking;
			obj_ncombat.formation_set=formation_possible[formation_current];
			*/

			obj_ncombat.leader=1;
			obj_ncombat.threat=5;
			obj_ncombat.battle_special="WL10_later";
            scr_battle_allies();
            setup_battle_formations();
            roster.add_to_battle();
	    }
	}


	// TODO - while I don't expect Surface to Orbit weapons retaliating against player's purge bombardment, it might still be worthwhile to consider possible situations

	if (action_type=DropType.PurgeBombard){// Bombardment
	    txt1="Your cruiser and larger ship";
	    if (ships_selected>1) then txt1+="s";
	    txt1+=" position themselves over the target in close orbit, and unleash";
	    // if (ships_selected=1) then txt1+="s";
		txt1+= $" annihilation upon {planet_numeral_name(planet, star)}. Even from the void, explosions can be seen, {choose("hammering", "battering")} across the planet's surface.";
 
	    if (star.p_large[planet]=0) then max_kill=action_score*500000;
	    if (star.p_large[planet]=1) then max_kill=action_score*0.015;// Population if large
    
	    pop_before=star.p_population[planet];
    
	    heres_before=max(star.p_heresy[planet]+star.p_heresy_secret[planet],star.p_influence[planet][eFACTION.Tau]);// Starting heresy
    
	    // Minimum kills
	    if (pop_before>0) then overkill=max(pop_before*0.1,((heres_before/200)*pop_before));
	    if (pop_before=0) then overkill=0;
    
	    kill=min(max_kill,overkill,pop_before);// How many people ARE going to be killed
    
	    pop_after=pop_before-kill;
	    sci1=0;sci2=0;
    
	    if (pop_before>0) then sci1=(pop_after/pop_before)*100;// Relative % of people murderized
	    if (sci1>0) then sci2=min((sci1*2),action_score*2);// How much hurresy to get rid of
	    heres_after=heres_before-sci2;
	    if (pop_before>0) and (pop_after=0) then heres_after=0;
    
	    if (star.p_large[planet]=0) then pop_after=round(pop_after);    
	    if (pop_after<=0) and (pop_before>0) then heres_after=0;

		var nid_influence = star.p_influence[planet][eFACTION.Tyranids];
            if (planet_feature_bool(star.p_feature[planet], P_features.Gene_Stealer_Cult)) {
                var cult = return_planet_features(star.p_feature[planet], P_features.Gene_Stealer_Cult)[0];
                if (cult.hiding) {}
            } else {
                if (nid_influence > 25) {
                    txt1 += "There were signs of genestealer mutant offspring, with limited organization, while their influence is diminished further, we may see some complaints from our imperial allies for such a harsh treatment...";
                    adjust_influence(eFACTION.Tyranids, -20, planet, star);
                } else if (nid_influence > 0) {
                    txt1 += "There were traces of a genestealer infestation, it would have taken considerable time for them to do anything of note, but this should delay them further. Hopefully, we can convince our allies it was worth it...";
					adjust_influence(eFACTION.Tyranids, -10, planet, star);
                }
            }
 
		var _displayed_population = star.p_large[planet] == 1 ? $"{pop_before} billion" : scr_display_number(floor(pop_before));
		var _displayed_killed = star.p_large[planet] == 1 ? $"{kill} billion" : scr_display_number(floor(kill));
	    txt1 += $"##The world had {_displayed_population} Imperium subjects. {_displayed_killed} were purged over the duration of the bombardment.##Heresy has fallen down to {max(0, heres_after)}%.";
    
	    if (pop_after<=0){
	        if (star.p_owner[planet]=2) and (obj_controller.faction_status[2]!="War"){
	            if (star.p_type[planet]="Temperate" || star.p_type[planet]="Hive" || star.p_type[planet]="Agri"){
	            	var _disp_hit = -1;
					if (star.p_type[planet]="Hive") then _disp_hit = -9;
		            if (star.p_type[planet]="Temperate") then _disp_hit = -4;
		            if (star.p_type[planet]="Agri") then _disp_hit = -2;         	

	                scr_audience(eFACTION.Imperium, "bombard_angry", _disp_hit, "", 0, 0);
	            }
	        }
	    }
	    if (star.p_owner[planet]=3) and (obj_controller.faction_status[3]!="War"){

	    	if (star.p_type[planet]="Forge") then _disp_hit =-15;
	        if (star.p_type[planet]="Lava") then _disp_hit =-7;
	    	scr_audience(eFACTION.Inquisition, "bombard_angry", _disp_hit, "", 0, 0);

	    }

    
	}


	if (action_type=DropType.PurgeFire){
	    var i=0;
	    if (has_problem_planet(planet, "cleanse", star)){
        	isquest=1;
	        thequest="cleanse";
	        questnum=i;
	    }

	    if (isquest=1){
	        if (thequest="cleanse") and (action_score>=20){
	        	remove_planet_problem(planet,thequest,star);
            
	            if (obj_controller.demanding=0) then obj_controller.disposition[4]+=1;
	            if (obj_controller.demanding=1) then obj_controller.disposition[4]+=choose(0,0,1);
            
	            txt1="Your marines scour the underhive of "+string(star.name)+" "+string(planet)+", spraying mutants down with promethium as they go.  It takes several days but a sizeable dent is put in their numbers.";        
	            scr_event_log("","Inquisition Mission Completed: The mutants of "+string(star.name)+" "+string(scr_roman(planet))+" have been cleansed by promethium.");
	            scr_gov_disp(star.name,planet,choose(1,2,3));
	        }
	    }else if (isquest=0){ // TODO add more variation, with planets, features, marine equipment perhaps?
	        txt1=choose(
				$"Timing their visits right, Your forces scour {star.name} {planet} burning down whatever the local heretic communities call their homes. Their screams were quickly extinguished by fire, turning whatever it was before, into ash.",
				$"Your forces scour {star.name} {planet}, burning homes and towns that reek of heresy. The screams and wails of the damned carry through the air."
				);
     
	        if (star.p_large[planet]=0) then max_kill=action_score*12000;// Population if normal
	        if (star.p_large[planet]=1) then max_kill=action_score*0.0000012;// Population if large
        
	        pop_before=star.p_population[planet];
        
	        heres_before=max(star.p_heresy[planet]+star.p_heresy_secret[planet],star.p_influence[planet][eFACTION.Tau]);// Starting heresy
        
	        // Minimum kills
	        if (pop_before>0) then overkill=min(pop_before*0.01,((heres_before/200)*pop_before));
	        if (pop_before=0) then overkill=0;
        
	        kill=min(max_kill,overkill,pop_before);// How many people ARE going to be killed
        
	        if (star.p_large[planet]=0) then pop_after=pop_before-kill;
	        if (star.p_large[planet]=1) then pop_after=pop_before;
        
	        sci1=0;sci2=0;
	        if (pop_before>0) then sci1=(pop_after/pop_before)*100;// Relative % of people murderized
	        if (sci1>0) then sci2=min((sci1*2),round(action_score/25));// How much hurresy to get rid of
	        heres_after=heres_before-sci2;
	        if (pop_before>0) and (pop_after=0) then heres_after=0;

	        var nid_influence = star.p_influence[planet][eFACTION.Tyranids];
            if (planet_feature_bool(star.p_feature[planet], P_features.Gene_Stealer_Cult)) {
                var cult = return_planet_features(star.p_feature[planet], P_features.Gene_Stealer_Cult)[0];
                if (cult.hiding) {}
            } else {
                if (nid_influence > 25) {
                    txt1 += " Scores of mutant offspring from a genestealer infestation were burned down. They appeared to lack the organisation of a cult. Your marines note that there may be some survivors left at large, so they suggest repeating the purge or leaving a garrison.";
                    adjust_influence(eFACTION.Tyranids, -15, planet, star);
                } else if (nid_influence > 0) {
                    txt1 += "There were traces of a genestealer infestation. Considering the difficulty to clear out the infestation, marines note that they may still need to repeat the purge. Hopefully, we can convince our more vocal allies that it was worth the trouble.";
					adjust_influence(eFACTION.Tyranids, -5, planet, star);
                }
            }
	        if (star.p_large[planet]=0) then pop_after=round(pop_after);
	        if (pop_after<=0) and (pop_before>0) then heres_after=0;
	        if (star.p_large[planet]=0) then txt1+="##The planet had a population of "+string(scr_display_number(floor(pop_before)))+" and "+string(scr_display_number(floor(kill)))+" were purged over the duration of the cleansing.##Heresy has fallen down to "+string(max(0,heres_after))+"%.";
	        if (star.p_large[planet]=1) then txt1+="##The planet had a population of "+string(pop_before)+" billion and "+string(scr_display_number(action_score*12000))+" were purged over the duration of the cleansing.##Heresy has fallen down to "+string(max(0,heres_after))+"%.";
	    }
	}


	if (action_type=DropType.PurgeSelective){
	    var i=0;
	    if (has_problem_planet(planet, "purge", star)){
        	isquest=1;
        	thequest="purge";
        	questnum=i;
	    }

	    if (isquest=1){
	        if (thequest="purge") and (action_score>=10){
	        	remove_planet_problem(planet, "purge", star);
            
	            if (obj_controller.demanding=0) then obj_controller.disposition[4]+=1;
	            if (obj_controller.demanding=1) then obj_controller.disposition[4]+=choose(0,0,1);
            
	            txt1="Your marines drop fast and hard, blowing through guards and mercenaries with minimal resistance.  Before ten minutes have passed all your targets are executed.";        
	            scr_event_log("","Inquisition Mission Completed: The unruly Nobles of "+string(star.name)+" "+string(scr_roman(planet))+" have been purged.");
	            scr_gov_disp(star.name,planet,choose(1,2,3));
	        }
	    }
	    else if (isquest=0){ // TODO add more variation, with planets, features, possibly marine equipment
	        txt1=choose(
				$"Your marines move across {star.name} {scr_roman(planet)}, searching for high profile targets. Once found, they are dragged outside from their lairs. Their execution would soon follow.",
				$"Your marines move across {star.name} {scr_roman(planet)}, rooting out sources of corruption. Heretics are dragged from their lairs and executed in the streets."
				);
    
	        if (star.p_large[planet]=0) then max_kill=action_score*30;// Population if normal
	        if (star.p_large[planet]=1) then max_kill=0;// Population if large
        
	        pop_before=star.p_population[planet];
        
	        heres_before=max(star.p_heresy[planet]+star.p_heresy_secret[planet],star.p_influence[planet][eFACTION.Tau]);// Starting heresy
        
	        // Minimum kills
	        kill=min(action_score*30,pop_before);// How many people ARE going to be killed
        
	        if (star.p_large[planet]=0) then pop_after=pop_before-kill;
	        sci2=round(action_score/50);
	        heres_after=heres_before-sci2;
	        if (pop_before>0) and (pop_after=0) then heres_after=0;

			var nid_influence = star.p_influence[planet][eFACTION.Tyranids];
            if (planet_feature_bool(star.p_feature[planet], P_features.Gene_Stealer_Cult)) {
                var cult = return_planet_features(star.p_feature[planet], P_features.Gene_Stealer_Cult)[0];
                if (cult.hiding) {}
            } else {
                if (nid_influence > 25) {
                    txt1 += "Your forces identified some of the suspected genestealer cultist leaders and associated personnel. They were taken care of, but your marines note the limited effectiveness.  Some suggest more drastic measures - such as purge by fire - to keep genestealer infestation in check.";
                    adjust_influence(eFACTION.Tyranids, -5, planet, star);
                } else if (nid_influence > 0) {
                    txt1 += "Marines noted the traces of a genestealer infestation, your marines handled the few that they managed to locate, but they note the limited effectiveness.  Some suggest a more drastic purge or permament garrison to keep the genestealer infestation in check.";
					adjust_influence(eFACTION.Tyranids, -1, planet, star);
                }
            }
        
	        if (star.p_large[planet]=0) then pop_after=round(pop_after);    
	        if (pop_after<=0) and (pop_before>0) then heres_after=0;
	        if (star.p_large[planet]=0) then txt1+="##The planet had a population of "+string(scr_display_number(floor(pop_before)))+" and "+string(scr_display_number(floor(kill)))+" die over the duration of the search.##Heresy has fallen to "+string(max(0,heres_after))+"%.";
	        if (star.p_large[planet]=1) then txt1+="##The planet had a population of "+string(pop_before)+" billion and "+string(action_score*30)+" die over the duration of the search.##Heresy has fallen to "+string(max(0,heres_after))+"%.";
	    }
	}



	if (action_type=DropType.PurgeAssassinate){
		var aroll=roll_dice_chapter(1, 100, "high");
		var chance = 100;
		// var siz_penalty=0;
		var o=0;
		var yep=0;
    
		// Disposition
		aroll += floor(star.dispo[planet] / 10);

	    // Advantages
		if(scr_has_adv("Ambushers")) then aroll-=10;
		if(scr_has_adv("Lightning Warriors")) then aroll-=5;

	    // Size - unused
	    // if ((action_score > 5) && (action_score <= 10)) { siz_penalty = 5; }
	    // if ((action_score > 10) && (action_score <= 20)) { siz_penalty = 20; }
	    // if ((action_score > 20) && (action_score <= 50)) { siz_penalty = 30; }
	    // if ((action_score > 50) && (action_score <= 100)) { siz_penalty = 50; }
	    // if ((action_score > 100) && (action_score <= 200)) { siz_penalty = 75; }
	    // if (action_score > 200) { siz_penalty = 125; }
    
	    var spec1=0,spec2=0,txt=""; // TODO consider making it a battle with Planetary governor's guards
	    txt="Your assassins descend upon the surface of "+string(star.name)+" "+string(scr_roman(planet))+" and proceed with investigation of the governor's schedule and other useful details.  ";    
	    txt+="Once enough info is collected, plot is set in motion - governor is ambushed "+choose("in their home","in the streets","while driving","in the bathroom")+" and tranquilized.  ";
    
		if(scr_has_disadv("Never Forgive")) then spec1=1;
	    if (global.chapter_name="Space Wolves" || obj_ini.progenitor == ePROGENITOR.SPACE_WOLVES) { spec1=3; }
	    if (global.chapter_name="Iron Hands" || obj_ini.progenitor == ePROGENITOR.IRON_HANDS) { spec1=6; }
	    if (obj_ini.omophagea=1) then spec1=choose(spec1,20);
    
	    if (spec1=1) then txt+="Brought to the already-prepared facilities for Fallen - forced to admit being guilty or even appear a heretic - then disposed.  ";
	    if (spec1=3) then txt+=string(choose("He","He","She"))+" is tossed to the Fenrisian Wolves - the beasts leave nothing but bloody scraps.  ";
	    if (spec1=6) then txt+=string(choose("He","He","She"))+" is scheduled to be turned into a servitor.  Whatever memories, recognizable features that "+string(choose("He","He","She"))+" had, are gone.  ";
	    if (spec1=20){
	        if (action_score>1) then txt+="Your assassins dispose of the governor in a cannibalistic feast.  ";
	        if (action_score=1) then txt+="Your assassin uses cannibalism to dispose of the governor.  ";
	    }
    
	    if (spec1=0){
	        spec2=choose(1,2,3,4,5,5,5);
	        if (spec2=1) then txt+="Acid was used in governor's disposal.  ";
	        if (spec2=2) then txt+="Extreme temperature of a star was used in governor's disposal.  ";
	        if (spec2=3) then txt+="Governor used as fuel for your vessels.  ";
	        if (spec2=4) then txt+="Several explosives were used in disposal.  ";
	        if (spec2=5) then txt+=string(choose("He","He","She"))+" is disposed using a firing squad, with burial.  ";
	    }
    
	    txt+="What is thy will?";
    
	    var pip=instance_create(0,0,obj_popup);
	    pip.title="Planetary Governor Assassinated";
	    pip.text=txt;
	    pip.planet=planet;
	    pip.p_data = new PlanetData(planet,star);
	    var options = [
		    {
		    	str1 : "Allow the official successor to become Planetary Governor.",
		    	choice_func : allow_governor_successor,
		    }, 
		    {
		    	str1 : "Ensure that a sympathetic successor will be the one to rule.",
		    	choice_func : install_sympathetic_successor,
		    },
		    {
		    	str1 : "Remove all successors and install a loyal Chapter Serf.",
		    	choice_func : install_chapter_surf,
		    },
	    ]
	    pip.add_option(options);    
	    pip.cooldown=20;
    
	    // Result-  this is the multiplier for the chance of discovery with the inquisition, can also be used to determine
	    // the new Governor disposition if they are the official successor
	    if (aroll < chance){// Discovered
	        pip.estimate=2;
	    } else if (aroll >= chance){// Success
	        pip.estimate=1;
	    }
	    // If there are enemy forces then they may be used as a cover
	    // TODO - imperial factions should not work for the most part, but perhaps there can be events or deals with faction leaders
	    if (star.p_eldar[planet]>=1) or (star.p_orks[planet]>=1) or (star.p_tau[planet]>=1) or (star.p_tyranids[planet]>=1) or (star.p_traitors[planet]>=1) or (star.p_chaos[planet]>=1) or (star.p_necrons[planet]>=1){
	    	pip.estimate=pip.estimate*0.5;
	    }
	}









	if (action_type!=DropType.PurgeAssassinate){
	    if (isquest=0){// DO EET
	        txt2=txt1;
	        star.p_heresy[planet]-=sci2;
	        star.p_influence[planet][eFACTION.Tau]-=sci2;
	        if (action_type<DropType.PurgeSelective) then star.p_population[planet]=pop_after;
	        if (action_type=DropType.PurgeSelective) and (star.p_large[planet]=0) then star.p_population[planet]=pop_after;
        
	        if (star.p_heresy[planet]<0) then star.p_heresy[planet]=0;
	        if (star.p_influence[planet][eFACTION.Tau]<0) then star.p_influence[planet][eFACTION.Tau]=0;
        
	        var pip=instance_create(0,0,obj_popup);
	        pip.title="Purge Results";
	        pip.text=txt2;
	    }
	    if (isquest==1){// DO EET
	        var pip;pip=instance_create(0,0,obj_popup);
	        pip.title="Inquisition Mission Completed";
	        pip.text=txt1;pip.image="inquisition";
	        // scr_event_log("","Inquisition Mission Completed: The unruly nobles of "+string(star.name)+" "+string(scr_roman(planet))+" have been silenced.");
	    }
	}


	if instance_exists(obj_drop_select){
		if (instance_exists(sh_target)){
			sh_target.acted=5;
		}
		with(obj_drop_select){
			instance_destroy();
		}
		instance_destroy();
	}


}
