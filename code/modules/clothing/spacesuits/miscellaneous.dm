//miscellaneous spacesuits
/*
Contains:
 - Captain's spacesuit
 - Death squad's hardsuit
 - Officer's beret/spacesuit
 - NASA Voidsuit
 - Father Christmas' magical clothes
 - Pirate's spacesuit
 - ERT hardsuit: command, sec, engi, med
 - EVA spacesuit
 - Freedom's spacesuit (freedom from vacuum's oppression)
 - Carp hardsuit
 - HEV Suit
*/

	//Captain's space suit, not hardsuits because no flashlight!
/obj/item/clothing/head/helmet/space/captain
	name = "captain's space helmet"
	icon_state = "capspace"
	item_state = "capspacehelmet"
	desc = "A special helmet designed for only the most fashionable of military figureheads."
	flags_inv = HIDEFACE
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	permeability_coefficient = 0.01
	armor = list(melee = 60, bullet = 50, laser = 50, energy = 25, bomb = 50, bio = 100, rad = 50)

/obj/item/clothing/suit/space/captain
	name = "captain's space suit"
	desc = "A bulky, heavy-duty piece of exclusive Nanotrasen armor. YOU are in charge!"
	icon_state = "caparmor"
	item_state = "capspacesuit"
	w_class = 4
	allowed = list(/obj/item/weapon/tank/internals, /obj/item/device/flashlight,/obj/item/weapon/gun/energy, /obj/item/weapon/gun/projectile, /obj/item/ammo_box, /obj/item/ammo_casing, /obj/item/weapon/melee/baton,/obj/item/weapon/restraints/handcuffs)
	slowdown = 1
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	armor = list(melee = 60, bullet = 60, laser = 50, energy = 25, bomb = 50, bio = 100, rad = 50)


	//Death squad armored space suits, not hardsuits!
/obj/item/clothing/head/helmet/space/hardsuit/deathsquad
	name = "deathsquad helmet"
	desc = "That's not red paint. That's real blood."
	icon_state = "deathsquad"
	item_state = "deathsquad"
	armor = list(melee = 80, bullet = 80, laser = 80, energy = 50, bomb = 100, bio = 100, rad = 100)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	unacidable = 1
	action_button_name = null

/obj/item/clothing/head/helmet/space/hardsuit/deathsquad/attack_self(mob/user)
	return

/obj/item/clothing/suit/space/hardsuit/deathsquad
	name = "deathsquad suit"
	desc = "A heavily armored, advanced space suit that protects against most forms of damage."
	icon_state = "deathsquad"
	item_state = "swat_suit"
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/restraints/handcuffs,/obj/item/weapon/tank/internals)
	armor = list(melee = 80, bullet = 80, laser = 50, energy = 50, bomb = 100, bio = 100, rad = 100)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	unacidable = 1
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/deathsquad

/obj/item/clothing/head/helmet/space/beret
	name = "officer's beret"
	desc = "An armored beret commonly used by special operations officers. Uses advanced force field technology to protect the head from space."
	icon_state = "beret_badge"
	flags = STOPSPRESSUREDMAGE
	flags_inv = 0
	armor = list(melee = 80, bullet = 80, laser = 50, energy = 50, bomb = 100, bio = 100, rad = 100)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	unacidable = 1

/obj/item/clothing/suit/space/officer
	name = "officer's jacket"
	desc = "An armored, space-proof jacket used in special operations."
	icon_state = "detective"
	item_state = "det_suit"
	blood_overlay_type = "coat"
	slowdown = 0
	flags_inv = 0
	w_class = 3
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/restraints/handcuffs,/obj/item/weapon/tank/internals)
	armor = list(melee = 80, bullet = 80, laser = 50, energy = 50, bomb = 100, bio = 100, rad = 100)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	unacidable = 1


	//NASA Voidsuit
/obj/item/clothing/head/helmet/space/nasavoid
	name = "NASA Void Helmet"
	desc = "An old, NASA Centcom branch designed, dark red space suit helmet."
	icon_state = "void"
	item_state = "void"

/obj/item/clothing/suit/space/nasavoid
	name = "NASA Voidsuit"
	icon_state = "void"
	item_state = "void"
	desc = "An old, NASA Centcom branch designed, dark red space suit."
	allowed = list(/obj/item/device/flashlight,/obj/item/weapon/tank/internals,/obj/item/device/multitool)


	//Space santa outfit suit
/obj/item/clothing/head/helmet/space/santahat
	name = "Santa's hat"
	desc = "Ho ho ho. Merrry X-mas!"
	icon_state = "santahat"
	flags = BLOCKHAIR | STOPSPRESSUREDMAGE
	flags_cover = HEADCOVERSEYES

/obj/item/clothing/suit/space/santa
	name = "Santa's suit"
	desc = "Festive!"
	icon_state = "santa"
	item_state = "santa"
	slowdown = 0
	flags = STOPSPRESSUREDMAGE
	allowed = list(/obj/item) //for stuffing exta special presents


	//Space pirate outfit
/obj/item/clothing/head/helmet/space/pirate
	name = "pirate hat"
	desc = "Yarr."
	icon_state = "pirate"
	item_state = "pirate"
	armor = list(melee = 30, bullet = 50, laser = 30,energy = 15, bomb = 30, bio = 30, rad = 30)
	flags = BLOCKHAIR | STOPSPRESSUREDMAGE
	strip_delay = 40
	put_on_delay = 20
	flags_cover = HEADCOVERSEYES

/obj/item/clothing/suit/space/pirate
	name = "pirate coat"
	desc = "Yarr."
	icon_state = "pirate"
	item_state = "pirate"
	w_class = 3
	flags_inv = 0
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/restraints/handcuffs,/obj/item/weapon/tank/internals, /obj/item/weapon/melee/energy/sword/pirate, /obj/item/clothing/glasses/eyepatch, /obj/item/weapon/reagent_containers/food/drinks/bottle/rum)
	slowdown = 0
	armor = list(melee = 30, bullet = 50, laser = 30,energy = 15, bomb = 30, bio = 30, rad = 30)
	strip_delay = 40
	put_on_delay = 20

	//Emergency Response Team suits
/obj/item/clothing/head/helmet/space/hardsuit/ert
	name = "emergency response unit helmet"
	desc = "Standard issue command helmet for the ERT"
	icon_state = "hardsuit0-ert_commander"
	item_state = "hardsuit0-ert_commander"
	item_color = "ert_commander"
	armor = list(melee = 65, bullet = 50, laser = 50, energy = 50, bomb = 100, bio = 100, rad = 100)
	strip_delay = 130
	flags = BLOCKHAIR | STOPSPRESSUREDMAGE | THICKMATERIAL | NODROP
	brightness_on = 7
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT

/obj/item/clothing/suit/space/hardsuit/ert
	name = "emergency response team suit"
	desc = "Standard issue command suit for the ERT."
	icon_state = "ert_command"
	item_state = "ert_command"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/restraints/handcuffs,/obj/item/weapon/tank/internals)
	armor = list(melee = 65, bullet = 50, laser = 50, energy = 50, bomb = 100, bio = 100, rad = 100)
	slowdown = 0
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	strip_delay = 130

	//ERT Security
/obj/item/clothing/head/helmet/space/hardsuit/ert/sec
	desc = "Standard issue security helmet for the ERT."
	icon_state = "hardsuit0-ert_security"
	item_state = "hardsuit0-ert_security"
	item_color = "ert_security"

/obj/item/clothing/suit/space/hardsuit/ert/sec
	desc = "Standard issue security suit for the ERT."
	icon_state = "ert_security"
	item_state = "ert_security"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/sec

	//ERT Engineering
/obj/item/clothing/head/helmet/space/hardsuit/ert/engi
	desc = "Standard issue engineer helmet for the ERT."
	icon_state = "hardsuit0-ert_engineer"
	item_state = "hardsuit0-ert_engineer"
	item_color = "ert_engineer"

/obj/item/clothing/suit/space/hardsuit/ert/engi
	desc = "Standard issue engineer suit for the ERT."
	icon_state = "ert_engineer"
	item_state = "ert_engineer"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/engi

	//ERT Medical
/obj/item/clothing/head/helmet/space/hardsuit/ert/med
	desc = "Standard issue medical helmet for the ERT."
	icon_state = "hardsuit0-ert_medical"
	item_state = "hardsuit0-ert_medical"
	item_color = "ert_medical"

/obj/item/clothing/suit/space/hardsuit/ert/med
	desc = "Standard issue medical suit for the ERT."
	icon_state = "ert_medical"
	item_state = "ert_medical"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/med

/obj/item/clothing/suit/space/eva
	name = "EVA suit"
	icon_state = "space"
	item_state = "s_suit"
	desc = "A lightweight space suit with the basic ability to protect the wearer from the vacuum of space during emergencies."
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 100, rad = 20)

/obj/item/clothing/suit/space/clowneva
	name = "clown EVA suit"
	icon_state = "spaceclown"
	item_state = "spaceclown"
	desc = "a creepy clown suit"

/obj/item/clothing/head/helmet/space/clowneva
	name = "clown EVA helmet"
	icon_state = "hardsuit0-clown"
	item_state = "hardsuit1-clown"
	desc = "a creepy clown helmet to go with the clowns EVA suit."

/obj/item/clothing/suit/space/mimeeva
	name = "mime eva suit"
	icon_state = "spacemime"
	item_state = "spacemime"
	desc = "a creepy mime suit"

/obj/item/clothing/head/helmet/space/mimeeva
	name = "mime EVA helmet"
	icon_state = "hardsuit0-mime"
	item_state = "hardsuit1-mime"
	desc = "a creepy mime helmet to go with the mimes EVA suit."

/obj/item/clothing/head/helmet/space/eva
	name = "EVA helmet"
	icon_state = "space"
	item_state = "space"
	desc = "A lightweight space helmet with the basic ability to protect the wearer from the vacuum of space during emergencies."
	flash_protect = 0
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 100, rad = 20)

/obj/item/clothing/head/helmet/space/freedom
	name = "eagle helmet"
	desc = "An advanced, space-proof helmet. It appears to be modeled after an old-world eagle."
	icon_state = "griffinhat"
	item_state = "griffinhat"
	armor = list(melee = 20, bullet = 40, laser = 30, energy = 25, bomb = 100, bio = 100, rad = 100)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	unacidable = 1

/obj/item/clothing/suit/space/freedom
	name = "eagle suit"
	desc = "An advanced, light suit, fabricated from a mixture of synthetic feathers and space-resistant material. A gun holster appears to be intergrated into the suit and the wings appear to be stuck in 'freedom' mode."
	icon_state = "freedom"
	item_state = "freedom"
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/restraints/handcuffs,/obj/item/weapon/tank/internals)
	armor = list(melee = 20, bullet = 40, laser = 30,energy = 25, bomb = 100, bio = 100, rad = 100)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	unacidable = 1

//Carpsuit, bestsuit, lovesuit
/obj/item/clothing/head/helmet/space/hardsuit/carp
	name = "carp helmet"
	desc = "Spaceworthy and it looks like a space carp's head, smells like one too."
	icon_state = "carp_helm"
	item_state = "syndicate"
	armor = list(melee = -20, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 100, rad = 75)	//As whimpy as a space carp
	brightness_on = 0 //luminosity when on
	action_button_name = ""
	flags = BLOCKHAIR | STOPSPRESSUREDMAGE | THICKMATERIAL | NODROP
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE


/obj/item/clothing/suit/space/hardsuit/carp
	name = "carp space suit"
	desc = "A slimming piece of dubious space carp technology, you suspect it won't stand up to hand-to-hand blows."
	icon_state = "carp_suit"
	item_state = "space_suit_syndicate"
	slowdown = 0	//Space carp magic, never stop believing
	armor = list(melee = -20, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 100, rad = 75) //As whimpy whimpy whoo
	allowed = list(/obj/item/weapon/tank/internals, /obj/item/weapon/gun/projectile/automatic/speargun)	//I'm giving you a hint here
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/carp

/obj/item/clothing/head/helmet/space/hardsuit/ranger
	name = "ranger helmet"
	desc = "A helmet designed to handle the rigors of hostile wildlife and operatives. It offers excellent protection and ease of movement."
	icon_state = "hardsuit0-ranger"
	item_state = "hardsuit0-ranger"
	item_color = "ranger"
	armor = list(melee = 65, bullet = 50, laser = 50, energy = 50, bomb = 100, bio = 100, rad = 100)
	strip_delay = 130
	flags = BLOCKHAIR | STOPSPRESSUREDMAGE | THICKMATERIAL | NODROP
	brightness_on = 7
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT

/obj/item/clothing/suit/space/hardsuit/ranger
	name = "ranger hardsuit"
	desc = "A space suit designed to handle the rigors of hostile wildlife and operatives. It offers excellent protection and ease of movement."
	icon_state = "hardsuit-ranger"
	item_state = "hardsuit-ranger"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ranger
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/restraints/handcuffs,/obj/item/weapon/tank/internals)
	armor = list(melee = 65, bullet = 50, laser = 50, energy = 50, bomb = 100, bio = 100, rad = 100)
	slowdown = 0
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	strip_delay = 130

/obj/item/clothing/suit/space/hardsuit/ranger/New()
	jetpack = new /obj/item/weapon/tank/jetpack/suit(src)
	..()

//HEV//Half-Life 2 suit
/obj/item/clothing/head/helmet/space/hev
	name = "HEV Helmet"
	desc = "Black-Mesa issue Hazardous Environment suit helmet, for protecting that smart brain of yours."
	icon_state = "hev"
	item_state = "space"

/obj/item/clothing/suit/space/hev
	name = "HEV Suit"
	icon_state = "hev"
	item_state = "space"
	desc = "Black-Mesa issue Hazardous Environment suit, for looking cool while you robust aliens with a crowbar."
	allowed = list(/obj/item/device/flashlight,/obj/item/weapon/tank/internals,/obj/item/device/multitool)