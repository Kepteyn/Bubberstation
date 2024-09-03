#define YINGLET_PUNCH_LOW 2 // Lower bound punch damage
#define YINGLET_PUNCH_HIGH 6
#define YINGLET_BRUTE_MODIFIER 1.3
#define YINGLET_BURN_MODIFIER 1

// yinglet!
/obj/item/bodypart/head/mutant/yinglet
	icon_greyscale = BODYPART_ICON_YINGLET
	bodyshape = parent_type::bodyshape | BODYSHAPE_CUSTOM
	limb_id = SPECIES_YINGLET
	brute_modifier = YINGLET_BRUTE_MODIFIER
	head_flags = HEAD_EYESPRITES|HEAD_EYECOLOR|HEAD_EYEHOLES|HEAD_DEBRAIN

/obj/item/bodypart/head/mutant/yinglet/Initialize(mapload)
	worn_ears_offset = new(
		attached_part = src,
		feature_key = OFFSET_EARS,
		offset_y = list("north" = -4, "south" = -4, "east" = -4, "west" = -4),
	)
	worn_head_offset = new(
		attached_part = src,
		feature_key = OFFSET_HEAD,
		offset_x = list("north" = 1, "south" = 1, "east" = 1, "west" = -1, "northwest" = -1, "southwest" = -1, "northeast" = 1, "southeast" = 1),
		offset_y = list("north" = -4, "south" = -4, "east" = -4, "west" = -4),
	)
	worn_mask_offset = new(
		attached_part = src,
		feature_key = OFFSET_FACEMASK,
		offset_y = list("north" = -5, "south" = -5, "east" = -5, "west" = -5),
	)
	return ..()


/obj/item/bodypart/chest/mutant/yinglet
	icon_greyscale = BODYPART_ICON_YINGLET
	bodyshape = parent_type::bodyshape | BODYSHAPE_CUSTOM
	limb_id = SPECIES_YINGLET
	brute_modifier = YINGLET_BRUTE_MODIFIER
	burn_modifier = YINGLET_BURN_MODIFIER

/obj/item/bodypart/chest/mutant/yinglet/Initialize(mapload)
	worn_back_offset = new(
		attached_part = src,
		feature_key = OFFSET_BACK,
		offset_y = list("north" = -4, "south" = -4, "east" = -4, "west" = -4),
	)
	worn_accessory_offset = new(
		attached_part = src,
		feature_key = OFFSET_ACCESSORY,
		offset_y = list("north" = -4, "south" = -4, "east" = -4, "west" = -4),
	)
	return ..()

/obj/item/bodypart/arm/left/mutant/yinglet/Initialize(mapload)
	held_hand_offset =  new(
		attached_part = src,
		feature_key = OFFSET_HELD,
		offset_x = list("north" = 0, "south" = 0, "east" = 0, "west" = -6, "northwest" = -6, "southwest" = -6, "northeast" = 0, "southeast" = 0),
		offset_y = list("north" = -3, "south" = -3, "east" = -3, "west" = -3),
	)
	return ..()

/obj/item/bodypart/arm/right/mutant/yinglet/Initialize(mapload)
	held_hand_offset =  new(
		attached_part = src,
		feature_key = OFFSET_HELD,
		offset_x = list("north" = 0, "south" = 0, "east" = 6, "west" = 0, "northwest" = 0, "southwest" = 0, "northeast" = 6, "southeast" = 6),
		offset_y = list("north" = -3, "south" = -3, "east" = -3, "west" = -3),
	)
	return ..()

/obj/item/bodypart/arm/left/mutant/yinglet
	icon_greyscale = BODYPART_ICON_YINGLET
	bodyshape = parent_type::bodyshape | BODYSHAPE_CUSTOM
	limb_id = SPECIES_YINGLET
	unarmed_damage_low = YINGLET_PUNCH_LOW
	unarmed_damage_high = YINGLET_PUNCH_HIGH
	brute_modifier = YINGLET_BRUTE_MODIFIER
	burn_modifier = YINGLET_BURN_MODIFIER


/obj/item/bodypart/arm/right/mutant/yinglet
	icon_greyscale = BODYPART_ICON_YINGLET
	bodyshape = parent_type::bodyshape | BODYSHAPE_CUSTOM
	limb_id = SPECIES_YINGLET
	unarmed_damage_low = YINGLET_PUNCH_LOW
	unarmed_damage_high = YINGLET_PUNCH_HIGH
	brute_modifier = YINGLET_BRUTE_MODIFIER
	burn_modifier = YINGLET_BURN_MODIFIER


/obj/item/bodypart/leg/left/mutant/yinglet
	icon_greyscale = BODYPART_ICON_YINGLET
	bodyshape = parent_type::bodyshape | BODYSHAPE_CUSTOM
	limb_id = SPECIES_YINGLET
	digitigrade_type = /obj/item/bodypart/leg/left/digitigrade/yinglet
	brute_modifier = YINGLET_BRUTE_MODIFIER
	burn_modifier = YINGLET_BURN_MODIFIER

/obj/item/bodypart/leg/right/mutant/yinglet
	icon_greyscale = BODYPART_ICON_YINGLET
	bodyshape = parent_type::bodyshape | BODYSHAPE_CUSTOM
	limb_id = SPECIES_YINGLET
	digitigrade_type = /obj/item/bodypart/leg/right/digitigrade/yinglet
	brute_modifier = YINGLET_BRUTE_MODIFIER
	burn_modifier = YINGLET_BURN_MODIFIER

/obj/item/bodypart/leg/left/digitigrade/yinglet
	icon_greyscale = BODYPART_ICON_YINGLET
	bodyshape = parent_type::bodyshape | BODYSHAPE_CUSTOM
	base_limb_id = SPECIES_YINGLET
	brute_modifier = YINGLET_BRUTE_MODIFIER
	burn_modifier = YINGLET_BURN_MODIFIER

/obj/item/bodypart/leg/right/digitigrade/yinglet
	icon_greyscale = BODYPART_ICON_YINGLET
	bodyshape = parent_type::bodyshape | BODYSHAPE_CUSTOM
	base_limb_id = SPECIES_YINGLET
	brute_modifier = YINGLET_BRUTE_MODIFIER
	burn_modifier = YINGLET_BURN_MODIFIER

#undef YINGLET_PUNCH_LOW
#undef YINGLET_PUNCH_HIGH
#undef YINGLET_BURN_MODIFIER
#undef YINGLET_BRUTE_MODIFIER
