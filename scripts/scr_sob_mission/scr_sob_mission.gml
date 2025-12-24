/*
    Mission flow: 
    scr_random_event -> rolls rng for inquis mission
    scr_inquisition_mission -> rolls rng and tests suitable planets for which mission
    mission_inquisition_<mission_name> -> logic and mechanics for spawning the mission and triggering the popup
    scr_popup -> displays the panel with mission details and Accept/Refuse buttons
    obj_popup.Step0 -> find `mission_is_go` section and add necessary event logic for when the player accepts
    scr_mission_functions > mission_name_key -> need to update this so that missions display in the mission log


    Helpers: 
    scr_mission_eta -> given the xy of a _star where the mission is, calculate how long you should have to complete the mission
            Todo? maybe add a disposition influence here so that angy inquisitor gives you less spare time and vice versa
    scr_star_has_planet_with_feature -> given the id of a _star and a `P_features` enum value, check if any planet on that _star has the desired  feature
    star_has_planet_with_forces -> given the id of a _star, and a faction, returns whether or not there are forces present there and in sufficient number
*/


/// @param {Enum.EVENT} event 
function scr_sob_mission(){
function mission_investigate_priest(){
		var stars = scr_get_stars();
		var _valid_stars = array_filter_ext(stars,
		function(_star,index){			
			if (scr_star_has_planet_with_feature(_star, P_features.Ancient_Ruins)){
				var fleet = instance_nearest(_star.x,_star.y,obj_p_fleet);
				if (fleet == undefined || point_distance(_star.x,_star.y,fleet.x,fleet.y)>=160){
					return true;
				}
				return false;
			}
			return false;
		});
		
		if (array_length(_valid_stars) == 0){
			log_error("RE: Investigate Priest, couldn't find a _star");
			exit;
		}
	    	
		var _star = array_random_element(_valid_stars);
		var planet = scr_get_planet_with_feature(_star, P_features.Ancient_Ruins);
		if (planet == -1){
			log_error("RE: Investigate Priest, couldn't pick a planet");
			exit;
		}

		
		var eta = infinity;
	    with(obj_p_fleet){
			if (action!=""){
				continue;
			}
			eta = min(eta, scr_mission_eta(_star.x,_star.y,1));
		}
		eta = min(max(3,eta),100); 
		
		var text=$"You overhear the Ecclesiarchy instructions regarding {string(_star.name)} {scr_roman(planet)}";
		text+=$"  It seems one of the priests there is behaving strangely. We could investigate this ourselves, by landing marines there.";
	    text += $" You have {string(eta)} months until Ecclesiarchy completes own investigation.";
	    scr_popup("Priest Investigation",text,"ecclesiarchy",$"recon|{string(_star.name)}|{string(planet)}|{string(eta)}|");

}
}