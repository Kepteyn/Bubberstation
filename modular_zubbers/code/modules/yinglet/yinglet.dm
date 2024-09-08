//Adapted from Teshari


/datum/species/yinglet
	name = "Yinglet"
	id = SPECIES_YINGLET
	no_gender_shaping = TRUE // Female uniform shaping breaks yinglet worn sprites, so this is disabled. This will not affect anything else in regards to gender however.
	eyes_icon = 'modular_zubbers/icons/mob/species/yinglet/eyes.dmi'
	inherent_traits = list(
		TRAIT_ADVANCEDTOOLUSER,
		TRAIT_CAN_STRIP,
		TRAIT_LITERATE,
		TRAIT_MUTANT_COLORS,
		TRAIT_NO_UNDERWEAR,
	)
	digitigrade_customization = DIGITIGRADE_NEVER
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	payday_modifier = 1.0
	mutanttongue = /obj/item/organ/internal/tongue/yinglet
	/* custom_worn_icons = list(
		OFFSET_HEAD = YINGLET_HEAD_ICON,
		OFFSET_FACEMASK = YINGLET_MASK_ICON,
		OFFSET_NECK = YINGLET_NECK_ICON,
		OFFSET_SUIT = YINGLET_SUIT_ICON,
		OFFSET_UNIFORM = YINGLET_UNIFORM_ICON,
		OFFSET_GLOVES =  YINGLET_HANDS_ICON,
		OFFSET_SHOES = YINGLET_FEET_ICON,
		OFFSET_GLASSES = YINGLET_EYES_ICON,
		OFFSET_BELT = YINGLET_BELT_ICON,
		OFFSET_BACK = YINGLET_BACK_ICON,
		OFFSET_ACCESSORY = YINGLET_ACCESSORIES_ICON,
		OFFSET_EARS = YINGLET_EARS_ICON
	) */
	bodytemp_normal = BODYTEMP_NORMAL
	body_size_restricted = TRUE
	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/mutant/yinglet,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/mutant/yinglet,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/mutant/yinglet,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/mutant/yinglet,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/mutant/yinglet,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/mutant/yinglet,
	)
	meat = /obj/item/food/meat/slab/chicken/human

/datum/species/yinglet/get_default_mutant_bodyparts()
	return list(
		"tail" = list("Yinglet (Default)", TRUE),
		"ears" = list("Yinglet Long Ears", TRUE),
		"legs" = list("Normal Legs", FALSE),
	)


/obj/item/organ/internal/tongue/yinglet
	liked_foodtypes = MEAT | GORE | RAW
	disliked_foodtypes = GROSS | GRAIN

/datum/species/yinglet/prepare_human_for_preview(mob/living/carbon/human/yinglet)
	var/main_color = "#222222"
	var/secondary_color = "#b8b8b8"
	var/tertiary_color = "#b8b8b8"
	yinglet.dna.features["mcolor"] = main_color
	yinglet.dna.mutant_bodyparts["ears"] = list(MUTANT_INDEX_NAME = "Yinglet Long Ears", MUTANT_INDEX_COLOR_LIST = list(main_color, secondary_color, tertiary_color))
	yinglet.dna.mutant_bodyparts["tail"] = list(MUTANT_INDEX_NAME = "Yinglet (Default)", MUTANT_INDEX_COLOR_LIST = list(main_color, secondary_color, tertiary_color))
	yinglet.eye_color_left = "#c4c400"
	yinglet.eye_color_right = "#c4c400"
	regenerate_organs(yinglet, src, visual_only = TRUE)
	yinglet.update_body(TRUE)


/datum/species/yinglet/on_species_gain(mob/living/carbon/human/new_yinglet, datum/species/old_species, pref_load)
	. = ..()
	passtable_on(new_yinglet, SPECIES_TRAIT)

/datum/species/yinglet/on_species_loss(mob/living/carbon/C, datum/species/new_species, pref_load)
	. = ..()
	passtable_off(C, SPECIES_TRAIT)
