/datum/job/paramedic
	name = "Paramedic"
	wiki_page = "Paramedic"

	outfit = /datum/outfit/job/paramedic

	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_SURGERY, ACCESS_GENETICS, ACCESS_CLONING, ACCESS_MECH_MEDICAL, ACCESS_MINERAL_STOREROOM, ACCESS_MAINT_TUNNELS, ACCESS_EVA) //WS edit - Gen/Sci Split + Reduces Paramed access
	minimal_access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_CLONING, ACCESS_MECH_MEDICAL, ACCESS_MINERAL_STOREROOM, ACCESS_MAINT_TUNNELS, ACCESS_EVA)		//WS edit - Reduces paramed access

	display_order = JOB_DISPLAY_ORDER_PARAMEDIC

/datum/outfit/job/paramedic
	name = "Paramedic"
	job_icon = "paramedic"
	jobtype = /datum/job/paramedic

	ears = /obj/item/radio/headset/headset_med
	uniform = /obj/item/clothing/under/rank/medical/paramedic
	alt_uniform = /obj/item/clothing/under/rank/medical/doctor/blue //WS Edit - Alt Uniforms
	head = /obj/item/clothing/head/soft/paramedic
	shoes = /obj/item/clothing/shoes/sneakers/blue
	suit =  /obj/item/clothing/suit/toggle/labcoat/paramedic
	alt_suit = /obj/item/clothing/suit/apron/surgical
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/medical/paramedic //WS Edit - Alt Uniforms
	gloves = /obj/item/clothing/gloves/color/latex/nitrile
	belt = /obj/item/storage/belt/medical/paramedic
	id = /obj/item/card/id
	l_pocket = /obj/item/pda/medical
	suit_store = /obj/item/flashlight/pen
	backpack_contents = list(/obj/item/roller=1)
	pda_slot = ITEM_SLOT_LPOCKET

	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel/med
	duffelbag = /obj/item/storage/backpack/duffelbag/med
	courierbag = /obj/item/storage/backpack/messenger/para //WS Edit - Paramedic Bling
	box = /obj/item/storage/box/survival/medical

	chameleon_extras = /obj/item/gun/syringe

/datum/outfit/job/paramedic/emt
	name = "Paramedic (Emergency Medical Technician)"

	uniform = /obj/item/clothing/under/rank/medical/paramedic/emt

//Shiptest outfits

/datum/outfit/job/paramedic/traumateam
	name = "Paramedic (Trauma Team Technician)"

	uniform = /obj/item/clothing/under/rank/security/brig_phys
	shoes = /obj/item/clothing/shoes/combat
	backpack = /obj/item/storage/backpack/ert/medical
	belt = /obj/item/storage/belt/medical/webbing/paramedic

/datum/outfit/job/paramedic/inteq
	name = "IRMG Corpsman (Inteq)"

	uniform = /obj/item/clothing/under/syndicate/inteq/corpsman
	head = /obj/item/clothing/head/soft/inteq/corpsman
	suit = /obj/item/clothing/suit/armor/inteq/corpsman
	shoes = /obj/item/clothing/shoes/combat
	belt = /obj/item/storage/belt/medical/webbing/paramedic
	ears = /obj/item/radio/headset/headset_medsec/alt

/datum/outfit/job/paramedic/inteq/naked
	name = "IRMG Corpsman (Inteq) (Naked)"
	head = null
	mask = null
	glasses = null
	belt = null
	suit = null
	gloves = null
	suit_store = null

/datum/outfit/job/paramedic/inteq/naked/cardacces
	name = "Corpsman (InteQ)"
	ears = null
	id = /obj/item/card/id/inteq/corspman

/datum/outfit/job/paramedic/inteq/naked/cardacces/post_equip(mob/living/carbon/human/H)
	H.faction |= list("PlayerInteQ")

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = pick(GLOB.commando_names)
	I.access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_SURGERY, ACCESS_GENETICS, ACCESS_CLONING, ACCESS_MECH_MEDICAL, ACCESS_MINERAL_STOREROOM, ACCESS_MAINT_TUNNELS, ACCESS_EVA, ACESS_INTEQ_GENERAL)
	I.update_label()
/datum/outfit/job/paramedic/minutemen
	name = "BARD Combat Medic (Minutemen)"

	uniform = /obj/item/clothing/under/rank/medical/paramedic/emt
	head = /obj/item/clothing/head/soft/paramedic
	suit = /obj/item/clothing/suit/armor/
