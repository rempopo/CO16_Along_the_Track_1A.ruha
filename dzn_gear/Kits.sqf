// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 7 || daytime > 16) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 7 || daytime > 16) then { "NVGoggles_OPFOR" } else { "" }
#define NVG_RU_NIGHT_ITEM	if (daytime < 7 || daytime > 16) then { "rhs_1PN138" } else { "" }
#define BINOCULAR_ITEM		"ACE_Vector"
#define LASER_NIGHT_ITEM 	if (daytime < 7 || daytime > 16) then { "rhs_acc_perst1ik_ris" } else { "" }

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_RU_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_RU_NIGHT_ITEM, BINOCULAR_ITEM

#define ASSIGNED_ITEMS_FIN		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L_FIN	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************
#define RU_HELM ["CUP_H_RUS_6B47_v2_Summer","CUP_H_RUS_6B47_v2_GogglesDown_Summer","CUP_H_RUS_6B47_v2_GogglesUp_Summer"]
#define RU_HEAD ["CUP_G_RUS_Balaclava_Ratnik","CUP_G_RUS_Balaclava_Ratnik_v2","CUP_RUS_Balaclava_grn","CUP_RUS_Balaclava_emr"]
#define RU_SCOPE ["CUP_optic_1p63","CUP_optic_ekp_8_02","CUP_optic_Kobra"]

kit_ru_pl = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_Ratnik_Summer","CUP_Vest_RUS_6B45_Sh117","tf_mr3000_rhs",RU_HELM,RU_HEAD],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74M","CUP_30Rnd_545x39_AK74M_M",["",LASER_NIGHT_ITEM,RU_SCOPE,""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["Chemlight_red",2],["PRIMARY MAG",8],["rhs_mag_rgd5",3],["rhs_mag_rdg2_white",3],["CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ru_sl = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_Ratnik_Summer","CUP_Vest_RUS_6B45_Sh117","tf_mr3000_rhs",RU_HELM,RU_HEAD],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74M","CUP_30Rnd_545x39_AK74M_M",["",LASER_NIGHT_ITEM,RU_SCOPE,""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["Chemlight_red",2],["PRIMARY MAG",8],["rhs_mag_rgd5",3],["rhs_mag_rdg2_white",3],["CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ru_mg = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_Ratnik_Summer","CUP_Vest_RUS_6B45_Sh117_PKP","",RU_HELM,RU_HEAD],
	["<PRIMARY WEAPON >>  ","CUP_lmg_Pecheneg","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",["","","CUP_optic_PechenegScope",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",3]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ru_at = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_Ratnik_Summer","CUP_Vest_RUS_6B45_Sh117","rhs_rpg_empty",RU_HELM,RU_HEAD],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74M","CUP_30Rnd_545x39_AK74M_M",["","",RU_SCOPE,""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG7V","CUP_PG7VL_M",["","","CUP_optic_PGO7V3",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",12]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",1]]]
];
kit_ru_aat = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_Ratnik_Summer","CUP_Vest_RUS_6B45_Sh117","rhs_rpg_empty",RU_HELM,RU_HEAD],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74M","CUP_30Rnd_545x39_AK74M_M",["","",RU_SCOPE,""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",12]]],
	["<BACKPACK ITEMS >> ",[["CUP_PG7VL_M",1],["CUP_PG7VM_M",1]]]
];
kit_ru_ss = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_Ratnik_Summer","CUP_Vest_RUS_6B45_Sh117_VOG","",RU_HELM,RU_HEAD],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74M_GL","CUP_30Rnd_545x39_AK74M_M",["",LASER_NIGHT_ITEM,RU_SCOPE,""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_mag_rdg2_white",1],["PRIMARY MAG",9],["CUP_1Rnd_HE_GP25_M",8],["CUP_1Rnd_SMOKE_GP25_M",2],["CUP_1Rnd_SmokeRed_GP25_M",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ru_gr = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_Ratnik_Summer","CUP_Vest_RUS_6B45_Sh117_VOG","",RU_HELM,RU_HEAD],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74M_GL","CUP_30Rnd_545x39_AK74M_M",["","",RU_SCOPE,""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_mag_rdg2_white",1],["PRIMARY MAG",9],["CUP_1Rnd_HE_GP25_M",13]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ru_r = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_Ratnik_Summer","CUP_Vest_RUS_6B45_Sh117_VOG","CUP_O_RUS_Patrol_bag_Summer_Shovel",RU_HELM,RU_HEAD],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74M","CUP_30Rnd_545x39_AK74M_M",["","","CUP_optic_PechenegScope",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG26_Loaded","CUP_RPG26_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",13],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["ACE_EntrenchingTool",1],["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",3]]]
];
kit_ru_mm = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_Ratnik_Summer","CUP_Vest_RUS_6B45_Sh117_VOG","CUP_O_RUS_Patrol_bag_Summer_Shovel",RU_HELM,RU_HEAD],
	["<PRIMARY WEAPON >>  ","rhs_weap_svdp","CUP_10Rnd_762x54_SVD_M",["","","rhs_acc_pso1m2",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG26_Loaded","CUP_RPG26_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["rhs_10Rnd_762x54mmR_7N14",15]]],
	["<BACKPACK ITEMS >> ",[["ACE_EntrenchingTool",1],["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",3]]]
];
kit_ru_pilot = [
	["<EQUIPEMENT >>  ","rhs_uniform_df15","","","rhs_gssh18",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];
cargo_kit_ru_ammo = [
	[["rhs_weap_rpg26",2],["rhs_weap_rshg2",2]],
	[["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",15],["CUP_30Rnd_545x39_AK74M_M",25],["rhs_mag_rgd5",20],["rhs_mag_rdg2_white",15],["CUP_1Rnd_HE_GP25_M",30],["CUP_10Rnd_762x54_SVD_M",25],["CUP_PG7VL_M",1],["CUP_PG7VM_M",1]],
	[["ACE_EntrenchingTool",4],["ACE_fieldDressing",20],["ACE_packingBandage",10],["ACE_elasticBandage",10],["ACE_tourniquet",5],["ACE_morphine",5],["ACE_epinephrine",5],["ACE_quikclot",10],["ACE_CableTie",5],["ACE_Flashlight_XL50",5],["ACE_EarPlugs",5]],
	[["CUP_O_RUS_Patrol_bag_Summer_Shovel",7]]
];

//Finnish Armed Forces
#define FIN_UNI ["FDF_fat_m05_worn","FDF_fat_rs_m05_worn"]
#define FIN_HELM ["FDF_hel_m05_worn","FDF_hel_m05"]
#define FIN_HEAD ["CUP_RUS_Balaclava_grn",""]
kit_fin_random = [
"kit_fin_r"
,"kit_fin_mg"
,"kit_fin_lat"
,"kit_fin_r"
,"kit_fin_mm"
,"kit_fin_r"
,"kit_fin_r"
,"kit_fin_r"
];
kit_fin_r = [
	["<EQUIPEMENT >>  ",FIN_UNI,"CUP_V_B_Interceptor_Rifleman_Olive","",FIN_HELM,FIN_HEAD],
	["<PRIMARY WEAPON >>  ","hlc_rifle_RK62_ris","hlc_30Rnd_762x39_b_ak_Valmet",["","","CUP_optic_ACOG_TA01B_Black_PIP",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_FIN],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_fin_mg = [
	["<EQUIPEMENT >>  ",FIN_UNI,"CUP_V_B_Interceptor_Rifleman_Olive","CUP_B_USMC_AssaultPack",FIN_HELM,FIN_HEAD],
	["<PRIMARY WEAPON >>  ","CUP_lmg_PKM","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_FIN],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];
kit_fin_lat = [
	["<EQUIPEMENT >>  ",FIN_UNI,"CUP_V_B_Interceptor_Rifleman_Olive","",FIN_HELM,FIN_HEAD],
	["<PRIMARY WEAPON >>  ","hlc_rifle_RK62","hlc_30Rnd_762x39_b_ak_Valmet",["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_M72A6_Loaded","CUP_M72A6_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_FIN],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_fin_mm = [
	["<EQUIPEMENT >>  ",FIN_UNI,"CUP_V_B_Interceptor_Rifleman_Olive","",FIN_HELM,FIN_HEAD],
	["<PRIMARY WEAPON >>  ","CUP_srifle_SVD","CUP_10Rnd_762x54_SVD_M",["","","CUP_optic_PSO_1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_FIN],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",12]]],
	["<BACKPACK ITEMS >> ",[]]
];