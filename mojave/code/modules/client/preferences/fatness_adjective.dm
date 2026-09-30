/datum/preference/choiced/size_adjective
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	savefile_identifier = PREFERENCE_CHARACTER
	priority = PREFERENCE_PRIORITY_NAME_MODIFICATIONS
	savefile_key = "size_adjective"

/datum/preference/choiced/size_adjective/is_accessible(datum/preferences/preferences)
	. = ..()
	if(!.)
		return
	var/fatness = preferences.read_preference(/datum/preference/choiced/sizeness)
	if(lowertext(sizeness) != SIZENESS_BIG)
		return FALSE

/datum/preference/choiced/size_adjective/init_possible_values()
	return GLOB.size_adjective

/datum/preference/choiced/size_adjective/create_default_value()
	return "Big"

/datum/preference/choiced/size_adjective/apply_to_human(mob/living/carbon/human/target, value)
	target.size_adjective = (value == "None" ? null : value)
