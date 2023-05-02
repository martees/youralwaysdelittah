LIST emotags = nostalgia, passion, care
LIST eventTypes = default, intro, normal, sleep, priority

LIST nostalgiaVal = n0 = 0, n1, n2, n3, n4, n5, n6, n7
LIST passionVal = p0 = 0, p1, p2, p3, p4, p5, p6, p7
LIST careVal = c0 = 0, c1, c2, c3, c4, c5, c6, c7

LIST currentWeek = not_received = -1, (week_1 = 1), week_2, week_3, week_4, week_5, week_6, week_7, week_8

LIST pickedForALetter = (no_one), ama_ziza, arrow, kazzie

// Kazzie-related state machines
LIST lunaCall = (hasnt_called_yet), has_called_negative, has_called_positive
LIST lunaMet = (hasnt_met_yet), has_met
LIST howLunaFeels = (angry), friends, close_friends, romance
LIST friendsMet = (no_friends_met)

// Kazzie activities list
LIST activities = dragon_riding, magic_singing, apply_for_shelter, painting, celebrating_birthday

// Amaziza-related state machines
LIST amazizaHipState = (feeling_okay), hurting_a_bit, getting_rough, has_an_accident, getting_better
LIST amazizaMoodSwings = joyful, (depressed), low

// Arrow-related state machines
LIST arrowDruid = (stork_not_mentioned), thinking_about_stork, has_seen_stork, first_day_at_stork, work_for_stork, become_a_healer, learn_white_magic
LIST arrowFeelingsAmaziza = (doesnt_think_about_amaziza), thinking_about_amaziza, intrigued_by_amaziza, in_denial_about_amaziza, feelings_for_amaziza, in_love_with_amaziza
LIST arrowWound = (not_wounded), sprain_ankle, resprain_ankle, ankle_recovered, got_blind
LIST arrowNest = (first_day), go_hunt, stay_home
LIST aceGuide = (ace_not_trained), ace_trained

// Common state machines
LIST kazzieBday = (not_bday_yet), bday_tomorrow, bday, bdaycake_eaten_by_ace, bdaycake_not_eaten_by_ace
LIST kazzieFriend = (not_friend), seen_at_bday, visit_kazzie, kazzie_dragon_trainer

VAR arrowStaysSet = false

// Emotional state machines
VAR amaES = (n0, p0, c0, not_received)
VAR arrowES = (n0, p0, c0, not_received)
VAR kazzieES = (n0, p0, c0,  not_received)

VAR amaziza_last_emotags = ()
VAR arrow_last_emotags = ()
VAR kazzie_last_emotags = ()

// Event labels to create the event parser links
LIST introEvents = dance1, students1, lonely1, school1, no_motivation1, heel1, sprain_ankle1, blind1, argument1, argument2, default_intro, dragon_riding1, stork4, luna_call1, autumn_A1, autumn_B1, operation_announcement1
LIST normalEvents = children1, rough1, childhood1, fuck1, mess1, meat1, sprain_ankle2, default_normal, ace_and_kazzie1, thoughts_of_dragon_riding1, weapon1, weapon2, weapon3, stork2, stork3, stork5, stork6, stork7, conflict1, luna_call2, dragon_riding2, care_dragon_riding2, passion_dragon_riding2, nostalgia_dragon_riding2, children_A1, psychologist_medication1, feeling_trash1, hips_feeling_okay1, hips_hurting_a_bit1
LIST sleepEvents = children1, everything_stopped1, crying_to_sleep1, skip_meal1, skip_meal2, skip_meal3, straight_to_bed1, default_sleep, thoughts_of_dragon_riding2, stork1, children_A2, going_out1, feeling_crap1, tired1, late_B1, late_A1
LIST nostalgiaEvents = nostalgia1, nostalgia2, nostalgia3, nostalgia4, nostalgia5, nostalgia6, nostalgia7, default_nostalgia, barjov1, alix1, vick1, neighbour1, distant_friend1, family_reunion1, bts1, dragon_riding1, magic_singing1, pet_dragon1, birthday1
LIST passionEvents = passion1, passion2, passion3, passion4, passion5, passion6, passion7, default_passion, alain1, jazz_classic1, radiant1, easy1, show1, show2, proposition1, dragon_riding1, magic_singing1, pet_dragon1, birthday1
LIST careEvents = care1, care2, care3, care4, care5, care6, care7, default_care, singing1, everyday_pleasure1, not_perfect1, sleep1, medication1, neighbour1, strong1, dragon_riding1, magic_singing1, pet_dragon1, birthday1

// Loaded event lists for each character (active events at game initialization)

VAR amazizaIntroEventList = (introEvents.dance1, introEvents.students1, introEvents.autumn_A1, introEvents.autumn_B1)

VAR amazizaEventList = (normalEvents.children_A1, normalEvents.psychologist_medication1, normalEvents.feeling_trash1, normalEvents.hips_feeling_okay1)

VAR amazizaSleepEventList = (sleepEvents.children_A2, sleepEvents.going_out1, sleepEvents.feeling_crap1, sleepEvents.tired1, sleepEvents.late_B1, sleepEvents.late_A1)

VAR arrowIntroEventList = (heel1, argument1, argument2)
VAR kazzieIntroEventList = (lonely1, school1, no_motivation1)

VAR arrowEventList = (mess1, meat1)
VAR kazzieEventList = (rough1, childhood1, fuck1)

VAR arrowSleepEventList = (skip_meal1, straight_to_bed1)
VAR kazzieSleepEventList = (everything_stopped1, crying_to_sleep1)

// Loaded event lists for the letters for each character (active events at game initialization)
VAR amazizaNostalgiaEventList = (nostalgiaEvents.barjov1, nostalgiaEvents.alix1, nostalgiaEvents.vick1, nostalgiaEvents.neighbour1, nostalgiaEvents.distant_friend1, nostalgiaEvents.bts1)
VAR arrowNostalgiaEventList = ()
VAR kazzieNostalgiaEventList = (nostalgia1, nostalgia2, nostalgia3, nostalgia4, nostalgia5, nostalgia6, nostalgia7)

VAR amazizaPassionEventList = (passionEvents.alain1, passionEvents.jazz_classic1, passionEvents.radiant1, passionEvents.easy1, passionEvents.show1, passionEvents.proposition1)
VAR arrowPassionEventList = ()
VAR kazziePassionEventList = (passion1, passion2, passion3, passion4, passion5, passion6, passion7)

VAR amazizaCareEventList = (careEvents.singing1, careEvents.everyday_pleasure1, careEvents.not_perfect1, careEvents.sleep1, careEvents.medication1, careEvents.neighbour1, strong1)
VAR arrowCareEventList = ()
VAR kazzieCareEventList = (care1, care2, care3, care4, care5, care6, care7)

// Events by mood types for Ama Ziza

VAR lowEvents = (introEvents.autumn_A1, introEvents.autumn_B1, normalEvents.children_A1, sleepEvents.children_A2, normalEvents.hips_feeling_okay1, normalEvents.hips_hurting_a_bit1, introEvents.operation_announcement1, sleepEvents.tired1, sleepEvents.late_B1, sleepEvents.late_A1)
VAR joyfulEvents = (introEvents.dance1, introEvents.students1, normalEvents.hips_feeling_okay1, introEvents.operation_announcement1, sleepEvents.going_out1)
VAR depressedEvents = (normalEvents.psychologist_medication1, normalEvents.feeling_trash1, sleepEvents.children_A2, normalEvents.hips_feeling_okay1, normalEvents.hips_hurting_a_bit1, introEvents.operation_announcement1, sleepEvents.feeling_crap1)

// Events already 
VAR amazizaEventDone = ()
VAR arrowEventDone = ()
VAR kazzieEventDone = ()

// Events loaded for adding
VAR amazizaToAddEventList = ()
VAR arrowToAddEventList = ()
VAR kazzieToAddEventList = ()

// Loaded events that take priority over other events
VAR amazizaPriorityEventList = ()
VAR arrowPriorityEventList = ()
VAR kazziePriorityEventList = ()

VAR amazizaPriorityIntroEventList = ()
VAR arrowPriorityIntroEventList = ()
VAR kazziePriorityIntroEventList = ()

VAR amazizaPrioritySleepEventList = ()
VAR arrowPrioritySleepEventList = ()
VAR kazziePrioritySleepEventList = ()

// Loaded events that take priority over other LETTER events
VAR amazizaPriorityNostalgiaEventList = ()
VAR arrowPriorityNostalgiaEventList = ()
VAR kazziePriorityNostalgiaEventList = ()

VAR amazizaPriorityPassionEventList = ()
VAR arrowPriorityPassionEventList = ()
VAR kazziePriorityPassionEventList = ()

VAR amazizaPriorityCareEventList = ()
VAR arrowPriorityCareEventList = ()
VAR kazziePriorityCareEventList = ()

CONST EMOMAX = 7