
//TODO almost all of this can be handled in the gui layer
try{
    script_execute(scr_ui_manage,0,0,0,0,0);
} catch(_exception){
    show_debug_message(_exception);
    manage = 0;
    menu = 0;

}
try{
    script_execute(scr_ui_advisors,0,0,0,0,0);
} catch(_exception){
    show_debug_message(_exception);
    manage = 0;
    menu = 0;   
}
try{
    script_execute(scr_ui_diplomacy,0,0,0,0,0);
} catch(_exception){
    show_debug_message(_exception);
    manage = 0;
    menu = 0;   
}
try{
    script_execute(scr_ui_settings,0,0,0,0,0);
} catch(_exception){
    show_debug_message(_exception);
    manage = 0;
    menu = 0;   
}

script_execute(scr_ui_popup,0,0,0,0,0);