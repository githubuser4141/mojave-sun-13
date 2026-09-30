/// Fattens the target
/datum/smite/big
	name = "Biggen up"

/datum/smite/size/effect(client/user, mob/living/target)
	. = ..()
	target.set_nutrition(NUTRITION_LEVEL_FAT * 2)
	// MOJAVE EDIT BEGIN - Biggies
	if(!iscarbon(target))
		return
	var/mob/living/carbon/carbon_target = target
	carbon_target.sizeness = SIZENESS_BIG
	carbon_target.update_body()
	carbon_target.dropItemToGround(carbon_target.get_item_by_slot(ITEM_SLOT_OCLOTHING))
	// MOJAVE EDIT END - Biggies
