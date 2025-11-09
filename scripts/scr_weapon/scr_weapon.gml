global.weapons = {
	// Might as well try to sort stuff chronologically, I guess?
	// Tribal tier weapons
	"Wooden Spear": {
		"abbreviation": "WdnSpear",
		"attack": {
			"standard": 30,
			"master_crafted": 40,
			"artifact": 50
		},
		"description": "A stick with one end sharpened to a point, which may also be fire-hardened. Usually seen used by primitives and ferals.",
		"melee_hands": 1,
		"ranged_hands": 0.5,
		"ammo": 0,
		"range": 1,
		"spli": 3,
		"arp": 0,
		// "special_properties": ["Parry"], - "Parry" might be too much for wood at this rate
		"tags": ["spear", "martial", "primitive"],
	},
	"Wooden Club": {
		"abbreviation": "WdnClb",
		"attack": {
			"standard": 30,
			"master_crafted": 40,
			"artifact": 50
		},
		"description": "The most primitive weapon known to man since ancient times - a heavy stick. To bash skulls of foes with.",
		"melee_hands": 1,
		"ranged_hands": 0.5,
		"ammo": 0,
		"range": 1,
		"spli": 3,
		"arp": 0,
		"tags": ["martial", "primitive"],
	},
	"Ritual Stone Knife": {
		"abbreviation": "RtlStnKnf",
		"attack": {
			"standard": 30,
			"master_crafted": 40,
			"artifact": 50
		},
		"description": "A stone knife, with inscribed runes. Usually seen used by shamans and cult leaders in various rituals and sacrifices. \nTo forge - Rune Analysis.",
		"melee_hands": 0.25,
		"ranged_hands": 0.1,
		"ammo": 0,
		"range": 1,
		"spli": 5,
		"arp": 0,
		"special_description": "Spell damage +10%",
		"tags": ["force", "knife", "primitive"],
		"specials": {
			"psychic_amplification": 10
		},
		"maintenance" : 0.01,
	},
	"Stone Hammer": {
		"abbreviation": "StnHmmr",
		"attack": {
			"standard": 30,
			"master_crafted": 40,
			"artifact": 50
		},
		"description": "A flattened rock attached to a piece of wood. A very primitive tool.",
		"melee_hands": 0,
		"ranged_hands": 0,
		"ammo": 0,
		"range": 1,
		"spli": 3, // I'm thinking it might be a good idea to have 'alternative attacks' - like power attack, with low spli, but higher attack, or swing strike with high spli but less damage.
		"arp": 0,
	},
	"Bow": {
		"abbreviation": "Bow",
		"attack": { // Logically, we should tie attack power to the strength of the user - and the weapon's capability to stay functional with that strength applied to it.
			"standard": 30,
			"master_crafted": 40,
			"artifact": 50
		},
		"description": "A primitive ranged weapon, typically made from wood, relying on the strength of the user.",
		"melee_hands": 1,
		"ranged_hands": 1.25, // 1 hand is used to hold the bow itself, while the arrow can be pulled by just 2 fingers.
		"ammo": 10,
		"range": 5, // Should probably also be affected by strength stat of the user
		"spli": 3, // Should be affected by agility, I guess? How quickly can a person pull an arrow out of a quiver, install in the bow, aim, apply force and release.
		"arp": 0, // Also Strength, if we want to go into depth with this?
	},
	"Sling": {
		"abbreviation": "Slng",
		"attack": { // Same as bow above
			"standard": 30,
			"master_crafted": 40,
			"artifact": 50
		},
		"description": "A primitive ranged weapon, allows throwing pebbles and similar 'ammunition' further.",
		"melee_hands": 1,
		"ranged_hands": 1.25, // 1 hand is used to hold the bow itself, while the arrow can be pulled by just 2 fingers.
		"ammo": 10,
		"range": 4, // Should probably also be affected by strength stat of the user
		"spli": 3, // Should be affected by agility, I guess? How quickly can a person pick a pebble up, install in the sling, aim, apply force and release.
		"arp": 0, // Also Strength, if we want to go into depth with this?
	},
	// Early Conventional Weapons
	"Crossbow": {
		"abbreviation": "Crsbow",
		"attack": {
			"standard": 45,
			"master_crafted": 60,
			"artifact": 75
		},
		"description": "A simple ranged weapon, typically made from wood. \nTo forge - Early Mechanisms.",
		"melee_hands": 1,
		"ranged_hands": 1.25, 
		"ammo": 10,
		"range": 5, // Should probably also be affected by strength stat of the user
		"spli": 4, // Should be affected by agility, I guess? How quickly can a person pull an arrow out of a quiver, install in the bow, aim, apply force and release.
		"arp": 0, // Also Strength, if we want to go into depth with this?
		"maintenance" : 0.01,
	},
	"Iron Sword": {
		"abbreviation": "IrnSrd",
		"attack": {
			"standard": 75,
			"master_crafted": 90,
			"artifact": 105
		},
		"melee_mod": {
			"standard": 5,
			"master_crafted": 10,
			"artifact": 15
		},
		"description": "A sword made out of simple to forge metals, in this case iron. \nTo forge - Early Metallurgy.",
		"melee_hands": 1,
		"ranged_hands": 0.25,
		"ammo": 0,
		"range": 1,
		"spli": 6,
		"arp": 0,
		"tags": ["sword", "primitive"],
		"maintenance" : 0.01,
	},
	"Ritual Iron Sword": {
		"abbreviation": "RtlIrnSrd",
		"attack": {
			"standard": 75,
			"master_crafted": 90,
			"artifact": 105
		},
		"melee_mod": {
			"standard": 5,
			"master_crafted": 10,
			"artifact": 15
		},
		"description": "A sword made out of simple to forge metals, in this case iron. This one has inscribed runes. \nTo forge - Early Metallurgy, Rune Analysis.",
		"melee_hands": 1,
		"ranged_hands": 0.25,
		"ammo": 0,
		"range": 1,
		"spli": 6,
		"arp": 0,
		"special_description": "Spell damage +10%",
		"tags": ["force" ,"sword", "primitive"],
		"specials": {
			"psychic_amplification": 10
		},
		"maintenance" : 0.02,
	},
	"Iron Hammer": {
		"abbreviation": "IrnHmr",
		"attack": {
			"standard": 75,
			"master_crafted": 90,
			"artifact": 105
		},
		"description": "A hammer made out of simple to forge metals, in this case iron.",
		"melee_hands": 0,
		"ranged_hands": 0,
		"ammo": 0,
		"range": 1,
		"spli": 3,
		"arp": 0,
		"tags": ["martial", "primitive"],
	},
	// Late Conventional Weapons
	"Steel Sword": {
		"abbreviation": "StlSrd",
		"attack": {
			"standard": 105,
			"master_crafted": 130,
			"artifact": 150
		},
		"melee_mod": {
			"standard": 5,
			"master_crafted": 10,
			"artifact": 15
		},
		"description": "A sword made out of steel. Lacking power field, it's damage and parry capabilities are limited. \nTo forge - Advanced Metallurgy.",
		"melee_hands": 1,
		"ranged_hands": 0.25,
		"ammo": 0,
		"range": 1,
		"spli": 6,
		"arp": 0,
		"tags": ["sword"],
		"maintenance" : 0.01,
	},
	"Ritual Steel Sword": {
		"abbreviation": "RtlStlSwrd",
		"attack": {
			"standard": 105,
			"master_crafted": 130,
			"artifact": 150
		},
		"melee_mod": {
			"standard": 5,
			"master_crafted": 10,
			"artifact": 15
		},
		"description": "A sword made out of steel. Lacking power field, it's damage and parry capabilities are limited. This one has inscribed runes. \nTo forge - Advanced Metallurgy, Rune Analysis.",
		"melee_hands": 1,
		"ranged_hands": 0.25,
		"ammo": 0,
		"range": 1,
		"spli": 6,
		"arp": 1,
		"special_description": "Spell damage +10%",
		"tags": ["force", "sword"],
		"specials": {
			"psychic_amplification": 10
		},
		"maintenance" : 0.03,
	},
	//30k Weapons
	//Volkite Pack
	"Volkite Culverin": {
		"abbreviation": "VolkCul",
		"attack": {
			"standard": 700,
			"master_crafted": 720,
			"artifact": 740
		},
		"description": "The only man-portable heavy support Volkite, the Culverin has been a dreaded presence on the battlefields of the 31st millennium, where it would rend Contemptors apart and combust Marines by the dozen. Featuring the greatest range out of the family amongst the other heavier variants, its beam potency is outmatched by all heavier Volkites.",
		"melee_hands": 1,
		"ranged_hands": 2.2,
		"ammo": 4,
		"range": 22,
		"spli": 12,
		"arp": 0,
		"tags": ["Volkite", "energy"]
	},
	"Volkite Caliver": {
		"abbreviation": "VolkCal",
		"attack": {
			"standard": 550,
			"master_crafted": 570,
			"artifact": 590
		},
		"description": "Featuring grater range, more precise fire and more stopping fire than the Charger, this is the rifle of the Volkite family, whereas its smaller brother is the assault rifle. A weapon most prominent in Tactical squads of the Great Crusade Legions, its potency is spoken of even those many thousands of years past their height.",
		"melee_hands": 1,
		"ranged_hands": 2,
		"ammo": 6,
		"range": 16,
		"spli": 10,
		"arp": 0,
		"tags": ["Volkite", "energy"]
	},
	"Volkite Charger": {
		"abbreviation": "VolkCharg",
		"attack": {
			"standard": 400,
			"master_crafted": 420,
			"artifact": 440
		},
		"description": "One of the deadliest of the mainstay weapons in the Imperial arsenal during the Great Crusade. The humble Charger is a thermal ray weapon that deflagrates organic matter, combusting the target in extreme cases. Some variants even arc over multiple targets.",
		"melee_hands": 1,
		"ranged_hands": 2,
		"ammo": 10,
		"range": 10,
		"spli": 6,
		"arp": 0,
		"tags": ["Volkite", "energy"]
	},
	"Volkite Serpenta": {
		"abbreviation": "VolkSerp",
		"attack": {
			"standard": 250,
			"master_crafted": 270,
			"artifact": 290
		},
		"description": "The pistol variant of the long-lost Volkite weapon type, the Serpenta was a mainstay of Moritats and often wielded by Centurions of the Legiones Astartes. Now a symbol of status to match its fearsome potency, a sighting of this ancient weapon would send many foes running.",
		"melee_hands": 0,
		"ranged_hands": 1,
		"ammo": 10,
		"range": 3,
		"spli": 4,
		"arp": 0,
		"tags": ["Volkite", "energy", "pistol"]
	},
	"Twin-linked Volkite Culverins":{
		"abbreviation": "T-LVolkCulv",
		"attack": {
			"standard": 250,
			"master_crafted": 270,
			"artifact": 290
		},
		"description": "Mounted mostly on Contemptor dreadnoughts, twin-linked Volkite Culverins spit devastating energy beams that rend heavily armored targets and ignite volatile systems. Fired together with surgical precision, their overlapping beams punish evasive maneuvers and hollow out fortifications in a single, red-hot pass.",
		"melee_hands": 0,
		"ranged_hands": 1,
		"ammo": 10,
		"range": 3,
		"spli": 4,
		"arp": 0,
		"tags": ["Volkite", "energy", "dreadnought"]
	},
	//Bolt Pack
	"Phobos Bolt Pistol": {
		"abbreviation": "PhBltPis",
		"attack": {
			"standard": 38,
			"master_crafted": 43,
			"artifact": 48
		},
		"description": "The shortened version of the Phobos Bolgun, this pistol like its brother features a .70 bolt and less bulk than its successors. Despite its most venerable origin it features better quality basic components than its modern counterparts but lacks anything more advanced than its simple firing mechanism and basic optics.",
		"melee_hands": 0,
		"ranged_hands": 1,
		"ammo": 20,
		"range": 3.5,
		"spli": 2,
		"arp": 0,
		"tags": ["bolt", "pistol"]
	},
	"Phobos Bolter": {
		"abbreviation": "PhBltr",
		"attack": {
			"standard": 75,
			"master_crafted": 80,
			"artifact": 85
		},
		"description": "Created at the conception of the Imperium, this very first bolter pattern features a .70 caliber bolt as opposed to the 41st millennium's standard .75. Its form is far less bulky than the Godwyn, most prevalent in the modern Astartes armouries. Simpler in design in theory but required higher-tech components than what is currently available, so when the Heresy ended and the weaponry was streamlined for less logistical effort, the older patterns, such as the venerable Phobos, were phased out.",
		"melee_hands": 1,
		"ranged_hands": 2,
		"ammo": 20,
		"range": 13,
		"spli": 3,
		"arp": 0,
		"tags": ["bolt"]
	},
	"Mars Heavy Bolter": {
		"abbreviation": "MarsHvyBltr",
		"attack": {
			"standard": 400,
			"master_crafted": 430,
			"artifact": 460
		},
		"description": "This is the prototype that turned into the staple of all Heavy Bolter designs. Introduced in early Great Crusade, it was one of the very first heavy support weapons churned out by the forges of Mechanicum.",
		"melee_hands": 1,
		"ranged_hands": 2.2,
		"ammo": 12,
		"range": 17,
		"spli": 9,
		"arp": 1,
		"tags": ["heavy_ranged", "bolt"]
	},
	"Tigris Combi Bolter": {
		"abbreviation": "TigComBltr",
		"attack": {
			"standard": 100,
			"master_crafted": 120,
			"artifact": 140
		},
		"description": "During the Great Crusade, there came a need for a hand-held weapon of high rate of fire and respectable firepower that's easy to manufacture. Some Techpriest, or perhaps a Techmarine, put two bolters together and thus the Combi-Bolter was born. Phased out by the Storm Bolter, it is nevertheless a respectable weapon and a relic of more civilised times.",
		"melee_hands": 1.1,
		"ranged_hands": 1.1,
		"ammo": 14,
		"range": 19,
		"spli": 11,
		"arp": 0,
		"tags": ["bolt"]
	},
	//Plasma Pack
	"Ryza Plasma Gun": {
		"abbreviation": "RyzPlsmGn",
		"attack": {
			"standard": 325,
			"master_crafted": 350,
			"artifact": 375
		},
		"description": "One of many Plasma weapon patterns that came from the famed Forge World of Ryza. With its characteristic purple glow, alongside slight curvatures of the design, the mark of its forgeworld is impossible to miss. Featuring greater range and accuracy as well as pure stopping power, this is a weapon that even Terminators should fear to face.",
		"melee_hands": 1,
		"ranged_hands": 2,
		"ammo": 18,
		"range": 14,
		"spli": 5,
		"arp": 1,
		"tags": ["plasma", "energy"]
	},
	"Ryza Plasma Pistol": {
		"abbreviation": "RyzPlsmPis",
		"attack": {
			"standard": 145,
			"master_crafted": 160,
			"artifact": 175
		},
		"description": "The smaller brother of the Ryzan Plasma Gun, it shares its characteristics as well as sleek design and purple glow. Once a regular weapon for Sergeants and some Moritats in the Legiones Astartes, with even some Consuls or Centurions favouring them over Volkites or Disintegrators, the humble Ryzan Plasma Pistol has earned its place as a vaunted relic of any armoury lucky enough to have it.",
		"melee_hands": 1,
		"ranged_hands": 2,
		"ammo": 18,
		"range": 14,
		"spli": 5,
		"arp": 1,
		"tags": ["plasma", "energy", "pistol"]
	},
	"Mars Plasma Cannon": {
		"abbreviation": "MarsPlsmCnn",
		"attack": {
			"standard": 650,
			"master_crafted": 700,
			"artifact": 750 //I think that usual 25% increase will be too much for that weapon so applied +150.
		},
		"description": "An ancient Plasma Cannon variant born in the bowels of Mother Mars. Once a staple of heavy weapons squads in the time of Legiones Astartes, now a revered relic with power beyond compare with any modern weapons, even those made in the forges of Mars and Ryza in this dark age. Sharing some design and components with Ryzan patterns, it features the same purple glow that makes them so easily distinguishable.",
		"melee_hands": 1,
		"ranged_hands": 3,
		"ammo": 18,
		"range": 16,
		"spli": 8,
		"arp": 1,
		"tags": ["plasma", "energy"]
	},
	//Melta Pack
	"Primus Melta Gun": {
		"abbreviation": "PrimMltGn",
		"attack": {
			"standard": 560,
			"master_crafted": 585,
			"artifact": 610
		},
		"description": "The Primus MK II Meltagun's origins have been lost to history, but the knowledge of its power and their bearers who served in the Legiones Astartes remains. Some theories have been made to its Ryzan origins due to the curvature of the body, but the famous Forge World denies those claims.",
		"melee_hands": 1,
		"ranged_hands": 2,
		"ammo": 6,
		"range": 2.5,
		"spli": 2,
		"arp": 1,
		"tags": ["melta", "energy", "boarding"]
	},
	"Proteus Multi-Melta": {
		"abbreviation": "ProtMltMelt",
		"attack": {
			"standard": 1000,
			"master_crafted": 1100,
			"artifact": 1200
		},
		"description": "This Multi-Melta design originates, like many others used by Legiones Astartes, in the Dark Age of Technology. Deadlier than the current designs fielded by the Space Marine Chapters, it is a relic of both of the zenith of mankind's science and the last moments of the Emperor's true vision.",
		"melee_hands": 1,
		"ranged_hands": 2,
		"ammo": 6,
		"range": 4.5,
		"spli": 2,
		"arp": 1,
		"tags": ["melta", "energy", "boarding"]
	},
	//Flamer Pack
	"Phaestos Flamer": {
		"abbreviation": "PhFlmr",
		"attack": {
			"standard": 430,
			"master_crafted": 585,
			"artifact": 610
		},
		"description": "The Phaestos-pattern Flamer is a stark reminder of the time where Mankind's future was yet unmolested by the decaying stench of the Horus Heresy. Oddly shaped for the modern users, it is nonetheless not to be underestimated and its potent promethium-fueled flame has burned through armours of unnumbered heroes.",
		"melee_hands": 1,
		"ranged_hands": 2,
		"ammo": 6,
		"range": 2.5,
		"spli": 6,
		"arp": -1,
		"tags": ["flame"] //Shouldn't it also feature "boarding"?
	},
	//Melee Pack
	"Power Scythe": {
		"abbreviation": "PwrSct",
		"attack": {
			"standard": 250,
			"master_crafted": 300,
			"artifact": 350
		},
		"melee_mod": {
			"standard": 1,
			"master_crafted": 1.1,
			"artifact": 1.2
		},
		"description": "One of many Power Weapon types made in the nascent Imperium, the Power Scythes never truly became a staple of any large force outside of specialist elements, and when even those faded into obscurity or went traitor, the production of the Power Scythes was halted. Since then few remain in Imperial use, and most can be found in hands of foul traitors.",
		"melee_hands": 2,
		"ranged_hands": 1,
		"ammo": 0,
		"range": 1.5,
		"spli": 6,
		"arp": 1,
		"tags": ["power",]
	},
	//Laser Pack
	"Ryza Lascannon": {
		"abbreviation": "RyzLascnn",
		"attack": {
			"standard": 750,
			"master_crafted": 800,
			"artifact": 850
		},
		"description": "The Forge World of Ryza is known not only for its mastery of Plasma weaponry, but also for its genius in Las weapon designs. This revered Ryzan Lascannon pattern can be dated to the Great Crusade, and as such it is the pinnacle of its kind as the Imperium was then. A common sight across the Legiones Astartes heavy support squads as well as Solar Auxilia, any Chapter blessed with one should count themselves lucky.",
		"melee_hands": 1,
		"ranged_hands": 2.25,
		"ammo": 10,
		"range": 24,
		"spli": 1,
		"arp": 1,
		"tags": ["heavy_ranged", "las", "energy"]
	},
	//misc pack
	"Cthon Autocannon": {
		"abbreviation": "CthAutocnn",
		"attack": {
			"standard": 480,
			"master_crafted": 520,
			"artifact": 560
		},
		"description": "Originating from the Warmaster's homeworld [allegedly untrue] of Cthonia, this Autocannon pattern was the chosen type of this weapon for Terminator Squads throughout the Great Crusade and subsequent Horus Heresy. While later designs may have outshined it in fire rate or range, this remains the hardest hitting autocannon to date, perhaps with the Kalibrax as a strong competitor.",
		"melee_hands": 1,
		"ranged_hands": 2.25,
		"ammo": 30,
		"range": 20,
		"spli": 15,
		"arp": 1,
		"tags": ["heavy_ranged", "dreadnought"]
	},
	//40k weapons
	 // Melee
  "Boarding Shield": {
    "description":"Protects twice as well when boarding. Used in siege or boarding operations, this shield offers additional protection.  It may be used with a 2-handed ranged weapon. \nTo forge - Advanced Metallurgy.",
    "abbreviation": "BrdShld",
    "attack": {
      "standard": 45,
      "master_crafted": 50,
      "artifact": 55
    },
    "armour_value": {
        "standard": 4,
        "master_crafted": 5,
        "artifact": 6
    } ,
    "damage_resistance_mod": {
      "standard": 5, // Adjusted
      "master_crafted": 5, // Adjusted
      "artifact": 5 // Adjusted
    },
    "melee_hands": 0.1,
	"ranged_hands": 0.1,
     "tags":["shield","boarding"],
     "units_whitelist": ["astartes", "terminator"],
	 "maintenance" : 0.01,
  },
  "Storm Shield": {
    "description":"Protects twice as well when boarding. A powered shield that must be held with a hand.  While powered by the marines armour it shimmers with blue energy.",
    "abbreviation": "StrmShld",
    "attack": {
      "standard": 95,
      "master_crafted": 105,
      "artifact": 110
    },
    "armour_value": {
        "standard": 8,
        "master_crafted": 10,
        "artifact": 12
    } ,
    "damage_resistance_mod": {
      "standard": 5, // Adjusted
      "master_crafted": 5, // Adjusted
      "artifact": 5 // Adjusted
    },
    "melee_hands": 0.9,
    "ranged_hands":0.9,
    "tags":["shield","boarding"],
    "units_whitelist": ["astartes", "terminator"],
	"maintenance" : 0.04,
  },
    "Combat Knife": {
        "abbreviation": "CbKnf", 
        "attack": {
            "standard": 100,
            "master_crafted": 150,
            "artifact": 200
        },
        "description": "More a sword than a knife for average mortals, this blade, otherwise known as Legion Combat Knife, is a deadly weapon in the hand of a Space Marine. \nTo forge - Advanced Metallurgy.",
        "melee_hands": 0.25,
        "ranged_hands": 0.1,
        "ammo": 0,
        "range": 1,
        "spli": 3,
        "arp": 0,
        "tags":["knife"],
		"maintenance" : 0.01,
    },
    "Chainsword": {
        "abbreviation": "ChnSrd",
        "attack": {
            "standard": 300,
            "master_crafted": 400,
            "artifact": 500
        },
        "description": "A standard Chainsword. It is popular among Assault Marines due to their raw power while maintaining speed. \nTo forge - Chain Weaponry.",
        "melee_hands": 1,
        "ranged_hands": 0.25,
        "ammo": 0,
        "range": 1,
        "spli": 6,
        "arp": 0,
        "tags":["chain", "sword"],
		"maintenance" : 0.02,
    },
    "Chainaxe": {
        "abbreviation": "ChAxe",
        "attack": {
            "standard": 350,
            "master_crafted": 450,
            "artifact": 600
        },
        "melee_mod": {
            "standard": 5,
            "master_crafted": 10,
            "artifact": 15
        },
        "description": "A weapon most frequently seen in the hands of Traitor Astartes, the Chainaxe uses motorized chainsaw teeth to maim and tear. Astartes often duel-wield them to increase frequency of attacks. \nTo forge - Chain Weaponry.",
        "melee_hands": 1,
        "ranged_hands": 0.5,
        "ammo": 0,
        "range": 1,
        "spli": 6,
        "arp": 0,
        "tags":["chain", "axe", "dual"],
		"maintenance" : 0.02,
    },
	"Crozius Arcanum": {
       "abbreviation": "Crzus",       
        "attack": {
            "standard": 550,
            "master_crafted": 650,
            "artifact": 800
        },
        "melee_mod": {
            "standard": 1,
            "master_crafted": 1,
            "artifact": 1
        },
        "description": "The Crozius Arcanum serves as both a sacred staff of office and a close combat weapon for Astartes Chaplains.",
        "melee_hands": 1,
        "ranged_hands": 0.5,
        "ammo": 0,
        "range": 1,
        "spli": 6,
        "arp": 1,
        "tags":["power", "mace", "pious"],
		"maintenance" : 0.04,
    },
	"Mace of Absolution": {
		"abbreviation": "AbsltMace",
		"attack": {
			"standard": 600,
			"master_crafted": 700,
			"artifact": 800
		},
		"melee_mod": {
			"standard": 1.3,
			"master_crafted": 1.3,
			"artifact": 1.3,
		},
		"description": "Wreathed in glowing smoke, these massive weapons are as sinister in aspect as they are lethal in application, and are capable of obliterating even the mightiest heretics in a blaze of killing light.",
		"special_description": "Dark Angels exclusive",
		"melee_hands": 2.25,
		"ranged_hands": 2,
		"ammo": 0,
		"range": 1,
		"spli": 10,
		"arp": 1,
		"tags": ["power", "mace", "siege", "pious"],
		"units_whitelist": ["astartes", "terminator"],
		"req_exp": 60,
		"maintenance" : 0.03,
	},
    "Eviscerator": {
         "abbreviation": "Evisc",
        "attack": {
            "standard": 600,
            "master_crafted": 750,
            "artifact": 900
        },
        "melee_mod": {
            "standard": 0,
            "master_crafted": 5,
            "artifact": 10
        },
        "description": "An obscenely large Chainsword, this two-handed weapon can carve through flesh and plasteel with equal ease. \nTo forge - Chain Weaponry.",
        "melee_hands": 2,
        "ranged_hands": 1,
        "ammo": 0,
        "range": 1,
        "spli": 10,
        "arp": 1,
        "tags":["chain", "sword"],
		"maintenance" : 0.03,
    },
    "Executioner Power Axe": {
        "abbreviation": "ExPwrAxe",
        "attack": {
            "standard": 950,
            "master_crafted": 1150,
            "artifact": 1300
        },
        "melee_mod": {
            "standard": 0,
            "master_crafted": 5,
            "artifact": 10
        },
        "description": "A heavy two-handed power axe used to rend armor and tear through multiple infantry at once.",
        "melee_hands": 2.5,
        "ranged_hands": 2,
        "ammo": 0,
        "range": 1,
        "spli": 8,
        "arp": 1,
        "tags": ["power", "axe"],
		"maintenance" : 0.05,
    },
    "Power Axe": {
        "abbreviation": "PwrAxe",
        "attack": {
            "standard": 575,
            "master_crafted": 600,
            "artifact": 675
        },
        "melee_mod": {
            "standard": 0,
            "master_crafted": 5,
            "artifact": 10
        },
        "description": "This weapon's power systems can be activated with the press of a button to sheathe the axe-head in a lethal haze of disruptive energy. Those fortunate enough to get their hands on two tend to duel-wield them. \nTo forge - Power Field Technology.",
        "melee_hands": 1,
        "ranged_hands": 0.5,
        "ammo": 0,
        "range": 1,
        "spli": 6,
        "arp": 1,
        "tags": ["power", "axe", "dual"],
		"maintenance" : 0.05,
    },
    "Power Sword": {
         "abbreviation": "PwrSwrd",
        "attack": {
            "standard": 550,
            "master_crafted": 600,
            "artifact": 675
        },
        "melee_mod": {
            "standard": 0,
            "master_crafted": 5,
            "artifact": 10
        },
        "description": "The most common kind of Power Weapon. When active, the blade becomes sheathed in a lethal haze of disruptive energy that seamlessly cuts through almost any known material. Tends to intrude ranged weapons the least. \nTo forge - Power Field Technology.",
        "melee_hands": 1,
        "ranged_hands": 0.25,
        "ammo": 0,
        "range": 1,
        "spli": 6,
        "arp": 1,
        "special_properties": ["Parry"],
        "tags":["power", "sword"],
		"maintenance" : 0.05,
    },
    "Power Spear": {
         "abbreviation": "PwrSpear",
        "attack": {
            "standard": 675,
            "master_crafted": 800,
            "artifact": 900
        },
        "melee_mod": {
            "standard": 0,
            "master_crafted": 5,
            "artifact": 10
        },
        "description": "A rare kind of Power Weapon requires great skill to wield. When active, the spearhead becomes sheathed in a lethal haze of disruptive energy. \nTo forge - Power Field Technology.",
        "melee_hands": 2,
        "ranged_hands": 1,
        "ammo": 0,
        "range": 1,
        "spli": 10,
        "arp": 1,
        "special_properties": ["Parry"],
        "tags":["power", "spear"],
		"maintenance" : 0.06,
    },
    "Power Mace": {
        "abbreviation": "PwrMace",
        "attack": {
            "standard": 650,
            "master_crafted": 700,
            "artifact": 800
        },
        "melee_mod": {
            "standard": 0,
            "master_crafted": 5,
            "artifact": 10
        },
        "description": "Power weapon variant. \nTo forge - Power Field Technology.",
        "melee_hands": 1,
        "ranged_hands": 0.5,
        "ammo": 0,
        "range": 1,
        "spli": 10,
        "arp": 1,
        "special_properties": ["Parry"],
        "tags":["power", "mace", "siege"], // , "pious"
		"maintenance" : 0.05,
    },
    "Power Weapon": {
        "abbreviation": "PwrWpn",
        "attack": {
            "standard": 650,
            "master_crafted": 700,
            "artifact": 800
        },
        "melee_mod": {
            "standard": 0,
            "master_crafted": 5,
            "artifact": 10
        },
        "description": "An alternative kind of power weapon that does not fit other, more conventional weapon types. \nTo forge - Power Field Technology.",
        "melee_hands": 1,
        "ranged_hands": 0.5,
        "ammo": 0,
        "range": 1,
        "spli": 6,
        "arp": 1,
        "special_properties": ["Parry"],
        "tags":["power"],
		"maintenance" : 0.06,
    },

    "Lascutter": {
       "abbreviation": "Lasct",
        "attack": {
            "standard": 250,
            "master_crafted": 350,
            "artifact": 500
        },
        "description": "Originally industrial tools used for breaking through bulkheads, this laser weapon is devastating in close combat. \nTo forge - Plastics.",
        "melee_hands": 1,
        "range": 1,
		"spli": 3,
        "arp": 1,
        "tags":["las","boarding", "siege"],
		"maintenance" : 0.01,
    },

	"Company Standard": {
		"abbreviation": "CmpStnd",
		"special_properties": ["Morale Boost"],
		"description": "A banner that represents the honor of a particular company and will bolster the morale abilities of nearby Space Marines.",
		"attack": {
            "standard": 45,
            "master_crafted": 60,
            "artifact": 100
        },
		"damage_resistance_mod": {
        "standard": 5, 
        "master_crafted": 10, 
        "artifact": 20 
      },
        "melee_hands": 1,
        "ranged_hands": 1,
        "range": 1,
        "spli": 1,
        "tags":["banner"],
		"maintenance" : 0.01,
		"recovery_chance" : 99,
    },
	"Xenophase Blade": {
		"abbreviation": "XenoPhs",
		"attack": {
			"standard": 750,
			"master_crafted": 850,
			"artifact": 950
		},
		"melee_mod": {
			"standard": 0,
			"master_crafted": 5,
			"artifact": 10
		},
		"description": "A Xenophase Blade is a potent, Power Sword-like melee weapon derived from xenos technology used by select warriors of the Deathwatch Chapter who have earned by their deeds and time of service in the Long Vigil the special trust of their watch fortress' watch commander.",
		"melee_hands": 1.1,
		"ranged_hands": 0.3,
		"ammo": 0,
		"range": 1,
		"spli": 7,
		"arp": 1,
		"special_properties": ["Parry"],
		"tags": ["power", "sword", "xenos"],
		"maintenance" : 0.06,
	},
	"Chainfist": {
		"abbreviation": "ChFst",
		"attack": {
			"standard": 550,
			"master_crafted": 600,
			"artifact": 700
		},
		"description": "Created by mounting a chainsword to a power fist, this weapon is easily able to carve through armoured bulkheads.",
		"melee_hands": 1.25,
		"ranged_hands": 1,
		"range": 1,
		"spli": 4,
		"arp": 1,
		"special_properties": ["Parry"],
		"tags": ["power","boarding", "chain", "fist", "dual", "siege"],
		"maintenance" : 0.06,
	},
	"Power Fist": {
		"abbreviation": "PwrFst",
		"attack": {
			"standard": 450,
			"master_crafted": 500,
			"artifact": 600
		},
		"melee_mod": {
			"standard": 0,
			"master_crafted": 5,
			"artifact": 10
		},
		"description": "A large, ceramite clad gauntlet surrounded by an power energy field. Though cumbersome to use, it dishes out tremendous damage to enemies, leaving very little behind.",
		"melee_hands": 1,
		"ranged_hands": 1,
		"ammo": 0,
		"range": 1,
		"spli": 3,
		"arp": 1,
		"special_properties": ["Parry"],
		"tags": ["power", "dual", "fist"],
		"maintenance" : 0.05,
	},
	"Power Fists": {
		"abbreviation": "PwrFsts",
		"attack": {
			"standard": 900,
			"master_crafted": 1000,
			"artifact": 1200
		},
		"description": "A large, ceramite clad gauntlets surrounded by power energy fields. Though cumbersome to use, they dish out tremendous damage to enemies, leaving very little behind.",
		"melee_hands": 2,
		"ranged_hands": 2,
		"ammo": 0,
		"range": 1,
		"spli": 4,
		"arp": 1,
		"special_properties": ["Parry"],
		"tags": ["power", "fist", "pair"],
		"units_whitelist": ["astartes", "terminator"],
		"maintenance" : 0.1,
	},
    "Lightning Claw": {
    "abbreviation": "LghtClw",             
        "attack": {
            "standard": 400,
            "master_crafted": 500,
            "artifact": 550
        },
        "description": "Lightning claws are specialized close combat weapons with built-in disruptor fields. These lethal claws rip into infantry like butter, bringing terror to the foe.",
        "melee_hands": 1.1,
        "ranged_hands": 1,
        "ammo": 0,
        "range": 1,
        "spli": 6,
        "arp": 1,
        "special_properties": ["Parry"],
        "tags":["power", "dual", "fist"],
		"maintenance" : 0.06,
    },
    "Dreadnought Lightning Claw": {
    "abbreviation": "LghtClw",             
        "attack": {
            "standard": 800,
            "master_crafted": 900,
            "artifact": 1000
        },
        "melee_mod": {
            "standard": 1.2,
            "master_crafted": 1.2,
            "artifact": 1.2
        },
        "description": "A specialized Lightning Claw variant designed for Dreadnoughts, these claws are capable of ripping through enemy vehicles and infantry with ease.",
        "melee_hands": 5,
        "ranged_hands": 0,
        "ammo": 0,
        "range": 1,
        "spli": 15,
        "arp": 1,
        "tags":["power", "vehicle", "dual", "dreadnought", "fist"],
		"maintenance" : 0.1,
    },
    "Thunder Hammer": {
      "abbreviation": "ThndHmr",                
        "attack": {
            "standard": 650,
            "master_crafted": 750,
            "artifact": 900
        },
        "melee_mod": {
            "standard": 5,
            "master_crafted": 10,
            "artifact": 15
        },
        "description": "A Thunder hammer is a weapon with a long pole and a double headed hammer on the top. This weapon unleashes a massive, devastating disruption field on impact. Only experienced Astartes can use Thunder Hammers, typically Terminators.",
        "melee_hands": 1,
        "ranged_hands": 1,
        "ammo": 0,
        "range": 1,
        "spli": 10,
        "arp": 1,
        "tags":["power", "hammer", "siege"],
        "req_exp":60,
		"maintenance" : 0.05,
    },
    "Heavy Thunder Hammer": {
        "abbreviation": "HvyThndHmr",                
        "attack": {
            "standard": 975,
            "master_crafted": 1125,
            "artifact": 1350,
        },
        "melee_mod": {
            "standard": 5,
            "master_crafted": 10,
            "artifact": 15,
        },
        "description": "The Heavy Thunder Hammer is the largest man-portable Thunder Hammer that is used by the Adeptus Astartes - a giant, crushing tool of destruction so heavy even a Space Marine cannot use it one-handed.",
        "melee_hands": 2,
        "ranged_hands": 2,
        "ammo": 0,
        "range": 1,
        "spli": 15,
        "arp": 1,
        "tags":["heavy_melee","power", "hammer", "siege"],
        "req_exp":60,
		"maintenance" : 0.08,
    },
    "Relic Blade": {
      "abbreviation": "RlcBld",               
        "attack": {
            "standard": 700,
            "master_crafted": 850,
            "artifact": 1000
        },
        "melee_mod": {
            "standard": 5,
            "master_crafted": 10,
            "artifact": 15
        },
        "description": "Ancient Blades of various origins smited through arcane forging or lost techniques, these blades are deadly beyond belief. These peerless blades slice through ceramite and flesh with ease.",
        "melee_hands": 1,
        "ranged_hands": 0.25,
        "ammo": 0,
        "range": 1,
        "spli": 7,
        "arp": 1,
        "special_properties": ["Parry"],
         "tags":["arcane", "sword", "power"],
		 "maintenance" : 0.05,
    },
    "Dreadnought Power Claw":{
      "abbreviation": "DPwrClw",              
        "attack": {
            "standard": 600,
            "master_crafted": 700,
            "artifact": 800
        },
        "description": "A brutal crushing claw capable of tearing open armor and flesh with ease utilizing disruptor fields.",
        "melee_hands": 5, 
        "range": 1,
        "spli": 10,
        "arp": 1,
        "tags":["power", "vehicle", "dual", "dreadnought", "fist"],
		"maintenance" : 0.08,
    },
    "Close Combat Weapon":{
        "abbreviation": "CCW",               
        "attack": {
            "standard": 650,
            "master_crafted": 750,
            "artifact": 850
        },
        "description": "While a variety of melee weapons are used by dreadnoughts, this power fist with an integrated flamer is the most common.",
        "melee_hands": 5, 
        "range": 1,
        "spli": 10,
        "arp": 1,
        "special_properties": ["Parry"],
        "tags":["dreadnought", "flame", "fist"],
		"maintenance" : 0.05,
    },       
    "Power Fist with Intergrated Bolters": {
       "abbreviation": "PwrFstBltr",       
        "attack": {
            "standard": 450,
            "master_crafted": 500,
            "artifact": 600
        },
        "melee_mod": {
            "standard": 1,
            "master_crafted": 1,
            "artifact": 1
        },
        "description": "This is a Power Fist weapon with bolters integrated into them to give the user ranged capabilities.",
        "melee_hands": 1.1,
        "ranged_hands": 1,
        "ammo": 0,
        "range": 1,
        "spli": 3,
        "arp": 1,
        "second_profiles":["Integrated Bolters"],
        "tags":["power", "fist", "bolt"],
		"maintenance" : 0.07,
    },    
    "Gauntlets of Ultramar": {
        "abbreviation": "GntltUltrm", 
        "attack": {
            "standard": 900,
            "master_crafted": 1000,
            "artifact": 1200
        },
        "description": "Two mighty Power Fists with incorporated Bolters that were reclaimed from a fallen Chaos champion, slain during the Gamalia Reclusiam Massacre by the Primarch of the Ultramarines, Roboute Guilliman himself.",
        "melee_hands": 2.25,
        "ranged_hands": 2.25,
        "ammo": 0,
        "range": 1,
        "spli": 6,
        "arp": 1,
        "second_profiles":["Integrated Bolters"],
        "tags":["artifact","power","fist","pair"],
		"maintenance" : 0.15,
    },

	"Boltstorm Gauntlet": {
		"abbreviation": "BlstGnt",
		"attack": {
			"standard": 450,
			"master_crafted": 500,
			"artifact": 600
		},
		"description": "The Boltstorm Gauntlet is a Power Fist with an Integrated Bolter, so aside from being reinforced with a crackling power field and able to crush armour, bone and even thick vehicle plating, it is also capable of firing bolts at an astonishing rate",
		"melee_hands": 2,
		"ranged_hands": 2,
		"ammo": 0,
		"range": 1,
		"spli": 2,
		"arp": 1,
		"second_profiles": ["Integrated Bolter"],
		"tags": ["power", "fist"],
		"units_whitelist": ["astartes", "terminator"],
		"maintenance" : 0.08,
	},
	"Force Staff": {
		"attack": {
			"standard": 550,
			"master_crafted": 650,
			"artifact": 800
		},
		"melee_mod": {
			"standard": 5,
			"master_crafted": 10,
			"artifact": 15
		},
		"abbreviation": "FrcStff",
		"description": "An advanced, psychically-attuned close combat weapon that is only fully effective in the hands of a psyker.",
		"melee_hands": 1,
		"ranged_hands": 1,
		"range": 1,
		"spli": 10,
		"arp": 1,
		"tags": ["force", "power"],
		"specials": {
			"psychic_amplification": 25
		},
		"maintenance" : 0.1,
	},
	"Force Sword": {
		"abbreviation": "FrcSwrd",
		"attack": {
			"standard": 550,
			"master_crafted": 600,
			"artifact": 675
		},
		"melee_mod": {
			"standard": 5,
			"master_crafted": 10,
			"artifact": 15
		},
		"description": "The Force Sword is a psychically-attuned close combat weapon that is only fully effective in the hands of a psyker.",
		"melee_hands": 1,
		"ranged_hands": 0.25,
		"ammo": 0,
		"range": 1,
		"spli": 6,
		"arp": 1,
		"special_properties": ["Parry"],
		"tags": ["force", "power", "sword"],
		"specials": {
			"psychic_amplification": 10
		},
		"maintenance" : 0.1,
	},
	"Force Axe": {
         "abbreviation": "FrcAxe",
        "attack": {
            "standard": 575,
            "master_crafted": 600,
            "artifact": 675
        },
        "melee_mod": {
            "standard": 5,
            "master_crafted": 10,
            "artifact": 15
        },
        "description": "The Force Axe is a psychically-attuned close combat weapon that is only fully effective in the hands of a psyker.",
        "melee_hands": 1,
        "ranged_hands": 0.5,
        "ammo": 0,
        "range": 1,
        "spli": 5,
        "arp": 1,
		"special_properties": ["Parry"],
		"special_description":  "Able to be dual-wielded, Spell damage +25%",
        "tags":["psy", "axe", "dual", "power"],
		"specials": {
			"psychic_amplification": 10
		},
		"maintenance" : 0.1,
	},

	 // Bolters
    "Bolt Pistol": {
         "abbreviation": "BltPstl",               
        "attack": {
            "standard": 750,
            "master_crafted": 800,
            "artifact": 850
        },
        "description": "A smaller, more compact version of the venerable Boltgun. Standard Godwyn pattern.",
        "melee_hands": 0.1,
        "ranged_hands": 0.75,
        "ammo": 8,
        "range": 5,
        "spli": 10,
        "arp": 0,
        "tags":["bolt", "pistol"],
		"maintenance" : 0.02,
    },
    "Underslung Bolter": {
        "abbreviation": "UndBltr",            
        "attack": {
            "standard": 750,
            "master_crafted": 800,
            "artifact": 850
        },
        "description": "A compact, secondary Bolter weapon often attached under the barrel of a larger firearm. It allows for rapid fire in close quarters.",
        "melee_hands": 0,
        "ranged_hands": 1,
        "ammo": 4,
        "range": 10,
        "spli": 10,
        "arp": 0,
         "tags":["bolt", "attached"]
    },
    "Bolter": {
        "abbreviation": "Bltr",             
        "attack": {
            "standard": 750,
            "master_crafted": 1200,
            "artifact": 1700
        },
        "description": "A standard Bolter, a 2-handed firearm that launches bolts of explosive material. It's a versatile and iconic weapon of Space Marines.",
        "melee_hands": 0.5,
        "ranged_hands": 1.25,
        "ammo": 16,
        "range": 12,
        "spli": {
            "standard": 10,
            "master_crafted": 15,
            "artifact": 20
        },
        "arp": 0,
        "tags":["bolt"],
		"maintenance" : 0.02,
    },
    "Stalker Pattern Bolter": {
        "abbreviation": "StlkBltr",            
        "attack": {
            "standard": 750,
            "master_crafted": 800,
            "artifact": 850
        },
        "description": "The Stalker Bolter is a scoped long-range variant of the standard Bolter. Depending on the specific modifications made by the wielder, the Stalker Bolter can serve as a precision battle rifle or a high-powered sniper weapon.",
        "melee_hands": 0.6,
        "ranged_hands": 1.5,
        "ammo": 16,
        "range": 16,
        "spli": 10,
        "arp": 0,
        "tags":["bolt","precision"],
		"maintenance" : 0.03,
    },
    "Integrated Bolters": {
        "abbreviation": "IntgBltr", 
        "attack": {
            "standard": 750,
            "master_crafted": 830,
            "artifact": 900
        },
        "description": "Integrated Bolters are a set of Bolter weapons that are integrated or built directly into the structure of the vehicle, armor, or Dreadnought.",
        "melee_hands": 0,
        "ranged_hands": 0,
        "ammo": 20,
        "range": 9,
        "spli": 10,
        "arp": 0,
        "tags":["bolt"],
		"maintenance" : 0.02,
    },
    "Twin Linked Bolters": {
        "attack": {
            "standard": 800,
            "master_crafted": 820,
            "artifact": 950
        },
        "description": "A Twin-linked Bolter consists of two Bolter weapons mounted side by side, typically on a vehicle or a special weapon platform.",
        "abbreviation": "TwnBltrs", 
        "melee_hands": 1,
        "ranged_hands": 2,
        "ammo": 8,
        "range": 12,
        "spli": 10,
        "tags":["bolt","heavy_ranged"],
		"maintenance" : 0.03,
    },
    "Hurricane Bolter Sponsons": {
        "attack": {
            "standard": 1050,
            "master_crafted": 1145,
            "artifact": 1222
        },
        "description": "Hurricane Bolters are large hex-mount bolter arrays that are able to deliver a withering hail of anti-infantry fire at short ranges.",
        "abbreviation": "HrcBltrs", 
        "melee_hands": 0,
        "ranged_hands": 0,
        "ammo": 20,
        "range": 12,
        "spli": 20,
        "arp": 0,
        "tags":["bolt","vehicle","sponson"]
    },
    "Storm Bolter": {
        "abbreviation": "StrmBltr", 
        "attack": {
            "standard": 850,
            "master_crafted": 925,
            "artifact": 975
        },
        "description": "A compact, double-barreled variant of the bolter. It sacrifices accuracy and range for greater volume of firepower.",
        "melee_hands": 0.4,
        "ranged_hands": 1.1,
        "ammo": 10,
        "range": 10,
        "spli": 20,
        "arp": 0,
        "tags":["bolt"],
		"maintenance" : 0.03,
    },
    "Heavy Bolter": {
        "abbreviation": "HvyBltr", 
        "attack": {
            "standard": 950,
            "master_crafted": 975,
            "artifact": 990
        },
        "description": "The Heavy Bolter is a heavy weapon that fires larger and more powerful bolt shells compared to the standard Bolter.",
        "melee_hands": 1,
        "ranged_hands": 2,
        "ammo": 10,
        "range": 16,
        "spli": 20,
        "arp": 0,
        "tags":["bolt","heavy_ranged"],
		"maintenance" : 0.05,
    },
    "Twin Linked Heavy Bolter": {
        "abbreviation": "TwnHvyBltr", 
        "attack": {
            "standard": 975,
            "master_crafted": 1125,
            "artifact": 1325
        },
        "description": "Twin-linked Heavy Bolters are an upgraded version of the standard Heavy Bolter weapon, which is known for its high rate of fire and effectiveness against infantry and light vehicles.",
        "melee_hands": 2,
        "ranged_hands": 3,
        "ammo": 10,
        "range": 16,
        "spli": 20,
        "arp": 0,
        "tags":["heavy_ranged","vehicle","dreadnought"],
		"maintenance" : 0.06,
    },
    "Heavy Bolter Sponsons": {
        "abbreviation": "HvyBltrs", 
        "attack": {
            "standard": 975,
            "master_crafted": 1125,
            "artifact": 1325
        },
        "description": "Heavy Bolter sponsons that can be used on vehicles, such as predator tanks.",
        "melee_hands": 2,
        "ranged_hands": 3,
        "ammo": 10,
        "range": 16,
        "spli": 40,
        "arp": 0,
        "tags":["bolt","vehicle","sponson"]
    },
    "Twin Linked Heavy Bolter Mount": {
        "attack": {
            "standard": 975,
            "master_crafted": 1125,
            "artifact": 1325
        },
        "description": "Twin-linked Heavy Bolters are an upgraded version of the standard Heavy Bolter weapon, which is known for its high rate of fire and effectiveness against infantry and light vehicles.",
        "abbreviation": "TwnHvyBltr", 
        "melee_hands": 2,
        "ranged_hands": 3,
        "ammo": 20,
        "range": 16,
        "spli": 20,
        "arp": 0,
        "tags":["bolt","vehicle"]
    },
    "Quad Linked Heavy Bolter Sponsons": {
        "attack": {
            "standard": 1225,
            "master_crafted": 1325,
            "artifact": 1425
        },
        "description": "Quad-linked Heavy Bolters are a significantly upgraded version of the standard Heavy Bolter mount; already punishing in a single mount, this quad mount is devastating against a variety of targets.",
        "abbreviation": "QdHvyBltrs", 
        "melee_hands": 4,
        "ranged_hands": 6,
        "ammo": 10,
        "range": 16,
        "spli": 40,
        "arp": 0,
        "tags":["bolt","vehicle","sponson"]
    },

	 // Lascannons
    "Lascannon": {
       "abbreviation": "Lascnn",           
        "attack": {
            "standard": 250,
            "master_crafted": 275,
            "artifact": 300
        },
        "description": "A formidable laser weapon, this lascannon can pierce most vehicle or power armor from a tremendous range.",
        "melee_hands": 1,
        "ranged_hands": 2.25,
        "ammo": 8,
        "range": 24,
        "spli": 1,
        "arp": 1,
         "tags":["heavy_ranged"],
		 "maintenance" : 0.05,
    },
    "Twin Linked Lascannon": {
        "abbreviation": "TwnLascnn", 
        "attack": {
            "standard": 300,
            "master_crafted": 350,
            "artifact": 400
        },
        "description": "Lascannons are powerful anti-armour weapons that fire highly focused and devastating energy beams capable of penetrating even the toughest armor.",
        "melee_hands": 2,
        "ranged_hands": 4.25,
        "ammo": 8,
        "range": 24,
        "spli": 2,
        "arp": 1,
        "tags":["heavy_ranged","vehicle","dreadnought"]
    },
    "Lascannons": {
         "abbreviation": "DblLascnn", 
        "attack": {
            "standard": 300,
            "master_crafted": 350,
            "artifact": 400
        },
        "description": "Lascannons are powerful anti-armour weapons that fire highly focused and devastating energy beams capable of penetrating even the toughest armor.",
        "melee_hands": 2,
        "ranged_hands": 4.25,
        "ammo": 8,
        "range": 24,
        "spli": 1,
        "arp": 1,
        "tags":["heavy_ranged","vehicle","dreadnought"]
    },
    "Twin Linked Lascannon Mount": {
        "attack": {
            "standard": 300,
            "master_crafted": 350,
            "artifact": 400
        },
        "description": "Lascannons are powerful anti-armour weapons that fire highly focused and devastating energy beams capable of penetrating even the toughest armour.",
        "abbreviation": "TwnLascnn", 
        "melee_hands": 2,
        "ranged_hands": 4.25,
        "ammo": 8,
        "range": 24,
        "spli": 1,
        "arp": 1,
        "tags":["las","vehicle"]
    },
    "Lascannon Sponsons": {
        "attack": {
            "standard": 300,
            "master_crafted": 350,
            "artifact": 400
        },
        "description": "Lascannons are powerful anti-armour weapons that fire highly focused and devastating energy beams capable of penetrating even the toughest armour.",
        "abbreviation": "Lscnns", 
        "melee_hands": 2,
        "ranged_hands": 4.25,
        "ammo": 8,
        "range": 24,
        "spli": 2,
        "arp": 1,
        "tags":["las","vehicle","sponson"]
    },
     "Twin Linked Lascannon Turret": {
        "attack": {
            "standard": 300,
            "master_crafted": 350,
            "artifact": 400
        },
        "abbreviation": "TwnLscnn", 
        "description": "A Predator-compatible turret mounting a pair of anti-armour lascannons.",
        "amm": 8,
        "range": 24,
        "spli": 1,
        "arp": 1,
        "tags":["las", "twin_linked", "vehicle", "turret"]
    },
    "Twin Linked Lascannon Sponsons": {
        "attack": {
            "standard": 600,
            "master_crafted": 700,
            "artifact": 800
        },
        "description": "Lascannons are powerful anti-armour weapons that fire highly focused and devastating energy beams capable of penetrating even the toughest armour.",
        "abbreviation": "TwnLascnns", 
        "melee_hands": 4,
        "ranged_hands": 8,
        "ammo": 8,
        "range": 24,
        "spli": 2,
        "arp": 1,
        "tags":["las","vehicle","sponson"]
    },

	 // Flamers
    "Infernus Pistol": {
      "abbreviation": "InfPstl" ,
        "attack": {
            "standard": 1000,
            "master_crafted": 1100,
            "artifact": 1200
        },
        "description": "The Infernus Pistol is a compact and portable flamethrower-style weapon. It unleashes a torrent of fiery promethium, which engulfs its targets in flames.",
        "melee_hands": 0.1,
        "ranged_hands": 0.75,
        "ammo": 4,
        "range": 5,
        "spli": 50,
        "arp": -1,
        "tags":["flame","pistol"],
		"maintenance" : 0.02,
    },
	"Hand Flamer": {
		"abbreviation": "HndFlmr",
		"attack": {
			"standard": 1000,
			"master_crafted": 1500,
			"artifact": 2100
		},
		"description": "A flamer in a pistol form. Has enough fuel for just 2 uses.",
		"melee_hands": 0.1,
		"ranged_hands": 0.5,
		"ammo": 2,
		"range": 5, 
		"spli": 50, 
		"arp": -1,
		"tags": ["flame", "pistol"],
		"maintenance" : 0.01,
	},
    "Underslung Flamer": {
        "attack": {
            "standard": 2000,
            "master_crafted": 2200,
            "artifact": 2400
        },
        "description": "A flamer, that is intended to be put in conjunction with another ranged weapon.",
        "abbreviation": "UndrFlmr", 
        "melee_hands": 0,
        "ranged_hands": 0,
        "ammo": 2,
        "range": 5,
        "spli": 50,
        "arp": -1,
        "tags":["flame"]
    },
    "Flamer": {
        "abbreviation": "Flmr", 
        "attack": {
            "standard": 2000,
            "master_crafted": 2200,
            "artifact": 2400
        },
        "melee_mod": {
            "standard": 0,
            "master_crafted": 0,
            "artifact": 0
        },
        "description": "Blackened at the tip, this weapon unleashes a torrent of burning promethium - all the better to cleanse sin and impurity with.",
        "melee_hands": 0.5,
        "ranged_hands": 1.1,
        "ammo": 4,
        "range": 5,
        "spli": 50,
        "arp": -1,
        "tags":["flame"],
		"maintenance" : 0.02,
    },
    "Incinerator": {
        "attack": {
            "standard": 2100,
            "master_crafted": 2250,
            "artifact": 2500
        },
        "description": "This flamer weapon includes special promethium and sacred oils. It is particularly effective against Daemons and their ilk.",
        "abbreviation": "Incnrtr", 
        "melee_hands": 0.5,
        "ranged_hands": 1.1,
        "ammo": 4,
        "range": 5,
        "spli": 50,
        "arp": -1,
        "tags":["flame"],
		"maintenance" : 0.04,
    },
    "Heavy Flamer": {
        "abbreviation": "HvyFlmr",              
        "attack": {
            "standard": 3000,
            "master_crafted": 3500,
            "artifact": 4000
        },
        "description": "A much larger and bulkier flamer. Few armies carry them on hand, instead choosing to mount them to vehicles.",
        "melee_hands": 1,
        "ranged_hands": 2.25,
        "ammo": 8,
        "range": 5,
        "spli": 50,
        "arp": -1,
        "tags":["flame","heavy_ranged"],
		"maintenance" : 0.04,
    },
    "CCW Heavy Flamer": {
        "abbreviation": "CCWHvyFlmr",               
        "attack": {
            "standard": 5500,
            "master_crafted": 5750,
            "artifact": 6000
        },
        "description": "A powerful close combat weapon integrated with a flamer. It's capable of dealing both flame damage and melee attacks.",
        "melee_hands": 3,
        "ranged_hands": 4,
        "ammo": 6,
        "range": 5,
        "spli": 50,
        "arp": -1,
        "tags":["dreadnought","flame"],
		"maintenance" : 0.06,
    },
    "Inferno Cannon": {
        "abbreviation": "InfCann",               
        "attack": {
            "standard": 4000,
            "master_crafted": 4400,
            "artifact": 4800
        },
        "description": "A huge, vehicle-mounted flame weapon that fires with explosive force.",
        "melee_hands": 1,
        "ranged_hands": 2.25,
        "ammo": 6,
        "range": 5,
        "spli": 50,
        "arp": -1,
        "tags":["vehicle","flame","dreadnought"]
    },
    "Flamestorm Cannon Sponsons": {
        "attack": {
            "standard": 6000,
            "master_crafted": 6600,
            "artifact": 7200
        },
        "description": "A huge vehicle-mounted flamethrower.",
        "abbreviation": "FlmstCnns", 
        "melee_hands": 3,
        "ranged_hands": 4,
        "ammo": 6,
        "range": 5,
        "spli": 100,
        "arp": -1,
        "tags":["flame","vehicle","sponson"]
    },
    "Twin Linked Heavy Flamer Sponsons": {
        "attack": {
            "standard": 5500,
            "master_crafted": 6050,
            "artifact": 6600
        },
        "description": "A much larger and bulkier flamer. These sizable sponsons are usually restricted to vehicles.",
        "abbreviation": "TwnHvyFlmrs", 
        "melee_hands": 3.5,
        "ranged_hands": 5,
        "ammo": 6,
        "range": 5,
        "spli": 100,
        "arp": -1,
        "tags":["flame", "vehicle","sponson"]
    },
    "Heavy Flamer Sponsons": {
        "abbreviation": "HvyFlmrs",
        "attack": {
            "standard": 4000,
            "master_crafted": 4500,
            "artifact": 5000
        },
        "description": "A much larger and bulkier flamer. These sizable sponsons are usually restricted to vehicles.",
        "melee_hands": 3,
        "ranged_hands": 4,
        "ammo": 8,
        "range": 5,
        "spli": 100,
        "arp": -1,
        "tags":["flame","vehicle","sponson"]
    },
    "Flamestorm Cannon Turret": {
        "attack": {
            "standard": 6000,
            "master_crafted": 6600,
            "artifact": 7200
        },
        "abbreviation": "FlmstCnn", 
        "description": "A huge vehicle-mounted flamethrower.",
        "melee_hands": 3,
        "ranged_hands": 4,
        "ammo": 8,
        "range": 5,
        "spli": 50,
        "arp": -1,
        "tags":["flame","vehicle","turret"]
    },

	 // Meltas
    "Meltagun": {
        "abbreviation": "Mltgn",
        "attack": {
            "standard": 2500,
            "master_crafted": 2750,
            "artifact": 3000
        },
        "description": "A relatively quiet weapon, this gun vaporizes flesh and armor alike. Due to heat dissipation, it has only a short range.",
        "melee_hands": 0.5,
        "ranged_hands": 1.1,
        "ammo": 4,
        "range": 5,
        "spli": 2,
        "arp": 1,
        "tags":["melta"],
		"maintenance" : 0.04,
    },
    "Multi-Melta": {
         "abbreviation": "MuMlt",
        "attack": {
            "standard": 5000,
            "master_crafted": 5500,
            "artifact": 6000
        },
        "description": "Though bearing longer range than the Meltagun, this weapon's great size usually restricts it to vehicles.",
        "melee_hands": 1,
        "ranged_hands": 2.25,
        "ammo": 8,
        "range": 6,
        "spli": 3,
        "arp": 1,
        "tags":["melta","heavy_ranged", "dreadnought"],
		"maintenance" : 0.06,
    },
    "Twin Linked Multi-Melta Sponsons": {
        "abbreviation": "TwMuMlt", 
        "attack": {
            "standard": 5500,
            "master_crafted": 5950,
            "artifact": 6400
        },
        "description": "This weapon's great size usually restricts it to vehicles.",
        "melee_hands": 2,
        "ranged_hands": 4,
        "ammo": 8,
        "range": 6,
        "spli": 6,
        "arp": 1,
        "tags":["vehicle", "Sponson", "melta"]
    },
    "Magna-Melta Turret": {
        "abbreviation": "MgnMlt", 
        "attack": {
            "standard": 5500,
            "master_crafted": 5950,
            "artifact": 6400
        },
        "description": "This weapon's great size usually restricts it to vehicles.",
        "melee_hands": 2,
        "ranged_hands": 4,
        "ammo": 8,
        "range": 6,
        "spli": 6,
        "arp": 1,
        "tags":["vehicle", "turret", "melta"]
    },

	 // Plasma
    "Plasma Pistol": {
        "abbreviation": "PlsmPstl",
        "attack": {
            "standard": 500,
            "master_crafted": 625,
            "artifact": 750
        },
        "description": "A smaller version of the plasma gun, this weapon has exceptional armor-piercing capabilities.",
        "melee_hands": 0.1,
        "ranged_hands": 0.75,
        "ammo": 8,
        "range": 5,
        "spli": 3,
        "arp": 1,
        "tags":["plasma","pistol"],
		"maintenance" : 0.08,
    },
    "Plasma Gun": {
        "abbreviation": "PlsmGn",
        "attack": {
            "standard": 775,
            "master_crafted": 890,
            "artifact": 995
        },
        "description": "A 2-handed firearm that launches bolts of plasma.",
        "melee_hands": 0.6,
        "ranged_hands": 1.5,
        "ammo": 16,
        "range": 12,
        "spli": 5,
        "arp": 1,
        "tags":["plasma"],
		"maintenance" : 0.09,
    },
    "Plasma Cannon": {
        "abbreviation": "PlsmCan",
        "attack": {
            "standard": 800,
            "master_crafted": 925,
            "artifact": 1250
        },
        "description": "A Heavy Duty version of the volatile Plasma Gun.",
        "melee_hands": 1,
        "ranged_hands": 2.25,
        "ammo": 16,
        "range": 14,
        "spli": 9,
        "arp": 1,
        "tags":["plasma", "heavy_weapon", "Dreadnought"],
		"maintenance" : 0.1,
    },
    "Plasma Destroyer Turret": {
        "abbreviation": "PlsmDestr", 
        "attack": {
            "standard": 800,
            "master_crafted": 925,
            "artifact": 1250
        },
        "description": "A Heavy Duty version of the volatile Plasma Gun.",
        "melee_hands": 1,
        "ranged_hands": 3,
        "ammo": 16,
        "range": 14,
        "spli": 9,
        "arp": 1,
        "tags":["plasma", "vehicle", "turret"]
    },

	 // Grav weapons
	"Grav-Pistol": {
		"abbreviation": "GrvPstl",
		"attack": {
			"standard": 1500,
			"master_crafted": 2000,
			"artifact": 2500
		},
		"description": "A smaller version of the Grav-Gun which utilises the gravitic reaction principle most commonly seen powering grav-vehicles such as the Land Speeder.",
		"melee_hands": 0.1,
		"ranged_hands": 0.75,
		"ammo": 4,
		"range": 5,
		"spli": 2,
		"arp": 1,
		"tags": ["grav", "pistol"],
		"maintenance" : 0.08,
	},
	"Grav-Gun": {
		"abbreviation": "GrvGn",
		"attack": {
			"standard": 4500,
			"master_crafted": 4750,
			"artifact": 5000
		},
		"description": "A medium-sized weapon which utilises the gravitic reaction principle most commonly seen powering grav-vehicles such as the Land Speeder.",
		"melee_hands": 0.5,
		"ranged_hands": 1.5,
		"ammo": 6,
		"range": 5,
		"spli": 3,
		"arp": 1,
		"tags": ["grav"],
		"maintenance" : 0.1,
	},
	"Grav-Cannon": {
		"abbreviation": "GrvCan",
		"attack": {
			"standard": 8000,
			"master_crafted": 8500,
			"artifact": 9000
		},
		"description": "A bigger version of the Grav-Gun which utilises the gravitic reaction principle most commonly seen powering grav-vehicles such as the Land Speeder.",
		"melee_hands": 1,
		"ranged_hands": 2,
		"ammo": 8,
		"range": 8,
		"spli": 6,
		"arp": 1,
		"tags": ["grav", "heavy_weapon"],
		"maintenance" : 0.2,
	},

	 // Cannons
    "Assault Cannon": {
        "abbreviation": "AssCann",       
        "attack": {
            "standard": 1450,
            "master_crafted": 2475,
            "artifact": 3500
        },
        "description": "A heavy, rotary auto-cannon frequently used by Dreadnoughts and Terminators. Has an incredible rate of fire.",
        "melee_hands": 2.1,
        "ranged_hands": 2.25,
        "ammo": 5,
        "range": 13,
        "spli": 50,
        "arp": 0,
        "tags":["heavy_ranged","dreadnought"],
		"maintenance" : 0.08,
    },
    "Autocannon": {
        "abbreviation": "Autocnn",       
        "attack": {
            "standard": 1800,
            "master_crafted": 1980,
            "artifact": 2160
        },
        "description": "A rapid-firing weapon able to use a wide variety of ammunition, from mass-reactive explosive to solid shells.",
        "melee_hands": 2,
        "ranged_hands": 2.25,
        "ammo": 25,
        "range": 18,
        "spli": 10,
        "arp": 1,
        "tags":["heavy_ranged","dreadnought"],
		"maintenance" : 0.08,
    },
    "Twin Linked Assault Cannon Mount": {
        "attack": {
            "standard": 1550,
            "master_crafted": 1575,
            "artifact": 1600
        },
        "description": "A twin mount of rotary autocannons, boasting an incredible rate of fire.",
        "abbreviation": "TwnAssCnn", 
        "melee_hands": 3,
        "ranged_hands": 4,
        "ammo": 5,
        "range": 13,
        "spli": 50,
        "arp": 0,
        "tags":["heavy_ranged","dreadnought","vehicle"],
		"maintenance" : 0.09,
    },
    "Reaper Autocannon Mount": {
        "attack": {
            "standard": 2250,
            "master_crafted": 2575,
            "artifact": 2800
        },
        "description": "An archaic twin-linked autocannon design dating back to the Great Crusade. Effective against a variety of targets.",
        "abbreviation": "RprAtcnn", 
        "melee_hands": 0,
        "ranged_hands": 0,
        "ammo": 25,
        "range": 15,
        "spli": 10,
        "arp": 1,
        "tags":["heavy_ranged","dreadnought","vehicle"]
    },
    "Autocannon Turret": {
        "abbreviation": "Autocnn", 
        "attack": {
            "standard": 1300,
            "master_crafted": 1428,
            "artifact": 1676
        },
        "description": "A Predator-compatible turret mounting a reliable all-purpose autocannon. ",
        "melee_hands": 0,
        "ranged_hands": 0,
        "ammo": 50,
        "range": 18,
        "spli": 10,
        "arp": 1,
        "tags":["vehicle", "turret"]
    },
    "Twin Linked Assault Cannon Turret": {
        "abbreviation": "TwnAssCnn", 
        "attack": {
            "standard": 1550,
            "master_crafted": 1575,
            "artifact": 1600
        },
        "description": "A twin-linked assault canon variant intended to be used on vehicle turret, such as predator tank.",
        "melee_hands": 3,
        "ranged_hands": 4,
        "ammo": 25,
        "range": 13,
        "spli": 10,
        "arp": 0,
        "tags":["vehicle", "turret"]
    },
	"Kheres Assault Cannon": {
		"abbreviation": "KhrAssCnn",
		"attack": {
			"standard": 2800,
			"master_crafted": 3000,
			"artifact": 3200
		},
		"description": "Forged in the forges of Mars and carried into battle by the mightiest of the Emperor's warriors, the Kheres Assault Cannon is a weapon of devastating reputation. Its rotary barrels roar with unceasing fury, unleashing a deluge of mass-reactive shells that tear through flesh, ceramite, and adamantium alike.",
		"melee_hands": 2.1,
		"ranged_hands": 3,
		"ammo": 5,
		"range": 14,
		"spli": 50,
		"arp": 1,
		"tags": ["heavy_ranged", "dreadnought", "ancient"]
	},

	 // Missiles
    "Missile Launcher": {
      "abbreviation": "MsslLnch",          
        "attack": {
            "standard": 800,
            "master_crafted": 950,
            "artifact": 1200
        },
        "description": "This heavy weapon is capable of firing either armor-piercing or fragmentation rockets. Has a low ammunition count.",
        "melee_hands": 1,
        "ranged_hands": 2.25,
        "ammo": 6,
        "range": 24,
        "spli": 4,
        "arp": 1,
        "tags":["heavy_ranged","dreadnought"],
		"maintenance" : 0.08,
    },
    "Whirlwind Missiles": {
        "attack": {
            "standard": 1500,
            "master_crafted": 1600,
            "artifact": 1750
        },
        "description": "The Whirlwind Missile Launcher is a vehicle-mounted artillery weapon that launches a barrage of powerful missiles at the enemy.",
        "abbreviation": "WhrlMssl", 
        "melee_hands": 3,
        "ranged_hands": 6,
        "ammo": 8,
        "range": 25,
        "spli": 100,
        "arp": 0,
        "tags":["vehicle"]
    },
    "HK Missile": {
        "abbreviation": "HKMssl", 
        "attack": {
            "standard": 450,
            "master_crafted": 500,
            "artifact": 550
        },
        "description": "A single-use long-range anti-tank missile, this weapon can surgically destroy armoured targets in the opening stages of a battle.",
        "melee_hands": 1,
        "ranged_hands": 2.25,
        "ammo": 1,
        "range": 50,
        "spli": 1,
        "arp": 1,
        "tags":["vehicle"]
    },

	 // Volkite
    "Twin Linked Volkite Culverin Sponsons": {
        "abbreviation": "TwnVlkCulvs", 
        "attack": {
            "standard": 4800,
            "master_crafted": 5280,
            "artifact": 5760
        },
        "description": "An advanced thermal weapon from a bygone era, Volkite Culverins are able to ignite entire formations of enemy forces.",
        "melee_hands": 0,
        "ranged_hands": 0,
        "ammo": 25,
        "range": 18,
        "spli": 100,
        "arp": 0,
        "tags":["vehicle", "Sponson", "volkite"]
    },
    "Volkite Culverin Sponsons": {
        "abbreviation": "VlkClvs", 
        "attack": {
            "standard": 3200,
            "master_crafted": 3880,
            "artifact": 4760
        },
        "description": "An advanced thermal weapon from a bygone era, Volkite Culverins are able to ignite entire formations of enemy forces.",
        "melee_hands": 0,
        "ranged_hands": 0,
        "ammo": 25,
        "range": 18,
        "spli": 100,
        "arp": 0,
        "tags":["vehicle", "Sponson", "volkite"]
    },
    "Volkite Saker Turret": {
        "abbreviation": "VlkSkr", 
        "attack": {
            "standard": 4800,
            "master_crafted": 5280,
            "artifact": 5760
        },
        "description": "An advanced thermal weapon from a bygone era, Volkite Culverins are able to ignite entire formations of enemy forces.",
        "melee_hands": 0,
        "ranged_hands": 0,
        "ammo": 25,
        "range": 18,
        "spli": 50,
        "arp": 0,
        "tags":["vehicle", "turret", "volkite"]
    },

	 // Other
    "Archeotech Laspistol": {
        "attack": {
            "standard": 320,
            "master_crafted": 430,
            "artifact": 540
        },
        "description": "Known as a Lasrod or Gelt Gun, this pistol is an ancient design of Laspistol with much greater range and power.",
        "abbreviation": "ArchLpstl",
        "melee_hands": 0.1,
        "ranged_hands": 0.75,
        "ammo": 0,
        "range": 7,
        "spli": 5,
        "arp": 0,
        "tags":["pistol", "ancient","las"],
		"maintenance" : 0.03,
    },
  "Hellgun": {
    "abbreviation": "HllGun",
    "attack": {
      "standard": 135,
      "master_crafted": 150,
      "artifact": 175
    },
    "description":"Weapon used by the more experienced soldiers of the imperial guard, as well as more specialized branches.",
    "melee_hands": 0.25,
    "ranged_hands": 1,
    "ammo": 10,
    "range": 8,
    "spli": 10,
    "arp": 0,
    "tags":["las"],
	"maintenance" : 0.01,
    // ... (other attributes)
  },
	"Laspistol": {
		"attack": {
			"standard": 50,
			"master_crafted": 60,
			"artifact": 70
		},
		"description": "The pistol version of the Lasgun, it fires a coherent beam of energetic photons that can burn through most materials.",
		"abbreviation": "Lpstl",
		"melee_hands": 0.1,
		"ranged_hands": 0.5,
		"ammo": 30,
		"range": 5,
		"spli": 10,
		"arp": 0,
		"tags": ["pistol", "las"],
		"maintenance" : 0.01,
	},
	"Servo-arm(M)": {
		"abbreviation": "MchArm",
		"attack": {
			"standard": 220,
			"master_crafted": 330,
			"artifact": 500
		},
		"description": "An offensive mechadendrite, used for attacks in melee.",
		"melee_hands": 0,
		"ranged_hands": 0,
		"ammo": 0,
		"range": 1,
		"spli": 3,
		"arp": 1,
		"tags": ["siege"],
	},
	"Heavy Conversion Beamer": {
		"abbreviation": "HvyCnvBm",
		"attack": {
			"standard": 800,
			"master_crafted": 900,
			"artifact": 1000
		},
		"description": "An ancient relic of the Dark Age of Technology, the Heavy Conversion Beamer is a marvel of destructive science rarely entrusted to Imperial commanders. This esoteric weapon channels vast reserves of energy into a focused beam of coruscating light, tearing matter apart at the molecular level and converting it into raw energy in a cataclysmic chain reaction. The weapon’s lethality grows with distance — the further its target, the more apocalyptic the discharge. To stand at the far end of a Heavy Conversion Beamer’s wrath is to be annihilated in a searing blaze that leaves nothing but scorched ruin in its wake. Few battlefields have witnessed its fury and remained unchanged, for the weapon is as much a terror to its enemies as a reminder of the Imperium’s dwindling grasp on its most potent technologies.",
		"melee_hands": 0,
		"ranged_hands": 1,
		"ammo": 6,
		"range": 20,
		"spli": 5,
		"arp": 1,
		"tags": ["heavy_ranged", "ancient", "dreadnought"]
	},

    "Sarissa": {
        "abbreviation": "Saris",
        "attack": {
            "standard": 100,
            "master_crafted": 150,
            "artifact": 250
        },
        "description": "A vicious combat attachment that is attached to Bolters, in order to allow them to be used in melee combat.",
        "melee_hands": 0,
        "ranged_hands": 0,
        "ammo": 0,
        "range": 1,
        "spli": 5,
        "arp": 0,
		"tags":["chain"],
    },
    "Light Bolter": {
        "abbreviation": "LBltr",
        "attack": {
            "standard": 500,
            "master_crafted": 580,
            "artifact": 650
        },
        "description": "A smaller, ~0.5 caliber bolter, made to be used by regular humans, such as sisters of battle.",
        "melee_hands": 0.2,
        "ranged_hands": 1,
        "ammo": 16,
        "range": 12,
        "spli": 10,
        "arp": 0,
        "tags":["bolt"],
		"maintenance" : 0.01,
    },

  "Hellrifle": {
    "description":"Normally used by Radical Inquisitors, it appears an antiquated rifle but fires razor-sharp shards of Daemonic matter.",
    "abbreviation": "HllRifle",
    "attack": {
      "standard": 350,
      "master_crafted": 460,
      "artifact": 570
    },
	"melee_hands": 0.4,
    "ranged_hands": 1.15,
    "ammo": 10,
    "range": 10,
    "spli": 5,
    "arp": 1,
    "tags":["rifle","arcane"],
	"maintenance" : 0.05,
    // ... (other attributes)
  },

    "Eldar Power Sword": {
        "abbreviation": "EldPwrSwrd",
        "attack": {
            "standard": 575,
            "master_crafted": 625,
            "artifact": 700
        },
        "melee_mod": {
            "standard": 0,
            "master_crafted": 5,
            "artifact": 10
        },
        "description": "Power weapons, infused with arcane energy, are used by Howling Banshees and Dire Avenger Exarchs. Swords such as these are as much an artistic statement as a weapon and are effective against even heavily armored troops.",
        "melee_hands": 1,
        "ranged_hands": 0.3,
        "ammo": 0,
        "range": 1,
        "spli": 7,
        "arp": 1,
        "special_properties": ["Parry"],
        "tags":["power", "sword","elder","xenos"],
		"maintenance" : 0.05,
    },
    "Ranger Long Rifle":{
        "abbreviation": "RangeLoRife",
        "description":"Advanced and accurate rifles from a non-imperial entity.",
        "attack": {
          "standard": 500,
          "master_crafted": 620,
          "artifact": 740
        },
        "melee_hands": 1,
        "ranged_hands": 1.75,
		"ammo": 20,
        "range": 25,
        "spli": 10,
        "arp": 0,
        "tags":["las", "rifle", "precision", "elder", "xenos"],
		"maintenance" : 0.05,
    },
  "Shuriken Pistol": {
    "abbreviation": "ShrPstl",
	"description":"An exotic kind of pistol, not imperial origin.",
    "attack": {
      "standard": 750,
      "master_crafted": 800,
      "artifact": 850
    },
    "melee_hands": 0.1,
    "ranged_hands": 0.5,
    "ammo": 10,
    "range": 6,
    "spli": 10,
    "arp": 0,
    "tags":["pistol","elder","xenos"],
	"maintenance" : 0.04,
  },

  "Choppa": {
    "abbreviation": "Chop",
	"description": "A shoddy melee weapon that is commonly seen among orks.",
    "attack": {
      "standard": 50,
      "master_crafted": 75,
      "artifact": 100
    },
	"ranged_hands": 0.1,
    "melee_hands": 0.4,
    "range": 1,
    "spli": 3, 
    "tags":["axe"]
  },
  "Power Klaw": {
    "abbreviation": "PwrKlaw",
	"description": "A melee weapon that is commonly seen among more dangerous orks.",
    "attack": {
      "standard": 150,
      "master_crafted": 175,
      "artifact": 200
    },
	"ranged_hands": 0.2,
    "melee_hands": 1,
    "range": 1,
    "spli": 3, 
    "tags":["power", "dual", "fist", "ork"],
	"maintenance" : 0.02,
  },
  "Snazzgun": {
    "abbreviation": "Snazz",
    "attack": {
      "standard": 200,
      "master_crafted": 240,
      "artifact": 300
    },
	"description": "A shoddy ranged weapon that is commonly seen among orks.",
    "melee_hands": 0.4,
    "ranged_hands": 1.1,
    "ammo": 20,
    "range": 10,
    "spli": 5,
    "arp": 0,
    "tags":["rifle", "ork"],
	"maintenance" : 0.01,
  },

    "Tome":{
        "abbreviation": "Tome",                
        "attack": {
            "standard": 0,
            "master_crafted": 0,
            "artifact": 0
        },
        "melee_mod": {
            "standard":  1.0,
            "master_crafted":  1.0,
            "artifact": 1.0
        },
        "description": "A collection of runes, inscriptions and other symbolics, allowing psykers to channel a higher variety of powers.",
        "melee_hands": 1,
        "ranged_hands": 1,
        "ammo": 0,
        "range": 1,
        "spli": 0,
        "arp": 0,
        "tags":["arcane", "psi"],
    },
    "Webber": {
         "abbreviation": "Webbr",           
        "attack": {
            "standard": 35,
            "master_crafted": 40,
            "artifact": 45
        },
        "description": "The Webber is a close-range weapon that fires strands of sticky web-like substance. It is designed to ensnare and immobilize enemies, restricting their movement and rendering them vulnerable to further attacks.",
        "melee_hands": 0,
        "ranged_hands": 1.9,
        "ammo": 5,
        "range": 6,
        "spli": 1,
        "arp": 0,
        "tags":["immobolise"],
		"maintenance" : 0.01,
    },
    "Sniper Rifle": {
        "abbreviation": "SnprRfl",        
        "attack": {
            "standard": 250,
            "master_crafted": 375,
            "artifact": 500
        },
        "description": "Fires a solid shell and boasts powerful telescopic sights, allowing the user to target enemy weak points and distant foes.",
        "melee_hands": 0.5,
        "ranged_hands": 1.15,
        "ammo": 20,
        "range": 25,
        "spli": 5,
        "arp": 0,
        "tags":["rifle", "precision"],
		"maintenance" : 0.02,
    },
    "Conversion Beam Projector": {
        "abbreviation": "CnvBmPrj",            
        "attack": {
            "standard": 500,
            "master_crafted": 550,
            "artifact": 600
        },
        "description": "The Conversion Beam Projector is a heavy energy weapon that harnesses advanced technology to project a concentrated beam of destructive energy. It is capable of cutting through armor, vehicles, and even heavily fortified structures.",
        "melee_hands": 0,
        "ranged_hands": 1,
        "ammo": 1,
        "range": 20,
        "spli": 1,
        "arp": 1
    },
    "Combiflamer": {
        "abbreviation": "CmbFlmr", 
        "attack": {
            "standard": 750,
            "master_crafted": 800,
            "artifact": 850
        },
        "description": "A standard bolter with a flamer attached for tactical use.",
        "melee_hands": 1,
        "ranged_hands": 1.75,
        "ammo": 12,
        "range": 10,
        "spli": 10,
        "arp": 0,
        "second_profiles":["Flamer"],
        "tags":["combi", "bolt"],
		"maintenance" : 0.04,
    },
	"Combiplasma": {
		"abbreviation": "CmbPlsm",
		"attack": {
			"standard": 750,
			"master_crafted": 800,
			"artifact": 850
		},
		"description": "A standard Bolter with an underbarrel Plasma Gun for expanded tactical utility.",
		"melee_hands": 1,
		"ranged_hands": 1.75,
		"ammo": 12,
		"range": 10,
		"spli": 10,
		"arp": 0,
		"second_profiles": ["Plasma Gun"],
		"tags": ["combi", "bolt"],
		"maintenance" : 0.11,
	},
	"Combigrav": {
		"abbreviation": "CmbGrv",
		"attack": {
			"standard": 750,
			"master_crafted": 800,
			"artifact": 850
		},
		"description": "A standard Bolter with an underbarrel Grav-Gun for expanded tactical utility.",
		"melee_hands": 1,
		"ranged_hands": 1.75,
		"ammo": 12,
		"range": 10,
		"spli": 10,
		"arp": 0,
		"second_profiles": ["Grav-Gun"],
		"tags": ["combi", "bolt"],
		"maintenance" : 0.12,
	},
	"Combimelta": {
		"abbreviation": "CmbMlt",
		"attack": {
			"standard": 750,
			"master_crafted": 800,
			"artifact": 850
		},
		"description": "A standard Bolter with an underbarrel Meltagun for expanded tactical utility.",
		"melee_hands": 1,
		"ranged_hands": 1.75,
		"ammo": 15,
		"range": 10,
		"spli": 10,
		"arp": 0,
		"second_profiles": ["Meltagun"],
		"tags": ["combi", "bolt"],
		"maintenance" : 0.06,
	},
    "Heavy Conversion Beamer Turret": {
        "abbreviation": "HvyCnvBmr", 
        "attack": {
            "standard": 800,
            "master_crafted": 900,
            "artifact": 1000
        },
        "description": "The Conversion Beam Projector is a heavy energy weapon that harnesses advanced technology to project a concentrated beam of destructive energy. Armor detonates as the matter that comproises it is transformed into pure energy. This is the heavy version for mounting in vehicles.",
        "melee_hands": 0,
        "ranged_hands": 0,
        "ammo": 6,
        "range": 20,
        "spli": 5,
        "arp": 1,
        "tags":["vehicle", "dreadnought", "turret", "ancient"]
    },  
    "Neutron Blaster Turret": {
        "abbreviation": "NtrnBlstr", 
        "attack": {
            "standard": 800,
            "master_crafted": 900,
            "artifact": 1000
        },
        "description": "This is a Neutron blaster, typically found in Sabre Strike Tanks, this one has been mounted for use in a space marine tank.",
        "melee_hands": 0,
        "ranged_hands": 1,
        "ammo": 6,
        "range": 20,
        "spli": 2,
        "arp": 1,
	"tags":[ "vehicle", "turret"]
    },  
				
}
global.gear = {
  "armour": {
  	// Tribal wear
		"Tribalwear": {
			"abbreviation": "Trblwr",
			"armour_value": {
				"standard": 2,
				"master_crafted": 3,
				"artifact": 5
			},
			"ranged_mod": {
				"standard": 15,
				"master_crafted": 20, // Augmented
				"artifact": 25 // Augmented
			},
			"melee_mod": {
				"standard": 15,
				"master_crafted": 20, // Augmented
				"artifact": 25 // Augmented
			},
			"description": "Garmets made from animal hides and plant material. Usually seen used by primitives and ferals.",
			"tags": ["primitive"],
		},
	// Early Conventional Armours
		"Chainmail": {
			"abbreviation": "Chnml",
			"armour_value": {
				"standard": 5,
				"master_crafted": 6,
				"artifact": 8
			},
			"ranged_mod": {
				"standard": 15,
				"master_crafted": 20, // Augmented
				"artifact": 25 // Augmented
			},
			"melee_mod": {
				"standard": 15,
				"master_crafted": 20, // Augmented
				"artifact": 25 // Augmented
			},
			"description": "An armour made out of small metal rings, forming a mesh. Effectiveness is limited considering the foes we are supposed to face.",
			"tags": ["primitive"],
			"maintenance" : 0.01,
		},
	// Late Conventional Armour
		"Plate Armour": {
			"abbreviation": "PltArm",
			"armour_value": {
				"standard": 8,
				"master_crafted": 10,
				"artifact": 12
			},
			"ranged_mod": {
				"standard": 10,
				"master_crafted": 15, // Augmented
				"artifact": 20 // Augmented
			},
			"melee_mod": {
				"standard": 10,
				"master_crafted": 15, // Augmented
				"artifact": 20 // Augmented
			},
			"description": "An armour made out of steel. Effectiveness is limited considering the foes we are supposed to face.",
			// "tags": ["primitive"],
			"maintenance" : 0.01,
		},
		"Flak Armour": {
			"abbreviation": "FlkArm",
			"armour_value": {
				"standard": 7,
				"master_crafted": 10,
				"artifact": 12
			},
			"ranged_mod": {
				"standard": 15,
				"master_crafted": 20, // Augmented
				"artifact": 25 // Augmented
			},
			"melee_mod": {
				"standard": 15,
				"master_crafted": 20, // Augmented
				"artifact": 25 // Augmented
			},
			"description": "The armour used by the standard imperial forces, adjusted to be useable by space marines.",
			// "tags": ["primitive"],
			"maintenance" : 0.01,
		},
	// 40k armours
 // Scout-tier armours
    "Scout Armour": {
        "abbreviation": "SctArm",
      "armour_value": {
        "standard": 8,
        "master_crafted": 10,
        "artifact": 12
      },
      "ranged_mod": {
        "standard": 15,
        "master_crafted": 20, // Augmented
        "artifact": 25 // Augmented
      },
      "melee_mod": {
        "standard": 15,
        "master_crafted": 20, // Augmented
        "artifact": 25 // Augmented
      },
      "description": "A non-powered suit made up of carapace armour and ballistic nylon. Includes biohazard shielding, nutrient feed, and camouflage.",
	  "maintenance" : 0.02,
    },
 // Dreadnought Armours
    "Dreadnought": {
         "abbreviation": "Drdnght", 
      "armour_value": {
        "standard": 60,
        "master_crafted": 65,
        "artifact": 70
      },
      "ranged_mod": {
        "standard": 0,
        "master_crafted": 5, // Augmented
        "artifact": 10 // Augmented
      },
      "melee_mod": {
        "standard": 0,
        "master_crafted": 5, // Augmented
        "artifact": 10 // Augmented
      },
      "melee_hands":8,
      "ranged_hands":8,      
      "description": "A massive war-machine that can be piloted by an honored Astarte, who otherwise would have fallen in combat. Some of the Astartes consider this a fate worse than death",
	  "maintenance" : 0.2,
    },
		"Contemptor Dreadnought": { 
			"abbreviation": "Cntmptr",
			"armour_value": {
				"standard": 60,
				"master_crafted": 65,
				"artifact": 70
			},
			"ranged_mod": {
				"standard": 0,
				"master_crafted": 5, // Augmented
				"artifact": 10 // Augmented
			},
			"melee_mod": {
				"standard": 0,
				"master_crafted": 5, // Augmented
				"artifact": 10 // Augmented
			},
			"melee_hands": 8,
			"ranged_hands": 8,
			"description": "PLACEHOLDER",
			"tags": ["dreadnought", "ancient"],
		},
 // Terminator armours
    "Early Terminator Armour": {
         "abbreviation": "HPArm", 
      "armour_value": {
        "standard": 35,
        "master_crafted": 37,
        "artifact": 40
      },
      "ranged_mod": {
        "standard": -20,
        "master_crafted": 0,
        "artifact": 10
      },
      "melee_mod": {
        "standard": -20,
        "master_crafted": 0,
        "artifact": 10
      },
      "melee_hands":1,
      "ranged_hands":1,
      "description": "A simple variant of personal heavy power armour. It generally is a modified heavy-duty industrial armour, hence is typically the weakest.",
       "tags":["terminator"],
	   "maintenance" : 0.06,
    },
    "Terminator Armour": {
         "abbreviation": "Indmts",
      "armour_value": {
        "standard": 45,
        "master_crafted": 46,
        "artifact": 48
      },
      "ranged_mod": {
        "standard": -5,
        "master_crafted": 0,
        "artifact": 5
      },
      "melee_mod": {
        "standard": -5,
        "master_crafted": 0,
        "artifact": 5
      },
      "melee_hands":2,
      "ranged_hands":2,
      "description": "Also known as Indomitus Pattern Terminator Armour, it is one of the strongest heavy powered personal armours.",
      "tags":["terminator"],
      "req_exp":60,
	  "maintenance" : 0.15,
    },
    "Tartaros": {
        "abbreviation": "Tartrs", 
      "armour_value": {
        "standard": 46,
        "master_crafted": 48,
        "artifact": 50
      },
      "ranged_mod": {
        "standard": 5,
        "master_crafted": 10, // Augmented
        "artifact": 15 // Augmented
      },
      "melee_mod": {
        "standard": 5,
        "master_crafted": 10,
        "artifact": 15
      },
      "melee_hands":2,
      "ranged_hands":2,      
      "description": "This pattern is considered the most advanced form of Heavy Power Armour, providing greater mobility for the wearer compared to the Indomitus with no loss in durability. Considered to be very rare.",
      "tags":["terminator"],
      "req_exp":60,
	  "maintenance" : 0.17,
    },
    "Cataphractii Pattern Terminator":{
        "abbreviation": "Catphr", 
      "armour_value": {
        "standard": 50,
        "master_crafted": 51,
        "artifact": 52
      },
      "ranged_mod": {
        "standard": -10,
        "master_crafted": 0, // Augmented
        "artifact": 10 // Augmented
      },
      "melee_mod": {
        "standard": -10,
        "master_crafted": 0,
        "artifact": 10,
	},
      "melee_hands":2,
      "ranged_hands":2,      
      "description": "Among the first issued to the Space Marine Legions. Having additional protection systems made this suit rather bulky, leading to its decline among some legions.",
      "tags":["terminator"],
      "req_exp":60,
	  "maintenance" : 0.18,
    },
 // Power armours
    "Power Armour": {
        "abbreviation": "PArm", 
      "armour_value": {
        "standard": 20,
        "master_crafted": 25,
        "artifact": 30
      },
      "ranged_mod": {
        "standard": 0,
        "master_crafted": 10,
        "artifact": 20
      },
      "melee_mod": {
        "standard": 0,
        "master_crafted": 10,
        "artifact": 20
      },
      "melee_hands": 0.1,
      "ranged_hands": 0.1,
      "description": "A custom made suit of power armour, from whatever components that could be acquired, while still ensuring adequate combat performance. Lack of standardization tends to make it costly to maintain, however.",
      "tags":["power_armour"],
	  "maintenance" : 0.1,
    },
    "Artificer Armour": {
        "abbreviation": "Artfcr", 
      "armour_value": {
        "standard": 37,
        "master_crafted": 41,
        "artifact": 45
      },
      "ranged_mod": {
        "standard": 10,
        "master_crafted": 20,
        "artifact": 25
      },
      "melee_mod": {
        "standard": 10,
        "master_crafted": 20,
        "artifact": 25
      },
      "melee_hands": 0.25,
      "ranged_hands": 0.25,
      "description": "This design attempts to take the power armour concept to its limit. Tends to be very costly to maintain, however.",
      "tags":["power_armour"],
	  "maintenance" : 0.2,
    },
    "MK1 Thunder Armour": {
        "abbreviation": "MK1",
      "armour_value": {
        "standard": 13,
        "master_crafted": 15,
        "artifact": 17
      },
      "ranged_mod": {
        "standard": -10,
        "master_crafted": 0,
        "artifact": 10
      },
      "melee_mod": {
        "standard": -10,
        "master_crafted": 0, // Augmented
        "artifact": 10 // Augmented
      },
      "melee_hands": 0.05,
      "ranged_hands": 0.05,
      "description": "The first variant of power armour. Was meant to be used only on Terra, but some rudimentary life support systems and other improvements are added.",
       "tags":["power_armour"],
	   "maintenance" : 0.03,
    },
    "MK2 Crusade Armour": {
        "abbreviation": "MK2",
      "armour_value": {
        "standard": 20,
        "master_crafted": 23,
        "artifact": 25
      },
      "ranged_mod": {
        "standard": 0,
        "master_crafted": 5,
        "artifact": 10
      },
      "melee_mod": {
        "standard": 0,
        "master_crafted": 5, // Augmented
        "artifact": 10 // Augmented
      },
      "melee_hands": 0.1,
      "ranged_hands": 0.1,
      "description": "Armour made with Great Crusade in mind. Often believed to be the most efficient power armour design.",
       "tags":["power_armour"],
	   "maintenance" : 0.06,
    },
    "MK3 Iron Armour": {
        "abbreviation": "MK3",
      "armour_value": {
        "standard": 26,
        "master_crafted": 30,
        "artifact": 34
      },
      "ranged_mod": {
        "standard": -5,
        "master_crafted": 0,
        "artifact": 5
      },
      "melee_mod": {
        "standard": -5,
        "master_crafted": 0, // Augmented
        "artifact": 5 // Augmented
      },
      "melee_hands": 0.1,
      "ranged_hands": 0.1,
      "description": "An ancient set of Armorum Ferrum. Generally the best in terms of protection, but it is quite heavy.",
       "tags":["power_armour"],
	   "maintenance" : 0.07,
    },
    "MK4 Maximus": {
    "abbreviation": "MK4",
      "armour_value": {
        "standard": 22,
        "master_crafted": 26,
        "artifact": 32
      },
      "ranged_mod": {
        "standard": 5,
        "master_crafted": 10,
        "artifact": 15
      },
      "melee_mod": {
        "standard": 5,
        "master_crafted": 10, // Augmented
        "artifact": 15 // Augmented
      },
      "melee_hands": 0.15,
      "ranged_hands": 0.15,
      "description": "Armour dating to the end of the Great Crusade. Often considered the ultimate Space Marine armour. The components are difficult to reproduce.",
      "tags":["power_armour"],
	  "maintenance" : 0.08,
    },
    "MK5 Heresy": {
    "abbreviation": "MK5",
      "armour_value": {
        "standard": 15,
        "master_crafted": 17,
        "artifact": 20
      },
      "ranged_mod": {
        "standard": -5,
        "master_crafted": 5,
        "artifact": 10
      },
      "melee_mod": {
        "standard": -5,
        "master_crafted": 5,
        "artifact": 10
      },
      "melee_hands": 0.06,
      "ranged_hands": 0.06,
      "description": "Developed during the Horus Heresy, made from various components that could still be produced. With the ad-hoc nature of these suits, it is one of the weaker armours.",
      "tags":["power_armour"],
	  "maintenance" : 0.04,
    },
    "MK6 Corvus": {
    "abbreviation": "MK6",
      "armour_value": {
        "standard": 16,
        "master_crafted": 18,
        "artifact": 20
      },
      "ranged_mod": {
        "standard": 15,
        "master_crafted": 20, // Augmented
        "artifact": 25 // Augmented
      },
      "melee_mod": {
        "standard": 15,
        "master_crafted": 20, // Augmented
        "artifact": 25 // Augmented
      },
      "melee_hands": 0.1,
      "ranged_hands": 0.1,
      "description": "First appearing during Horus heresy, boosted olfactory and auditory sensors increase the accuracy of the wearer. It is more fragile however.",
      "tags":["power_armour"],
	  "maintenance" : 0.06,
    },
    "MK7 Aquila": {
    "abbreviation": "MK7",
      "armour_value": {
        "standard": 17,
        "master_crafted": 19,
        "artifact": 21
      },
      "ranged_mod": {
        "standard": 0,
        "master_crafted": 5, // Augmented
        "artifact": 10 // Augmented
      },
      "melee_mod": {
        "standard": 0,
        "master_crafted": 5, // Augmented
        "artifact": 10 // Augmented
      },
      "melee_hands": 0.1,
      "ranged_hands": 0.1,
      "description": "The staple power armour, developed during the Horus heresy, that is still manufactured.",
      "tags":["power_armour"],
	  "maintenance" : 0.05,
    },
    "MK8 Errant": {
        "abbreviation": "MK8",
      "armour_value": {
        "standard": 19,
        "master_crafted": 21,
        "artifact": 23
      },
      "ranged_mod": {
        "standard": 0,
        "master_crafted": 5, // Augmented
        "artifact": 10 // Augmented
      },
      "melee_mod": {
        "standard": 0,
        "master_crafted": 5, // Augmented
        "artifact": 10 // Augmented
      },
      "melee_hands": 0.15,
      "ranged_hands": 0.15,
    "description": "The newest and, in some ways, most advanced of the standardized power armours. It still tends to be rare and expensive.",
    "tags":["power_armour"],
	"maintenance" : 0.06,
    },
    "MK10 Tacticus": {
        "abbreviation": "MK10",
      "armour_value": {
        "standard": 24,
        "master_crafted": 26, // Augmented
        "artifact": 28 // Augmented
      },
      "ranged_mod": {
        "standard": 0,
        "master_crafted": 5, // Augmented
        "artifact": 10 // Augmented
      },
      "melee_mod": {
        "standard": 0,
        "master_crafted": 5, // Augmented
        "artifact": 10 // Augmented
      },
      "melee_hands": 0.15,
      "ranged_hands": 0.15,
      "description": "The MK10 Tacticus is the most advanced pattern of power armour available to the Space Marines, featuring advanced materials and systems.",
      "tags":["power_armour"],
	  "maintenance" : 0.07,
    }, 
 // ally faction armour
        "Skitarii Armour":{
            "abbreviation": "SkitArm",
            "description": "Skitarri Armour is something of a misnomer as most Skitarii are in fact bonded more or less permenantly to their advanced mars armour",
             "armour_value": {
                "standard": 10,
                "master_crafted": 12, // Augmented
                "artifact": 15 // Augmented
            },                   
        },
        "Dragon Scales":{
            "abbreviation": "DrgnArm",
            "description": "A type of power armour that is worn by the techpriests of the adeptus mechanicus.",
             "armour_value": {
                "standard": 20,
                "master_crafted": 22, // Augmented
                "artifact": 25 // Augmented
            },                   
        },
        "Light Power Armour":{
            "abbreviation": "LPArm",
            "description": "A type of power armour that can be used by regular humans.",
             "armour_value": {
                "standard": 10,
                "master_crafted": 12, // Augmented
                "artifact": 15 // Augmented
            },                   
        },
		"Ranger Armour":{
			"abbreviation": "RngrArm",
			"description": "This armour is used by eldar rangers.",
			 "armour_value": {
                "standard": 25,
                "master_crafted": 27, // Augmented
                "artifact": 30 // Augmented
            },                   
		},
        "Ork Armour": {
            "abbreviation": "OrkArm", 
                "armour_value": {
                "standard": 12,
                "master_crafted": 14,
                "artifact": 16
                },
            "ranged_mod": {
            "standard": 0,
            "master_crafted": 5, // Augmented
            "artifact": 10 // Augmented
            },
            "melee_mod": {
            "standard": 0,
            "master_crafted": 5, // Augmented
            "artifact": 10 // Augmented
            },
        "description": "This shoddy collection of scraps are usually seen used by ork forces"
        },
		"Fire Warrior Armour": {
			"abbreviation": "FWarArm",
			"description": "This armour is used by T'au fire warriors.",
			 "armour_value": {
                "standard": 13,
                "master_crafted": 15, // Augmented
                "artifact": 18 // Augmented
            },                   
		},
    } , 
 // Vehicle equipment
 // Tribal Vehicle armour (ideas)
		/*
		"Wooden Armour": {
		"description": "Vehicle armour with wooden frames and potentially animal hides. Rather inefficient against foes with serious weaponry.",
		"abbreviation": "WdnArmr",
		"armour_value": {
			"standard": 2,
			"master_crafted": 3,
			"artifact": 4
		},
		"damage_resistance_mod": -5, // Damage resistance in this case stands for capability to avoid being hit - wood does have a weight, so it tends to add some inertia to movement
		"tags": ["vehicle", "primitive"],
		},
		*/
		/*
		"Stone Armour": {
		"description": "Rocks and earthworks are used for fortification of this vehicle. While more effective, it renders the vehicle immobile.",
		"abbreviation": "StnArmr",
		"armour_value": {
			"standard": 5,
			"master_crafted": 6,
			"artifact": 7
		},
		"damage_resistance_mod": -100, // Being immobile penalty.
		"tags": ["vehicle", "primitive"],
		},
		*/
	// Vehicle accessories of 40k
    "Armoured Ceramite":{
        "abbreviation": "ArmCrmt",
        "description": "Supplemental ceramite armour packages provide protection far beyond stock configurations while also adding significant weight to the chassis.",
         "armour_value": {
            "standard": 20,
            "master_crafted": 24, 
            "artifact": 28 
        }, 
        "tags":["vehicle", "armour"],              
    },
    "Heavy Armour":{
        "abbreviation": "HvyArm",
        "description": "Simple but effective, extra armour plates can be attached to most vehicles to provide extra protection.",
         "armour_value": {
            "standard": 10,
            "master_crafted": 12, 
            "artifact": 14 
        }, 
        "tags":["vehicle", "armour"],              
    },
    "Void Shield":{
        "abbreviation": "V Shld",
        "description": "An advanced shield capable of providing extreme protection to heavy vehicles.",
         "armour_value": {
            "standard": 40,
            "master_crafted": 52, 
            "artifact": 64 
        },
		"damage_resistance_mod": {
        "standard": 30,
        "master_crafted": 35,
        "artifact": 40
      },
        "tags":["vehicle", "armour", "voidshield"],              
    },
    "Lucifer Pattern Engine":{
        "abbreviation": "Luc Eng",
        "description": "An advanced engine that increases tactical flexibility by enabling more options for movement and faster repositioning.",
		"damage_resistance_mod": {
        "standard": 10,
        "master_crafted": 15,
        "artifact": 20
      },
      "ranged_mod": {
        "standard": 10,
        "master_crafted": 15,
        "artifact": 20
      },
        "tags":["vehicle", "armour", "Upgrade"],              
    },
    "Artificer Hull":{
        "abbreviation": "ArtHll",
        "description": "Replacing numerous structural components and armour plates with thrice-blessed replacements, the vehicle’s hull is upgraded to be a rare work of mechanical art by master artificers.",
         "armour_value": {
            "standard": 10,
            "master_crafted": 12, 
            "artifact": 14 
        }, 
        "tags":["vehicle","Upgrade"],              
    },                
    "Smoke Launchers": {
      "description": "Useful for providing concealment in open terrain, these launchers project wide-spectrum concealing smoke to prevent accurate targeting of the vehicle.",
      "abbreviation": "SmkLnchrs",
      "damage_resistance_mod": {
        "standard": 5,
        "master_crafted": 10,
        "artifact": 15
      },
      "tags":["smoke", "conceal", "vehicle", "dreadnought"]
    },
    "Dozer Blades": {
      "description": "An attachment for the front of vehicles, useful for clearing difficult terrain and can be used as an improvised weapon. ",
      "abbreviation": "DzrBlds",
        "attack": {
            "standard": 30,
            "master_crafted": 35,
            "artifact": 50
        },
        "ammo": 0,
        "range": 1,
        "spli": 1,
        "arp": 0,
       "tags":["vehicle"],              
    },
    "Searchlight": {
      "description": "A simple solution for fighting in dark environments, searchlights serve to illuminate enemies for ease of targeting.",
      "abbreviation": "SrchLght",
      "ranged_mod": {
        "standard": 5,
        "master_crafted": 10,
        "artifact": 15
      },
       "tags":["vehicle", "dreadnought"],              
    },
    "Frag Assault Launchers": {
        "abbreviation": "FrgAssLnchrs", 
        "description": "These launchers enable a vehicle to clear an area for its loaded troops, or prevent boarding by an enemy at close range.",
      "damage_resistance_mod": {
        "standard": 10,
        "master_crafted": 15,
        "artifact": 20
      },
         "tags":["vehicle"],              
    },
 // bionics and other stuff
  "gear": {
  // Tribal Medicine
		"Medical Herb Pack": {
			"abbreviation": "MedHrbPck",
			"special_properties": ["Medkit"],
			"description": "A collection of various ingredients - from plant, mushroom and animal-based - that have a medical use. Primitive, so usefulness is limited.",
			"melee_hands": -0.9,
			"ranged_hands": -0.9,
			"tags": ["primitive"],
			"maintenance" : 0.01,
		},
	//Gear of 40k
    "Sororitas Medkit":{
        "abbreviation": "SorMed",
		"special_properties": ["Medkit"],
        "description": "A multi-purpose medkit designed to deal with basic battlefield ailments until further medical assistance can be saught.",
		"melee_hands": -0.25,
        "ranged_hands": -0.25,
		"maintenance" : 0.01,
    },
    "Bionics": {
        "abbreviation": "Bncs",
      "description": "Bionics are electro-mechanic limbs and other organs, intended to replace lost ones. Best used on marines in critical condition.",
      "hp_mod": {
        "standard": 30, // Adjusted
        "master_crafted": 40, // Adjusted
        "artifact": 50 // Adjusted
      }
    },    
    "Narthecium": {
    "abbreviation": "Nrthcm",
      "special_properties": ["Medkit"],
      "description": "An advanced medical field kit, these allow Space Marines to heal or recover Gene-Seed from fallen marines.",
        "melee_hands": -0.05,
        "ranged_hands": -0.05,       
      "armour_value": {
        "standard": 0,
        "master_crafted": 2,
        "artifact": 5
      } ,
      "damage_resistance_mod": {
        "standard": 0, // Adjusted
        "master_crafted": 5, // Adjusted
        "artifact": 10 // Adjusted
      },
      "melee_mod": { // The idea is, having various devices analyse the biological properties - both friend and foe - gives a better idea of enemy weakpoints
            "standard": 10,
            "master_crafted": 15,
            "artifact": 20
        },
      "ranged_mod": {
        "standard": 5,
        "master_crafted": 10,
        "artifact": 15
      },
	  "maintenance" : 0.01,
    },
	// Tribal psychic equipment
		"Psychic Accessories": {
			"abbreviation": "PsyAcs",
			"description": "Collection of bracelets, amulets and rings with inscribed runes. Designed to protect the user from psychic powers and help him focus.",
			"specials": {
				"psychic_focus": 5
			},
			"maintenance" : 0.01,
		},
	// 40k psychic equipment
    "Psychic Hood": {
    "abbreviation": "PsyHd",
		"specials": {
			"psychic_focus": 15
		},
      "description": "An attachment to armour intended to help psykers keep their powers under control. Helps to reduce casualties.",
      "armour_value": {
        "standard": 1,
        "master_crafted": 2,
        "artifact": 5
      } ,
      "damage_resistance_mod": {
        "standard": 0, // Adjusted
        "master_crafted": 5, // Adjusted
        "artifact": 10 // Adjusted
      },
	  "maintenance" : 0.01,
    },
    "Rosarius": {
        "abbreviation": "Rsrius",
      "description": "An attachment to armour that also serves as an icon of faith. Has a built-in shield generator.",
      "armour_value": {
        "standard": 2,
        "master_crafted": 5,
        "artifact": 10
      } ,
      "damage_resistance_mod": {
        "standard": 10, // Adjusted
        "master_crafted": 15, // Adjusted
        "artifact": 20 // Adjusted
      },
     "maintenance" : 0.05,
    },
    "Iron Halo": {
        "abbreviation": "IrnHalo",
      "special_description": "",
      "description": "A powerful personal shield generator, designed in ancient, more enlightened, times.",
      "armour_value": {
        "standard": 5,
        "master_crafted": 10,
        "artifact": 20
      } ,
      "damage_resistance_mod": {
        "standard": 15, // Adjusted
        "master_crafted": 20, // Adjusted
        "artifact": 25 // Adjusted
      },
     "maintenance" : 0.1,
    },
    "Plasma Bomb": {
    "abbreviation": "PlBomb",
      "special_properties": ["Structure Destroyer"],
      "description": "A special plasma charge, this bomb can be used to seal underground caves or destroy enemy structures.",
    },
    "Exterminatus": {
        "abbreviation": "Extrmnts",
      "special_properties": ["Planet Destroyer"],
      "description": "A weapon of the Emperor, and His divine judgment, this weapon can be placed upon a planet to obliterate it entirely.",
    },
    "Servo Arms": {
    "abbreviation": "SrvArms",
      "special_properties": ["Integrated Flamer, Repairs Vehicles"],
      "description": "A pair of powerful mechanical arms. They include several tools that allow trained Astartes to repair vehicles rapidly alongside an integrated flamer to beat back the Emperor's foes.",
        "melee_hands": 0.25,
        "ranged_hands": 0.25,  
      "armour_value": {
        "standard": 1,
        "master_crafted": 3,
        "artifact": 5
      } ,
      "damage_resistance_mod": {
        "standard": 5, // Adjusted
        "master_crafted": 10, // Adjusted
        "artifact": 15 // Adjusted
      },
      "melee_mod": {
            "standard": 5,
            "master_crafted": 10,
            "artifact": 15
        },
      "ranged_mod": {
        "standard": 5,
        "master_crafted": 10,
        "artifact": 15
      },
    },
    "Master Servo Arms": {
    "abbreviation": "MsSrvArms",
      "special_properties": ["Integrated Flamer, Repairs Vehicles"],
      "description": "This master servo harness includes additional mechanical arms and tools, allowing a greater capacity and rate of repairs.",
        "melee_hands": 0.5,
        "ranged_hands": 0.5,  
      "armour_value": {
        "standard": 3,
        "master_crafted": 5,
        "artifact": 10
      } ,
      "damage_resistance_mod": {
        "standard": 10, // Adjusted
        "master_crafted": 15, // Adjusted
        "artifact": 20 // Adjusted
      },
      "melee_mod": {
            "standard": 10,
            "master_crafted": 15,
            "artifact": 20
        },
      "ranged_mod": {
        "standard": 10,
        "master_crafted": 15,
        "artifact": 20
      },
    },
	// Tribal tier gear
		"Wooden Shield": {
			"description": "Several wooden planks and/or animal hides attached together to form a protective layer. Rather inefficient against foes with serious weaponry.",
			"abbreviation": "WdnShld",
			"armour_value": {
				"standard": 1,
				"master_crafted": 2,
				"artifact": 3
			},
			"weight": 2,
			"tags": ["shield", "primitive"],
			"melee_hands": -0.2,
			"ranged_hands": -0.2,
			"maintenance" : 0.01,
		},
	// 40k tier gear
    "Combat Shield": {
        "description":"A lighter, more maneuverable version of a Storm Shield. Due to its flexibility, Combat Shields leave other hand of a Space Marine free to use other hand-to-hand weaponry.",
        "abbreviation": "CmbtShld",
        "armour_value": {
            "standard": 4,
            "master_crafted": 6,
            "artifact": 8
        } ,
        // "weight":3,
        "tags":["shield"],
		"maintenance" : 0.01,
      },  
		"Gene Pod Incubator" : {
			"abbreviation": "GenePod",
			"description": "Required to house gene slaves in order to generate new gene seed for the chapter.",
		},
  },
  "mobility":{
  // Tribal tier mobility item idea
		"Animal Mount": {
			"abbreviation": "AnmlMnt",
			"description": "An animal that is harnessed to serve as a source for locomotion of a vehicle, or a mount for a marine.",
			// "second_profiles": ["Animal Claws"], - other potential options are Horns, Kicks and Bites.
			"damage_resistance_mod": 5,
			"maintenance" : 0.01,
		},
	// Mobility items of 40k
   "Bike": {
    "abbreviation": "Bike",
      "special_properties": ["Integrated Twin Linked-Bolters"],
      "description": "A robust bike that can propel a marine at very high speeds. Boasts highly responsive controls and Twin Linked Bolters.",
      "damage_resistance_mod": {
        "standard": 10,
        "master_crafted": 15,
        "artifact": 20
      },
        "melee_hands": -0.5,
        "ranged_hands": -0.5,        
		"maintenance" : 0.02,
    },

    "Jump Pack": {
    "abbreviation": "JmpPck",
	"special_properties": ["Hammer of Wrath"],
      "description": "A back-mounted device containing turbines or jets powerful enough to lift even a user in Power Armour.",
      "damage_resistance_mod": {
        "standard": 20,
        "master_crafted": 25,
        "artifact": 30
      },
      "tags":["jump"],
	  "maintenance" : 0.02,
    },
		"Serpha Jump Pack": {
			"abbreviation": "SphJmpPck",
			"special_properties": ["Hammer of Wrath"],
			"description": "Once the mainstay of the Legiones Astartes, now the Serpha Pattern Jump Pack is nothing but a sad reminder of these better times and of the terrible atrocities that followed. Mainly used by the Traitors in the modern Imperium, it is nonetheless seen in the Loyalist armouries in which it is prized for its superior energy cells and power cabling, but doesn't provide as reliable of a thruster as, for instance, the most common in the 41st millennium Mark VII Mars Pattern.",
			"damage_resistance_mod": {
				"standard": 30,
				"master_crafted": 35,
				"artifact": 40
			},
			"tags": ["jump", "ancient"],
			"maintenance" : 0.02,
		},
    "Heavy Weapons Pack": {
    "abbreviation": "HvyWpPck",
      "description": "A heavy ammunition backpack commonly used by marines in conjunction with a heavy ranged weapon.",
      "ranged_mod": {
        "standard": 5,
        "master_crafted": 10,
        "artifact": 15
      },
      "melee_mod": {
        "standard": -5,
        "master_crafted": -3,
        "artifact": 0
      },
    "melee_hands": -1,
    "ranged_hands": 1,      
	"maintenance" : 0.01,
    },
	// Tribal repair item
		"Primitive Tools": {
			"abbreviation": "PrmtvTls",
			"special_properties": ["Repairs Vehicles"],
			"second_profiles": ["Stone Hammer"],
			"description": "A collection of primitive tools, that allow some measure of repairs.",
			"damage_resistance_mod": {
				"standard": 0, // Adjusted
				"master_crafted": 1, // Adjusted
				"artifact": 2 // Adjusted
			},
			"melee_hands": -0.5,
			"ranged_hands": -0.5,
		},
	// Conventional repair item
		"Combi-Tool": {
			"abbreviation": "CmbTl",
			"special_properties": ["Repairs Vehicles"],
			"second_profiles": ["Iron Hammer"],
			"description": "The standard utility and maintenance tool in the imperium. \nTo forge - Early Metallurgy.",
			"damage_resistance_mod": {
				"standard": 0, // Adjusted
				"master_crafted": 2, // Adjusted
				"artifact": 4 // Adjusted
			},
			"melee_hands": -0.25,
			"ranged_hands": -0.25,
		},
	// 40k items
		"Servo-arm": {
			"abbreviation": "SrvArm",
			"special_properties": ["Repairs Vehicles"],
			"second_profiles": ["Servo-arm(M)"],
			"description": "A manipulator mechandendrite, also known as a Servo-arm. This artificial limb is the best techmarine tool available, besides the Servo-harness variant. \nTo forge - Advanced Mechanisms and Chemistry",
			"damage_resistance_mod": {
				"standard": 0, // Adjusted
				"master_crafted": 5, // Adjusted
				"artifact": 10 // Adjusted
			},
			"melee_hands": -0.05,
			"ranged_hands": -0.05,
		},
		"Servo-harness": {
			"abbreviation": "SrvHrns",
			"special_properties": ["Repairs Vehicles"],
			"second_profiles": ["Servo-arm(M)", "Servo-arm(M)", "Flamer", "Lascutter"],
			"description": "A Servo-Harness is a special type of augmetic aid, often used by Chapter's Master of the Forge or his senior Techmarines. It consists of many blessed tools, two Servo-arms and a couple of deadly weapons. With it, one can make battlefield repairs on any vehicle, shore up defences, or even assist his battle-brothers in combat.",
			"damage_resistance_mod": {
				"standard": 5, // Adjusted
				"master_crafted": 10, // Adjusted
				"artifact": 15 // Adjusted
			},
			"melee_hands": -0.1,
			"ranged_hands": -0.1,
		},
		"Conversion Beamer Pack": {
			"abbreviation": "CnvBmr",
			"second_profiles": ["Conversion Beam Projector"],
			"description": "The Conversion Beam Projector is a heavy energy weapon that harnesses advanced technology to project a concentrated beam of destructive energy. Armor detonates as the matter that comproises it is transformed into pure energy.",
			"melee_hands": -0.5,
			"ranged_hands": -0.5,
			"maintenance" : 0.1,
		},
    // Add more mobility items as needed...
  }
}
