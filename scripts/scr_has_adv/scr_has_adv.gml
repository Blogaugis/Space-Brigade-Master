/**
 * @arg {String} advantage advantage name e.g. "Scavengers"
 * @return {Bool}
 */
function scr_has_adv(advantage){
	try {
		var result = array_contains(obj_ini.adv, advantage);
	} catch (_exception){
		show_debug_message(_exception);
		result = false;
	}
	return result;
	// var adv_count = array_length(obj_ini.adv);
	// for(var i = 0; i < adv_count; i++){
	// 	if(obj_ini.adv[i] == advantage){
	// 		return true;
	// 	}
	// }
	// return false;
}