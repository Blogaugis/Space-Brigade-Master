function scr_return_ship(argument0, argument1, argument2) {

	// argument0: name of ship
	// argument1: object with man_selecting
	// argument2: planet number

	// If an object has specially saved variables, representing marines, this code returns them to their ship after an event.
	// Marines that raid never really leave their ships in-engine.  This is for random events and planetary features.


	var man_size,ship_id,comp,plan,i;
	i=0;ship_id=0;man_size=0;comp=0;plan=0;

	/*repeat(30){
	    i+=1;if (obj_ini.ship[i]=argument0) then ship_id=i;
	}*/
	i=0;

	// Increase ship storage        ship_carrying[i]

	comp=obj_controller.managing;
	if (obj_controller.managing>10) then comp=0;
	obj_controller.return_size=0;






	repeat(140){
	    i+=1;man_size=0;
    
	    // if (i<100) then show_message("Man "+string(i)+" selected?: "+string(argument1.man_sel[i])+"#"+string(obj_ini.role[comp,argument1.ide[i]])+", "+string(obj_ini.armor[comp,argument1.ide[i]]));
	    // if (i<100) then show_message("Man "+string(i)+" selected?: "+string(argument1.man_sel[i])+"#"+string(argument1.ide[i]));
    
    
	    if (argument1.man_sel[i]>0){
	        if (argument1.man[i]="man"){
	            obj_ini.lid[comp,argument1.ide[i]]=argument1.man_sel[i];obj_ini.wid[comp,argument1.ide[i]]=0;
	        }
	        // if (comp!=0) then show_message(comp);
	        // show_message(string(i)+"] ide:"+string(argument1.ide[i])+" = "+string(obj_ini.role[comp,argument1.ide[i]]));
	        if (argument1.man[i]="vehicle"){
	            obj_ini.veh_lid[comp,argument1.ide[i]]=argument1.man_sel[i];obj_ini.veh_wid[comp,argument1.ide[i]]=0;
	        }
       
        
	        // show_message(string(obj_ini.role[comp,argument1.ide[i]])+", "+string(obj_ini.armor[comp,argument1.ide[i]]));
        
	        if (argument1.man[i]!="vehicle") then man_size+=scr_unit_size(obj_ini.armor[comp,argument1.ide[i]],obj_ini.role[comp,argument1.ide[i]],true);
        
	        /*
	       if (argument1.man[i]="man") then man_size+=1;
       
	       if (argument1.man[i]="man") and (string_count("Terminator",obj_ini.armor[comp,argument1.ide[i]])>0) then man_size+=1;
	       if (argument1.man[i]="man") and (obj_ini.armor[comp,argument1.ide[i]]="Tartaros Armor") then man_size+=1;
	       if (argument1.man[i]="man") and (string_count("Dreadnought",obj_ini.armor[comp,argument1.ide[i]])>0) then man_size+=7;
       
	       // if (argument1.man[i]="man") and (obj_ini.mobi[comp,argument1.ide[i]]="Jump Pack") then man_size+=1;
	       if (argument1.man[i]="man") and (obj_ini.role[comp,argument1.ide[i]]="Chapter Master") then man_size+=1;
	       if (argument1.man[i]="man") and (obj_ini.role[comp,argument1.ide[i]]="Harlequin Troupe") then man_size+=4;*/
       
	       if (argument1.man[i]="vehicle"){
	            man_size+=scr_unit_size("",obj_ini.veh_role[comp,argument1.ide[i]],true);
            
	            /*if (obj_ini.veh_role[comp,argument1.ide[i]]="Rhino") then man_size+=10;
	            if (obj_ini.veh_role[comp,argument1.ide[i]]="Predator") then man_size+=10;
	            if (obj_ini.veh_role[comp,argument1.ide[i]]="Land Raider") then man_size+=20;
	            if (obj_ini.veh_role[comp,argument1.ide[i]]="Bike") then man_size+=2;
	            if (obj_ini.veh_role[comp,argument1.ide[i]]="Land Speeder") then man_size+=6;
	            if (obj_ini.veh_role[comp,argument1.ide[i]]="Whirlwind") then man_size+=10;  */
	        }
	        obj_ini.ship_carrying[argument1.man_sel[i]]+=man_size;
	        obj_controller.return_size+=man_size;
	    }
	}

	// obj_ini.ship_carrying[ship_id]+=man_size;




	/*repeat(140){
	    i+=1;
    
    
    
	    if (argument1.man_sel[i]=1){
	        if (obj_controller.man[i]="man"){obj_ini.lid[comp,i]=ship_id;obj_ini.wid[comp,i]=0;}
        
        
	        if (i<10) then show_message(string(argument1.man_sel[i])+" - "+string(ship_id));
        
	        if (obj_controller.man[i]="vehicle"){obj_ini.veh_lid[comp,i]=ship_id;obj_ini.veh_wid[comp,i]=0;}
       
	       if (obj_controller.man[i]="man") then man_size+=1;
	       if (obj_controller.man[i]="man") and (obj_ini.armor[comp,i]="Terminator Armor") then man_size+=1;
	       if (obj_controller.man[i]="man") and (obj_ini.armor[comp,i]="Tartaros Armor") then man_size+=1;
	       if (obj_controller.man[i]="man") and (obj_ini.armor[comp,i]="Dreadnought") then man_size+=7;
	       if (obj_controller.man[i]="man") and (obj_ini.mobi[comp,i]="Jump Pack") then man_size+=1;
	       if (obj_controller.man[i]="man") and (obj_ini.role[comp,i]="Chapter Master") then man_size+=1;
	       if (obj_controller.man[i]="man") and (obj_ini.role[comp,i]="Harlequin Troupe") then man_size+=4;
       
	       if (obj_controller.man[i]="vehicle"){
	            if (obj_ini.veh_role[comp,i]="Rhino") then man_size+=10;
	            if (obj_ini.veh_role[comp,i]="Predator") then man_size+=10;
	            if (obj_ini.veh_role[comp,i]="Land Raider") then man_size+=20;
	            if (obj_ini.veh_role[comp,i]="Bike") then man_size+=2;
	            if (obj_ini.veh_role[comp,i]="Land Speeder") then man_size+=6;
	            if (obj_ini.veh_role[comp,i]="Whirlwind") then man_size+=10;  
	        }
    
	    }
	}

	obj_ini.ship_carrying[ship_id]+=man_size;*/

	// show_message("return size: "+string(return_size));


	// plan=instance_nearest(x,y,obj_star);
	plan=obj_controller.return_object;
	// Probably need to change this
	plan.p_player[argument2]-=obj_controller.return_size;


}
