/// @description Test the stuff that will break

//manually add all of the splash screens
Splash[9] = spr_breakthecode_Splash9;
Splash[8] = spr_breakthecode_Splash8;
Splash[7] = spr_breakthecode_Splash7;
Splash[6] = spr_breakthecode_Splash6;
Splash[5] = spr_breakthecode_Splash5;
Splash[4] = spr_breakthecode_Splash4;
Splash[3] = spr_breakthecode_Splash3;
Splash[2] = spr_breakthecode_Splash2;
Splash[1] = spr_breakthecode_Splash1;
Splash[0] = spr_breakthecode_Splash0;

randomise(); //hey, we got our seed done

//Choose the splash screen
sprite_index = Splash[irandom_range(0,9)];

//wait until the splash screen has been rendered to do stuff
alarm[0] = 1;