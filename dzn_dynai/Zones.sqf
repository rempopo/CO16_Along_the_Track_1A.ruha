
/* *********** This array defines detailed properties of zones ************************** */
[
	"road_patrol" /* Zone Name */
	,"WEST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			1, /* Groups quantity */
			/* Units */
			[
				["CUP_B_RG31_M2_OD_USMC", "Vehicle Road Patrol", ""]
				,["B_Soldier_F", [0,"Gunner"], "kit_fin_r"]
				,["B_Soldier_F", [0,"Driver"], "kit_fin_r"]
				,["B_Soldier_F", [0,"Cargo"], "kit_fin_r"]
				,["B_Soldier_F", [0,"Cargo"], "kit_fin_r"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
,
[
	"patrol_village" /* Zone Name */
	,"WEST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			4, /* Groups quantity */
			/* Units */
			[
				["B_Soldier_F", [], "kit_fin_random"]
				,["B_Soldier_F", [], "kit_fin_random"]
			]
		]
		,[
			1, /* Groups quantity */
			/* Units */
			[
				["B_Soldier_F", ["indoors"], "kit_fin_random"]
				,["B_Soldier_F", ["indoors"], "kit_fin_random"]
				,["B_Soldier_F", ["indoors"], "kit_fin_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]

,
[
	"patrol_checkpoint" /* Zone Name */
	,"WEST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			4, /* Groups quantity */
			/* Units */
			[
				["B_Soldier_F", [], "kit_fin_random"]
				,["B_Soldier_F", [], "kit_fin_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
,
[
	"reinf" /* Zone Name */
	,"WEST",false, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			3, /* Groups quantity */
			/* Units */
			[
				["B_Soldier_F", [], "kit_fin_random"]
				,["B_Soldier_F", [], "kit_fin_random"]
				,["B_Soldier_F", [], "kit_fin_random"]
				,["B_Soldier_F", [], "kit_fin_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]

