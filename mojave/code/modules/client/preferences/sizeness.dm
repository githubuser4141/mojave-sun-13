/datum/preference/choiced/sizeness
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	savefile_identifier = PREFERENCE_CHARACTER
	savefile_key = "sizeness"

/datum/preference/choiced/sizeness/init_possible_values()
	. = list()
	for(var/thing in GLOB.sizeness)
		. += capitalize(thing)

/datum/preference/choiced/sizeness/create_default_value()
	return capitalize(SIZENESS_AVERAGE)

/datum/preference/choiced/sizeness/apply_to_human(mob/living/carbon/human/target, value)
	var/lowertext_value = lowertext(value)
	target.sizeness = lowertext_value
	target.add_movespeed_modifier(/datum/movespeed_modifier/ms13/big)

/datum/movespeed_modifier/ms13/big
	multiplicative_slowdown = 0.1
