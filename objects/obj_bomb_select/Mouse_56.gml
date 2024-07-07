// Sets the target based on the mouse click, sets the bombardment score for when the player bombards the target
var __b__;
__b__ = action_if_number(obj_saveload, 0, 0);
if (__b__){
    var xx, yy;
    xx=__view_get( e__VW.XView, 0 );
    yy=__view_get( e__VW.YView, 0 );

    with(obj_star_select){instance_deactivate_object(id);}

    var why=0,onceh=0, ship=0;
        
    if (targets>1) and (obj_controller.cooldown<=0) and (mouse_y>=yy+336) and (mouse_y<yy+351){
        if (mouse_x>=xx+309) and (mouse_x<xx+332){
            target-=1;
            obj_controller.cooldown=8;
            switch (target) {
                case 1:
                    target = 10;
                    break;
                case 10:
                    if (traitors + chaos == 0) {
                        target = 9;
                    }
                    break;
                case 9:
                    if (tyranids < 5) {
                        target = 8;
                    }
                    break;
                case 8:
                    if (tau == 0) {
                        target = 7;
                    }
                    break;
                case 7:
                    if (ork == 0) {
                        target = 6;
                    }
                    break;
                case 6:
                    if (eldar == 0) {
                        target = 5;
                    }
                    break;
                case 5:
                    if (sisters == 0) {
                        target = 3;
                    }
                    break;
                case 3:
                    if (mechanicus == 0) {
                        target = 2.5;
                    }
                    break;
                case 2.5:
                    if (pdf == 0) {
                        target = 2;
                    }
                    break;
                case 1.5:
                    target = 2;
                    break;
                case 2:
                    if (imp + pdf == 0) {
                        target = 10;
                    }
                    break;
                default:
                    target = 0;
                    break;
            }
        }
        if (mouse_x>=xx+493) and (mouse_x<xx+516){
            obj_controller.cooldown=8;
            
            switch (target) {
            case 2.5:
                if (pdf == 0) {
                    target = 3;
                } else {
                    target += 0.5;
                }
                break;
            case 1:
                target = 2;
                break;
            case 2:
                if (imp == 0) {
                    target = 2.5;
                }
                break;
            case 3:
                if (mechanicus == 0) {
                    target = 5;
                }
                break;
            case 5:
                if (sisters == 0) {
                    target = 6;
                }
                break;
            case 6:
                if (eldar == 0) {
                    target = 7;
                }
                break;
            case 7:
                if (ork == 0) {
                    target = 8;
                }
                break;
            case 8:
                if (tau == 0) {
                    target = 9;
                }
                break;
            case 9:
                if (tyranids < 5) {
                    target = 10;
                }
                break;
            case 10:
                if (chaos + traitors == 0) {
                    target = 2;
                }
                break;
            default:
                target = 0;
                break;
            }
        }
    }    

    bomb_score=0;
    for(var i=1; i<=25; i++){
        if (ship_all[i]==1){
            if (obj_ini.ship_class[ship_ide[i]]=="Battle Barge") then bomb_score+=3;
            if (obj_ini.ship_class[ship_ide[i]]=="Strike Cruiser") then bomb_score+=1;
        }
    }

    // TODO Need to change max_ships to something more meaningful to make sure that SOMETHING is dropping
    if (obj_controller.cooldown<=0){
        if (ships_selected>0) and point_in_rectangle(mouse_x, mouse_y, bombard_button[0], bombard_button[1], bombard_button[2], bombard_button[3]){
            obj_controller.cooldown=30;
            
            var str=0;
            // TODO a centralised point to be able to fetch display names from factions identifying number
            switch (target) {
                case 2:
                    str = imp;
                    break;
                case 2.5:
                    str = pdf;
                    break;
                case 3:
                    str = mechanicus;
                    break;
                case 5:
                    str = sisters;
                    break;
                case 6:
                    str = eldar;
                    break;
                case 7:
                    str = ork;
                    break;
                case 8:
                    str = tau;
                    break;
                case 9:
                    str = tyranids;
                    break;
                case 10:
                    str = max(traitors, chaos);
                    break;
                default:
                    str = 0;
                    break;
            }           
            // Start bombardment here
            scr_bomb_world(p_target,obj_controller.selecting_planet,target,bomb_score,str);
        }
    }
    instance_activate_object(obj_star_select);
}
