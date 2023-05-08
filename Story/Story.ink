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

VAR randomEvent = ()

-> DONE

=== function RAET() // Random Active Emotag
    ~ return LIST_RANDOM(emotags)
    
=== function RET () // Random Emotional Tag
    ~ return LIST_RANDOM(LIST_ALL(emotags))
    
// Adds to the list that you pass in argument the event you pass.
// Also checks if the event has already been done before adding.

=== function addEventToList(ref eventList, eventDone, event)
    { not (eventDone ? event): 
        ~ eventList += event
    }

=== function changeStates(ref stateVariable, stateToReach)
        // remove all states of this type
        ~ stateVariable -= LIST_ALL(stateToReach)
        // put back the state we want
        ~ stateVariable += stateToReach
        
=== function pop(ref list)
    ~ temp x = LIST_MIN(list)
    ~ list -= x 
    ~ return x

=== function reachState (ref stateVariable, stateToReach)
    {
        - stateToReach > (LIST_ALL(stateToReach) ^ stateVariable):
            // remove all states of this type
            ~ stateVariable -= LIST_ALL(stateToReach)
            // put back the state we want
            ~ stateVariable += stateToReach
    }

=== function addEmoValue(ref emoState, emotion)
    ~ temp x = 0
    {emotion:
    - nostalgia:
        ~ x = LIST_VALUE(emoState ^ LIST_ALL(n0))
        { 
            - x >= EMOMAX: 
                ~ return
        }
        ~ emoState -= LIST_ALL(n0)
        ~ emoState += nostalgiaVal(x + 1)
    - passion:
        ~ x = LIST_VALUE(emoState ^ LIST_ALL(p0))
        { 
            - x >= EMOMAX: 
                ~ return
        }
        ~ emoState -= LIST_ALL(p0)
        ~ emoState += passionVal(x + 1)
    - care:
        ~ x = LIST_VALUE(emoState ^ LIST_ALL(c0))
        { 
            - x >= EMOMAX: 
                ~ return
        }
        ~ emoState -= LIST_ALL(c0)
        ~ emoState += careVal(x + 1)
    }
    
=== function getEmoValue(emoState, emotion)
    {
    - emotion == nostalgia:
        ~ return LIST_VALUE(emoState ^ LIST_ALL(n0))
    - emotion == passion:
        ~ return LIST_VALUE(emoState ^ LIST_ALL(p0))
    - emotion == care:
        ~ return LIST_VALUE(emoState ^ LIST_ALL(c0))
    }
    
=== function getEmoScore(character, emotion)
    {emotion:
        - nostalgia: 
        {character:
            - ama_ziza: 
                ~ return amaziza_nostalgia
            - arrow:
                ~ return arrow_nostalgia
            - kazzie:
                ~ return amaziza_nostalgia
        }
        - passion:
        {character:
            - ama_ziza: 
                ~ return amaziza_passion
            - arrow:
                ~ return arrow_passion
            - kazzie:
                ~ return amaziza_passion
        }
        - care:
        {character:
            - ama_ziza: 
                ~ return amaziza_care
            - arrow:
                ~ return arrow_care
            - kazzie:
                ~ return amaziza_care
        }
    }

=== function getCharLetterNumber (character)
    {character:
        - ama_ziza: 
            ~ return amaziza_letter
        - arrow: 
            ~ return arrow_letter
        - kazzie: 
            ~ return kazzie_letter
    }
    
=== function getHighestEmo(character)
    {character:
        - ama_ziza: 
            {
                - amaziza_nostalgia > amaziza_passion && amaziza_nostalgia > amaziza_care : 
                    ~ return nostalgia
                - amaziza_passion > amaziza_nostalgia && amaziza_passion > amaziza_care :
                    ~ return passion
                - amaziza_care > amaziza_nostalgia && amaziza_care > amaziza_passion :
                    ~ return care
                - amaziza_passion == amaziza_care == amaziza_nostalgia :
                    ~ LIST_RANDOM((passion, care, nostalgia))
                - amaziza_nostalgia == amaziza_passion :
                    ~ LIST_RANDOM((nostalgia, passion))
                - amaziza_nostalgia == amaziza_care :
                    ~ LIST_RANDOM((nostalgia, care))
                - amaziza_passion == amaziza_care :
                    ~ LIST_RANDOM((passion, care))
            }
        - arrow:
            {
                - arrow_nostalgia > arrow_passion && arrow_nostalgia > arrow_care : 
                    ~ return nostalgia
                - arrow_passion > arrow_nostalgia && arrow_passion > arrow_care :
                    ~ return passion
                - arrow_care > arrow_nostalgia && arrow_care > arrow_passion :
                    ~ return care
                - arrow_passion == arrow_care == arrow_nostalgia :
                    ~ LIST_RANDOM((passion, care, nostalgia))
                - arrow_nostalgia == arrow_passion :
                    ~ LIST_RANDOM((nostalgia, passion))
                - arrow_nostalgia == arrow_care :
                    ~ LIST_RANDOM((nostalgia, care))
                - arrow_passion == arrow_care :
                    ~ LIST_RANDOM((passion, care))
            }
        - kazzie:
            {
                - kazzie_nostalgia > kazzie_passion && kazzie_nostalgia > kazzie_care : 
                    ~ return nostalgia
                - kazzie_passion > kazzie_nostalgia && kazzie_passion > kazzie_care :
                    ~ return passion
                - kazzie_care > kazzie_nostalgia && kazzie_care > kazzie_passion :
                    ~ return care
                - kazzie_passion == kazzie_care == kazzie_nostalgia :
                    ~ LIST_RANDOM((passion, care, nostalgia))
                - kazzie_nostalgia == kazzie_passion :
                    ~ LIST_RANDOM((nostalgia, passion))
                - kazzie_nostalgia == kazzie_care :
                    ~ LIST_RANDOM((nostalgia, care))
                - kazzie_passion == kazzie_care :
                    ~ LIST_RANDOM((passion, care))
            }
    }

// Amaziza event parsers

=== amazizaIntroEventParser (event) ===
    {event:
        - introEvents.dance1: -> amaziza_intro_events.dance_1 ->
        - introEvents.students1: -> amaziza_intro_events.students_1 ->
        - introEvents.default_intro: -> amaziza_default_intro ->
        - introEvents.autumn_A1: -> amaziza_intro_events.autumn_A_1 -> 
        - introEvents.autumn_B1: -> amaziza_intro_events.autumn_B_1 ->
        - introEvents.operation_announcement1: -> amaziza_intro_events.operation_announcement_1 ->
    }
    ->->
    
=== amazizaEventParser (event) ===
    {event:
        - normalEvents.children_A1: -> amaziza_events.children_A_1 ->
        - normalEvents.default_normal: -> amaziza_default_event ->
        - normalEvents.psychologist_medication1: -> amaziza_events.psychologist_medication_1 -> 
        - normalEvents.feeling_trash1: -> amaziza_events.feeling_trash_1 -> 
        - normalEvents.hips_feeling_okay1: -> amaziza_events.hips_feeling_okay_1 ->
        - normalEvents.hips_hurting_a_bit1: -> amaziza_events.hips_hurting_a_bit_1 ->
    }
    ->->
    
=== amazizaSleepEventParser (event) ===
    {event:
        - sleepEvents.children_A2: -> amaziza_sleep_events.children_A_2 ->
        - sleepEvents.default_sleep: -> amaziza_default_sleep ->
        - sleepEvents.going_out1: -> amaziza_sleep_events.going_out_1 ->
        - sleepEvents.feeling_crap1: -> amaziza_sleep_events.feeling_crap_1 ->
        - sleepEvents.tired1: -> amaziza_sleep_events.tired_1 ->
        - sleepEvents.late_B1: -> amaziza_sleep_events.late_B_1 ->
        - sleepEvents.late_A1: -> amaziza_sleep_events.late_A_1 ->
    }
    ->->
    
=== amazizaLetterEventParser (event) ===
    {event:
        - nostalgiaEvents.barjov1: -> amaziza_nostalgia.barjov_1 ->
        - nostalgiaEvents.alix1: -> amaziza_nostalgia.alix_1 ->
        - nostalgiaEvents.vick1: -> amaziza_nostalgia.vick_1 ->
        - nostalgiaEvents.neighbour1: -> amaziza_nostalgia.neighbour_1 ->
        - nostalgiaEvents.bts1: -> amaziza_nostalgia.bts_1 ->
        - nostalgiaEvents.distant_friend1: -> amaziza_nostalgia.distant_friend_1 ->
        - nostalgiaEvents.family_reunion1: -> amaziza_nostalgia.family_reunion_1 ->
        
        - passionEvents.alain1: -> amaziza_passion.alain_1 ->
        - passionEvents.jazz_classic1: -> amaziza_passion.jazz_classic_1 ->
        - passionEvents.radiant1: -> amaziza_passion.radiant_1 ->
        - passionEvents.easy1: -> amaziza_passion.easy_1 ->
        - passionEvents.show1: -> amaziza_passion.show_1 ->
        - passionEvents.show2: -> amaziza_passion.show_2 ->
        - passionEvents.proposition1: -> amaziza_passion.proposition_1 ->
        
        - careEvents.singing1: -> amaziza_care.singing_1 ->
        - careEvents.everyday_pleasure1:  -> amaziza_care.everyday_pleasure_1 ->
        - careEvents.not_perfect1: -> amaziza_care.not_perfect_1 ->
        - careEvents.medication1: -> amaziza_care.medication_1 ->
        - careEvents.neighbour1: -> amaziza_care.neighbour_1 ->
        - careEvents.sleep1: -> amaziza_care.sleep_1 ->
        - careEvents.strong1:-> amaziza_care.strong_1 ->
    }
    ->->
    
=== function amazizaConditionalEventLoader () ===
    ~ return
    // Parser la liste avec eventList ? event
    // Pour chaque event, check si l'évènement vérifie ses conditions
    // Si c'est le cas, on l'ajoute à la liste à laquelle l'event doit appartenir (hardcodé)
    
    
// Parses a random event of the type passed ; first the ones with priority, then normal ones, then, default ones.
=== amazizaEventStack(eventType) ===

    ~ temp moodList = ()
    ~ temp parsedEventList = ()
    
    {amazizaMoodSwings:
        - joyful: 
            ~ moodList = joyfulEvents
        - depressed:
            ~ moodList = depressedEvents
        - low:
            ~ moodList = lowEvents
    }
    
    {eventType:
        - intro:
            ~ parsedEventList = moodList ^ amazizaIntroEventList
        - normal:
            ~ parsedEventList = moodList ^ amazizaEventList
        - sleep:
            ~ parsedEventList = moodList ^ amazizaSleepEventList
    }
    
    {eventType:
        -intro: {
            - not (amazizaPriorityIntroEventList == () ) : 
                ~ randomEvent = LIST_RANDOM(amazizaPriorityIntroEventList)
                -> amazizaIntroEventParser(randomEvent) ->
            - not (parsedEventList == () ) :
                ~ randomEvent = LIST_RANDOM(parsedEventList)
                -> amazizaIntroEventParser(randomEvent) ->
            - else :
                -> amazizaIntroEventParser(default_intro) ->
        }
        -normal: {
            - not (amazizaPriorityEventList == () ) : 
                ~ randomEvent = LIST_RANDOM(amazizaPriorityEventList)
                -> amazizaEventParser(randomEvent) ->
            - not (parsedEventList == () ) :
                ~ randomEvent = LIST_RANDOM(parsedEventList)
                -> amazizaEventParser(randomEvent) ->
            - else : -> amazizaEventParser(default_normal) ->
                
        }
        -sleep: {
            - not (amazizaPrioritySleepEventList == () ) : 
                ~ randomEvent = LIST_RANDOM(amazizaPrioritySleepEventList)
                -> amazizaSleepEventParser(randomEvent) ->
            - not (parsedEventList == () ) :
                ~ randomEvent = LIST_RANDOM(parsedEventList)
                -> amazizaSleepEventParser(randomEvent) ->
            - else :
                -> amazizaSleepEventParser(default_sleep) ->
            }
        - nostalgia: {
            - not (amazizaPriorityNostalgiaEventList == () ) : 
                ~ randomEvent = LIST_RANDOM(amazizaPriorityNostalgiaEventList)
                -> amazizaLetterEventParser(randomEvent) ->
            - not (amazizaNostalgiaEventList == () ) :
                ~ randomEvent = LIST_RANDOM(amazizaNostalgiaEventList)
                -> amazizaLetterEventParser(randomEvent) ->
            - else :
                -> amazizaLetterEventParser(default_nostalgia) ->
            }
        - care: {
            - not (amazizaPriorityCareEventList == () ) : 
                ~ randomEvent = LIST_RANDOM(amazizaPriorityCareEventList)
                -> amazizaLetterEventParser(randomEvent) ->
            - not (amazizaCareEventList == () ) :
                ~ randomEvent = LIST_RANDOM(amazizaCareEventList)
                -> amazizaLetterEventParser(randomEvent) ->
            - else :
                -> amazizaLetterEventParser(default_care) ->
            }
        - passion: {
            - not (amazizaPriorityPassionEventList == () ) : 
                ~ randomEvent = LIST_RANDOM(amazizaPriorityPassionEventList)
                -> amazizaLetterEventParser(randomEvent) ->
            - not (amazizaPassionEventList == () ) :
                ~ randomEvent = LIST_RANDOM(amazizaPassionEventList)
                -> amazizaLetterEventParser(randomEvent) ->
            - else :
                -> amazizaLetterEventParser(default_passion) ->
            }
        }
    ->->
    

// Kazzie event parsers

=== kazzieIntroEventParser (event) ===
    {event:
        - introEvents.lonely1: -> kazzie_intro_events.lonely_1 ->
        - introEvents.school1: -> kazzie_intro_events.school_1 ->
        - introEvents.no_motivation1: -> kazzie_intro_events.no_motivation_1 ->
        - introEvents.default_intro: -> kazzie_default_intro ->
    }
    ->->
    
=== kazzieEventParser (event) ===
    {event:
        - normalEvents.rough1: -> kazzie_events.rough_1 ->
        - normalEvents.fuck1: -> kazzie_events.fuck_1 ->
        - normalEvents.childhood1: -> kazzie_events.childhood_1 ->
        - normalEvents.default_normal: -> kazzie_default_normal ->
    }
    ->->
    
=== kazzieSleepEventParser (event) ===
    {event:
        - sleepEvents.everything_stopped1: -> kazzie_sleep_events.everything_stopped_1 ->
        - sleepEvents.crying_to_sleep1: -> kazzie_sleep_events.crying_to_sleep_1 ->
        - sleepEvents.default_sleep: -> kazzie_default_sleep ->
    }
    ->->
    
=== kazzieLetterEventParser (event) ===
    {event:
        - nostalgiaEvents.nostalgia1: -> kazzie_nostalgia.nostalgia_1 ->
        - nostalgiaEvents.nostalgia2: -> kazzie_nostalgia.nostalgia_2 ->
        - nostalgiaEvents.nostalgia3: -> kazzie_nostalgia.nostalgia_3 ->
        - nostalgiaEvents.nostalgia4: -> kazzie_nostalgia.nostalgia_4 ->
        - nostalgiaEvents.nostalgia5: -> kazzie_nostalgia.nostalgia_5 ->
        - nostalgiaEvents.nostalgia6: -> kazzie_nostalgia.nostalgia_6 ->
        - nostalgiaEvents.nostalgia7: -> kazzie_nostalgia.nostalgia_7 ->
        
        - passionEvents.passion1: -> kazzie_passion.passion_1 ->
        - passionEvents.passion2: -> kazzie_passion.passion_2 ->
        - passionEvents.passion3: -> kazzie_passion.passion_3 ->
        - passionEvents.passion4: -> kazzie_passion.passion_4 ->
        - passionEvents.passion5: -> kazzie_passion.passion_5 ->
        - passionEvents.passion6: -> kazzie_passion.passion_6 ->
        - passionEvents.passion7: -> kazzie_passion.passion_7 ->
        
        - careEvents.care1: -> kazzie_care.care_1 ->
        - careEvents.care2: -> kazzie_care.care_2 ->
        - careEvents.care3: -> kazzie_care.care_3 ->
        - careEvents.care4: -> kazzie_care.care_4 ->
        - careEvents.care5: -> kazzie_care.care_5 ->
        - careEvents.care6: -> kazzie_care.care_6 ->
        - careEvents.care7: -> kazzie_care.care_7 ->
    }
    ->->
    
=== function kazzieConditionalEventLoader () ===
    {
        - (kazzieToAddEventList ? conflict1) : 
            ~ addEventToList(kazziePriorityEventList, kazzieEventDone, conflict1)
    }
    // Parser la liste avec eventList ? event
    // Pour chaque event, check si l'évènement vérifie ses conditions
    // Si c'est le cas, on l'ajoute à la liste à laquelle l'event doit appartenir (hardcodé)
    
=== kazzieEventStack(eventType) ===
    {eventType:
        -intro: {
            - not (kazziePriorityIntroEventList == () ) : 
                ~ randomEvent = LIST_RANDOM(kazziePriorityIntroEventList)
                -> kazzieIntroEventParser(randomEvent) ->
            - not (kazzieIntroEventList == () ) :
                ~ randomEvent = LIST_RANDOM(kazzieIntroEventList)
                -> kazzieIntroEventParser(randomEvent) ->
            - else :
                -> kazzieIntroEventParser(default_intro) ->
        }
        -normal: {
            - not (kazziePriorityEventList == () ) : 
                ~ randomEvent = LIST_RANDOM(kazziePriorityEventList)
                -> kazzieEventParser(randomEvent) ->
            - not (kazzieEventList == () ) :
                ~ randomEvent = LIST_RANDOM(kazzieEventList)
                -> kazzieEventParser(randomEvent) ->
            - else : -> kazzieEventParser(default_normal) ->
        }
        -sleep: {
            - not (kazziePrioritySleepEventList == () ) : 
                ~ randomEvent = LIST_RANDOM(kazziePrioritySleepEventList)
                -> kazzieSleepEventParser(randomEvent) ->
            - not (kazzieSleepEventList == () ) :
                ~ randomEvent = LIST_RANDOM(kazzieSleepEventList)
                -> kazzieSleepEventParser(randomEvent) ->
            - else :
                -> kazzieSleepEventParser(default_sleep) ->
            }
        - nostalgia: {
            - not (kazziePriorityNostalgiaEventList == () ) : 
                ~ randomEvent = LIST_RANDOM(kazziePriorityNostalgiaEventList)
                -> kazzieLetterEventParser(randomEvent) ->
            - not (kazzieNostalgiaEventList == () ) :
                ~ randomEvent = LIST_RANDOM(kazzieNostalgiaEventList)
                -> kazzieLetterEventParser(randomEvent) ->
            - else :
                -> kazzieLetterEventParser(default_nostalgia) ->
            }
        - care: {
            - not (kazziePriorityCareEventList == () ) : 
                ~ randomEvent = LIST_RANDOM(kazziePriorityCareEventList)
                -> kazzieLetterEventParser(randomEvent) ->
            - not (kazzieCareEventList == () ) :
                ~ randomEvent = LIST_RANDOM(kazzieCareEventList)
                -> kazzieLetterEventParser(randomEvent) ->
            - else :
                -> kazzieLetterEventParser(default_care) ->
            }
        - passion: {
            - not (kazziePriorityPassionEventList == () ) : 
                ~ randomEvent = LIST_RANDOM(kazziePriorityPassionEventList)
                -> kazzieLetterEventParser(randomEvent) ->
            - not (kazziePassionEventList == () ) :
                ~ randomEvent = LIST_RANDOM(kazziePassionEventList)
                -> kazzieLetterEventParser(randomEvent) ->
            - else :
                -> kazzieLetterEventParser(default_passion) ->
            }
        }
    ->->
    
// Arrow event parsers

=== arrowIntroEventParser (event) ===
    {event:
        - introEvents.heel1: -> arrow_intro_events.heel_1 ->
        - introEvents.blind1: -> arrow_intro_events.blind_1 ->
        - introEvents.sprain_ankle1: -> arrow_intro_events.sprain_ankle_1 ->
        - introEvents.argument1: -> arrow_intro_events.argument_1 ->
        - introEvents.argument2: -> arrow_intro_events.argument_2 ->
        - introEvents.default_intro: -> arrow_default_intro ->
    }
    ->->
    
=== arrowEventParser (event) ===
    {event:
        - normalEvents.mess1: -> arrow_events.mess_1 ->
        - normalEvents.meat1: -> arrow_events.meat_1 ->
        - normalEvents.sprain_ankle2: -> arrow_events.sprain_ankle_2 ->
        - normalEvents.default_normal: -> arrow_default_event ->
        - normalEvents.weapon1: -> arrow_events.weapon_1 ->
        - normalEvents.weapon2: -> arrow_events.weapon_2 ->
        - normalEvents.weapon3: -> arrow_events.weapon_3 ->
        - normalEvents.stork2: -> arrow_events.stork_2 ->
        - normalEvents.stork3: -> arrow_events.stork_3 ->
        - normalEvents.stork5: -> arrow_events.stork_5 ->
        - normalEvents.stork6: -> arrow_events.stork_6 ->
        - normalEvents.stork7: -> arrow_events.stork_7 ->
    }
    ->->
    
=== arrowSleepEventParser (event) ===
    {event:
        - sleepEvents.skip_meal1: -> arrow_sleep_events.skip_meal_1 ->
        - sleepEvents.skip_meal2: -> arrow_sleep_events.skip_meal_2 ->
        - sleepEvents.skip_meal3: -> arrow_sleep_events.skip_meal_3 ->
        - sleepEvents.straight_to_bed1: -> arrow_sleep_events.straight_to_bed_1 ->
        - sleepEvents.default_sleep: -> arrow_default_sleep ->
    }
    ->->

=== function arrowConditionalEventLoader () === // Add events to list into arrowToAddEventList with addEventToList function
    {
        - arrowToAddEventList ? stork3 && arrow_nostalgia && (arrowWound ? sprain_ankle || arrowWound ? resprain_ankle): 
                ~ addEventToList(arrowPrioritySleepEventList, arrowEventDone, stork3)
    }
    // Parser la liste avec eventList ? event
    // Pour chaque event, check si l'évènement vérifie ses conditions
    // Si c'est le cas, on l'ajoute à la liste à laquelle l'event doit appartenir (hardcodé)

=== arrowEventStack(eventType) ===
    {eventType:
        -intro: {
            - not (arrowPriorityIntroEventList == () ) : 
                ~ randomEvent = LIST_RANDOM(arrowPriorityIntroEventList)
                -> arrowIntroEventParser(randomEvent) ->
            - not (arrowIntroEventList == () ) :
                ~ randomEvent = LIST_RANDOM(arrowIntroEventList)
                -> arrowIntroEventParser(randomEvent) ->
            - else :
                -> arrowIntroEventParser(default_intro) ->
        }
        -normal: {
            - not (arrowPriorityEventList == () ) : 
                ~ randomEvent = LIST_RANDOM(arrowPriorityEventList)
                -> arrowEventParser(randomEvent) ->
            - not (arrowEventList == () ) :
                ~ randomEvent = LIST_RANDOM(arrowEventList)
                -> arrowEventParser(randomEvent) ->
            - else : -> arrowEventParser(default_normal) ->
        }
        -sleep: {
            - not (arrowPrioritySleepEventList == () ) : 
                ~ randomEvent = LIST_RANDOM(arrowPrioritySleepEventList)
                -> arrowSleepEventParser(randomEvent) ->
            - not (arrowSleepEventList == () ) :
                ~ randomEvent = LIST_RANDOM(arrowSleepEventList)
                -> arrowSleepEventParser(randomEvent) ->
            - else :
                -> arrowSleepEventParser(default_sleep) ->
            }
        }
    ->->


// The tutorial text to display on the letter when sending it to someone

=== letter_tooltip ===

I want to send myself <>

{pickedForALetter:
    - no_one:out in the wild.
    - ama_ziza:to Ama Ziza.
    - kazzie:to Kazzie.
    - arrow:to Arrow.
}

{
    - currentWeek ? week_1:I am what I eat. I'll choose an ingredient that conveys the feelings I want to deliver them.
    - else: What {~should|will|do} I eat {~today|now|this week}? {~{~I don't know if I'm feeling|Am I feeling|Do I feel|Is my mood} {~nostalgic or {~passionate|caring}|passionate or {~nostalgic|caring}|caring or {~passionate|nostalgic}}?|Do I feel like {~nostalgia or {~passion|care}|passion or {~nostalgia|care}|care or {~passion|nostalgia}} right now?|Would they {~prefer|enjoy|appreciate|need} some {~nostalgia or some {~passion|care}|passion or some {~nostalgia|care}|care or some {~passion|nostalgia}} {~right now|more}?}
}

-> DONE

=== week_tooltip ===

{currentWeek:
    - week_6: I must go back to the spirit lands soon.
    - week_7: This will be my final letter.
    - week_8: {~I hope they'll be alright!|What will become of {~them|their {~fates|lives}|Havenwood}?}
    - else: {~A {~cheerful|curious|wondrous|comfortable} {~autumn week|week in Havenwood}.|A cool breeze {~blows by|sings through the leaves}.|The light is beautiful through the canopy of Havenwood.|It smells of petrichor and wet bark.}
}

-> DONE

=== weekly_upkeep ===

~ arrowConditionalEventLoader()
~ amazizaConditionalEventLoader()
~ kazzieConditionalEventLoader()
~ currentWeek++

-> DONE

=== character_choice ===

+ [amaziza] -> picked_ama_ziza
+ [arrow] -> picked_arrow
+ [kazzie] -> picked_kazzie

= picked_ama_ziza

~ pickedForALetter = (ama_ziza)
-> DONE

= picked_arrow

~ pickedForALetter = (arrow)
-> DONE

= picked_kazzie

~ pickedForALetter = (kazzie)
-> DONE


// Ingredient choice

=== ingredient_choice ===

+ [apple] -> apple
+ [leaf] -> leaf
+ [feather] -> feather

= apple

{pickedForALetter:
    - ama_ziza:
        ~ amaziza_last_emotags = (nostalgia, passion)
    - arrow:
        ~ arrow_last_emotags = (nostalgia, passion)
    - kazzie:
        ~ kazzie_last_emotags = (nostalgia, passion)
}

-> DONE

= leaf

{pickedForALetter:
    - ama_ziza:
        ~ amaziza_last_emotags = (nostalgia, care)
    - arrow:
        ~ arrow_last_emotags = (nostalgia, care)
    - kazzie:
        ~ kazzie_last_emotags = (nostalgia, care)
}

-> DONE

= feather

{pickedForALetter:
    - ama_ziza:
    ~ amaziza_last_emotags = (passion, care)
    - arrow:
    ~ arrow_last_emotags = (passion, care)
    - kazzie:
    ~ kazzie_last_emotags = (passion, care)
}

-> DONE

=== apple_tooltip ===

#NAME:Starlight apple

#EMOTAG:Nostalgia
#EMOTAG:Passion

Sweet and sparkly, juicy, perfectly crunchy. Its smell has hints of tea leaves and cocoa.

-> DONE

=== leaf_tooltip ===

#NAME:A shimmering leaf

#EMOTAG:Nostalgia
#EMOTAG:Care

It shivers in the wind, like its feeling cold - but it's warm to the touch. Hold it gently, or it will break.

-> DONE

=== feather_tooltip ===

#NAME:A shining feather

#EMOTAG:Passion
#EMOTAG:Care

Given as a gift by an old stork, blue like the sky, gentle, its wingspan twenty meters large. Hold it to your ear and you'll hear a distant summer storm.

-> DONE

=== amaziza_tooltip ===

#NAME: Ama Ziza's house

An aging teacher of mathemagics.

-> DONE

=== kazzie_tooltip ===

#NAME: Kazzie's tent

A sad dark elven girl.

-> DONE

=== arrow_tooltip ===

#NAME: Arrow's cabin

A workaholic hunter and their dragon.

-> DONE

=== arrow_consequences ===

{~I received a letter|Delittah wrote to me|My friend Delittah wrote me}{~ last week.|again.|!}

{arrow_last_emotags ? nostalgia: <- consequence_nostalgia}
{arrow_last_emotags ? passion: <- consequence_passion}
{arrow_last_emotags ? care: <- consequence_care}

+ [READ MORE]
- 

->->

= consequence_nostalgia

I lost myself remembering about how much my {~first hunts|days at school|archery lessons} were {~a disaster|fun|sixty years ago from now} for so long that {~my baby girl|Ace|my good girl|my tired girl} had {~began snoring|startd drooling|fallen asleep} on my {~lap.|feet.|bed.|pile of used clothes.}

->->

= consequence_passion

{~The late birdcalls|The hot colors of the autumn falls|The creaking of branches} filled me with {~the thrill of the hunt|a strong love of nature|}. Oh I'd love to be {a dragon like you, Ace|a {~free|elegant|flying} skynimal|a {~bloodthirsty|running|wild} chimaera}.

->->

= consequence_care

{~I started pondering on what my life would be{|made of} if I wasn't {all day out hunting|living with Ace|scared about hurting myself|always the head in the trees}.|I started {~imagine myself|picture me|see myself} {~spending a day in town|visiting a friend|learning new skills|lying around the house}}. {~It made me smile|I let out a light laugh} without {~me noticing it|me realizing it}.

-> DONE

=== amaziza_consequences ===

{~I received a letter|Delittah wrote to me|My friend Delittah wrote me}{~ last week.| again.|!}

{amaziza_last_emotags ? nostalgia: <- consequence_nostalgia}
{amaziza_last_emotags ? passion: <- consequence_passion}
{amaziza_last_emotags ? care: <- consequence_care}

+ [READ MORE]
- 

->->

= consequence_nostalgia

{~I looked {~at the leaves outside|out the window|at the sunset} for {~an hour|a while} afterwards.|It made me feel {~somewhat|a little|very} {~whistful.|forlorn.|thoughtful.}|It made me wonder how {life is in Hightree.|different my life would be if {~I hadn't become a teacher.|I hadn't become a parent.|I weren't sick.}}}

-> DONE

= consequence_passion

I got so lost in thinking about dance that I {~almost |}{~forgot to {~eat.|pack my lunch for the next day.|pack my bag.|get the laundry into the dry-o-magic.}|cut myself cooking.|messed up my divination spell.|made a mistake while grading a paper.|etched the wrong formula into the computorb.}

-> DONE

= consequence_care

{~Before I knew it, I also {~had {~cleaned the whole kitchen.|cleaned my room.|sorted three months worth of paperwork.|finally archived these old documents.}|was singing{~, {~slightly|very} {~loudly|enthusiastically} I might add.| heartily.| to my heart's content.| softly, and to myself.}}|I managed to free up some time for a bath{|, and even lit some scented candles}.|I found the energy to cook a whole meal{, and didn't even leave a mess and a half behind|}.}

-> DONE

=== kazzie_consequences ===  

{~I received a letter|Delittah wrote to me|My friend Delittah wrote me}{~ last week,|again,|}  

{kazzie_last_emotags ? nostalgia: <- consequence_nostalgia}
{kazzie_last_emotags ? passion: <- consequence_passion} 
{kazzie_last_emotags ? care: <- consequence_care}  
+ [READ MORE] 
-  
->->  

= consequence_nostalgia  
 
 {shuffle:
-the words reminded me of my childhood
-I felt like reminiscing cherished memories while skimming through it
-it felt as familiar as childhood memories
-I think it helped me see more clearly things about my past
-now I feel invigorated, as if a forgotten strength from my youth was coming back to me
-reading it made me smile at past memories
-I realized how much things from when I was a kid mattered to me

}
 
-> DONE

= consequence_passion 

 {shuffle:
-it made me feel warm and understood
-it reminded me of love and how much it matters to me
-I think I needed that guidance
-I hope the words written in there will help me express my passion
-So many nice words, made me feel loved and cared for
-I feel love coursing through my veins, I am unstoppable after reading it
-It made me think about love and how I relate to it
}
  
-> DONE  

= consequence_care

 {shuffle:
-it reminded how a lot of things matter around me
-it helped me see ways to be less isolated
-I think it allowed me to perceive more options for meeting people
-it made me feel like I need to meet more people
-reading it I felt like friends where watching me and begging to see me
-now I feel surrounded, it motivates me a lot
-I realized I missed hanging out with people while reading it
}

-> DONE 

=== amaziza_mindreads ===

~ temp x = RANDOM(1, 2)

{
    - (amazizaMoodSwings ? low) && (x == 1): 
        ~ changeStates(amazizaMoodSwings, joyful)
    - (amazizaMoodSwings ? low) && (x == 2): 
        ~ changeStates(amazizaMoodSwings, depressed)
    - (amazizaMoodSwings ? joyful) && (x == 1): 
        ~ changeStates(amazizaMoodSwings, low)
    - (amazizaMoodSwings ? joyful) && (x == 2): 
        ~ changeStates(amazizaMoodSwings, depressed)
    - (amazizaMoodSwings ? depressed) && (x == 1): 
        ~ changeStates(amazizaMoodSwings, low)
    - (amazizaMoodSwings ? depressed) && (x == 2): 
        ~ changeStates(amazizaMoodSwings, joyful)
}

{pickedForALetter == ama_ziza:
    - -> amaziza_consequences ->
}

-> amazizaEventStack(intro) ->

+ [READ MORE]
- 

-> amazizaEventStack(normal) ->


+ [READ MORE]
- 

-> amazizaEventStack(normal) ->

+ [READ MORE]
- 

-> amazizaEventStack(sleep) ->

-> DONE

=== amaziza_default_intro ===

{amazizaMoodSwings:
    - low: -> default_intro_low ->
    - joyful: -> default_intro_joyful ->
    - depressed: -> default_intro_depressed ->
}

->->

= default_intro_low

{~Come on|Let's go|Be brave} Ziza, {~try to do|I'm sure you can do} at least one more thing before the end of the day!

Pfff... {No, I can't|Okay stop}, enough, {~I quit|I'm gonna end that here|I'm gonna stop there}. {~Fuck|Too bad for} productivity.

->->

= default_intro_joyful

Today was {~just the perfect day|sooo perfect|the best day ever}, {~I am so happy!|I really love my life!|I love life so much!}

[i]She starts to sing {~enthusiastically|with a powerful voice|with the clearest voice}.[/i]

->->

= default_intro_depressed

Pffff... {~Work, papers, chores, chores, work, papers|There is always something to do|Not even one second to breathe|Too many things to do}, how can {~anybody|anyone} live like this?

{~There is no way I can|I will never} {~stand|keep up like this|keep myself up|maintain the rate} until the holidays...

->->

=== amaziza_default_event ===

{amazizaMoodSwings:
    - low: -> default_low ->
    - joyful: -> default_joyful ->
    - depressed: -> default_depressed ->
}

->->

= default_low

{cycle:
    - I'm so {~sick of it|bored}... {~Work, papers, chores, chores, work, papers|There is always something to do|Not even one second to breathe|Too many things to do}, how can {~anybody|anyone} live like this?

    What can I do anyway, I have to {~stand|keep up|keep myself up|maintain the rate} until the holidays... 

    - {shuffle:
        - I hope {~that I'll have a quick answer|they will be reactive} for this year's high school administrative {~stuff|resquests|applications}.

        I don't want to wait {~another month|an entire month|for weeks} before {~knowing how I will|I know how to} get {~the June scholar trip|this spring's mathemagical circle of conferences|my second semester classes} organized.

        - I hope at least {~that I'll have a quick answer|they will be reactive} for next year's {~Direction of Education stuff|Board of Education resquests|social security applications|social {~safety|insurance|welfare|protection}} applications.

        I don't want to wait {~another six months|an entire semester|for months} before knowing how {~I'll|to} get my next year's {~classes|timetable} organized.
    }
}

->->

= default_joyful 

{cycle:
    - {~I sat at the table of a café,|Working peacefully, sat at a café} under the warm heat of the autumn sun. {~Is there anything better in the world?|I found no more enjoyable way to work so far.|Nothing more {~pleasing|pleasant} to {~enjoy|make the most of} the {~weather|season}.}

    I even {~achieved|finished} {~my first|my last|another} {~pile of corrections|stack of {~tests|homeworks}|stack of {~test|exam|student|} papers|math essay for the {~students|semester}}!

    - {~It is so nice to feel good!|How I love to feel good!|I feel so alive!}

    I know I have to appreciate it when I'm high, for it can {~switch|change} so {~briefly|quickly|suddenly}.
}

->->

= default_depressed 

{cycle:
    - I{~ just cannot|'ll just never} make it, this is {~too difficult|too hard|impossible}...

    [i]{~Starts to weep silently|Bursts into mute tears|Begins to sob in silence}.[/i]

    - {~Come on Ziza|Take it easy}, {~come on|you know it will do|you know it's juste a phase|you know you'll do it eventually|let it go a little}... 

    [i]{~Bursts into tears again|Cries out loud}.[/i]
    
}

->->

=== amaziza_default_sleep ===

{amazizaMoodSwings:
    - low: -> default_low ->
    - joyful: -> default_joyful ->
    - depressed: -> default_depressed ->
}

->->

= default_low

{~I'm so tired|Today was really  difficult|Today was not easy}. At least {~the house is not obviously messy|my courses for tomorrow are ready|I {~completed|sent} the administrative file for my disability aids}.

Let's just go {~to bed|to sleep}.

->->

= default_joyful

{~Come on|Okay|All right}, tonight I {~offer myself the time|give myself the right} to read a little.

I don't do it {~often enough|as much as I'd like}, {~I really love this book|where was I already|this book is so great}...

->->

= default_depressed

I'm so tired{~ of myself| of life|}...

{~Fuck|Forget} everything, I just wanna {~go to sleep|disconnect|run away|fly away}...

->->

=== amaziza_intro_events ===

= dance_1
// joyful

Waah! Dance class was crazy. I'm spent.

I know I shouldn't push myself like that, but I can't help it!

~ amazizaEventDone += introEvents.dance1
~ amazizaIntroEventList -= introEvents.dance1
->->

= students_1
// joyful

My students were adorable this morning.

What's gotten into them? This day was the best, I swear.

~ amazizaEventDone += introEvents.students1
~ amazizaIntroEventList -= introEvents.students1
->->

= autumn_A_1
// low

I don't like when the days get shorter.

Although the burning colors of autumn are beautiful, it hardly cheers me up.

~ amazizaEventDone += introEvents.autumn_A1
~ amazizaIntroEventList -= introEvents.autumn_A1

->-> 

= autumn_B_1
// low

I am usually really apprehensive about autumn.

So far everything went right, but my mood can deteriorate so quickly.

~ amazizaEventDone += introEvents.autumn_B1
~ amazizaIntroEventList -= introEvents.autumn_B1

->->

= operation_announcement_1
// top priority if triggered
// trigered week 5 or earlier week 4 if "has_an_accident"

Okay so Druid Stork the town healer told me they will need to proceed with a
{amazizaHipState:
    - feeling_okay: check quickly if everything is okay. It's like a routine.
    - hurting_a_bit: check quickly if everything is okay.
    - getting_rough: proceed with an intervention.
    - has_an_accident: proceed with a difficult intervention.
}

{amazizaHipState:
    - feeling_okay: It'll be nothing more like a routine.
    - hurting_a_bit: Maybe I'll need some physical therapy, to be sure that I entirely recover my mobility.
    - getting_rough: I should entirely recover my mobility, the chances of success are quite high.
    - has_an_accident: I might entirely recover my mobility, but the chances of success are low.
}

~ amazizaEventDone += introEvents.operation_announcement1
~ amazizaIntroEventList -= introEvents.operation_announcement1

->->

= operation_conclusion_1
// week 8 = conclusion

{amazizaHipState:
        - feeling_okay: I went to see Druid Stork and we realized a complete check on my hips.
//    - feeling_okay: It was worth checking my hips {~after all|finally}.
    - hurting_a_bit: It won't be so nasty {~after all|finally}.
    - getting_rough: The operation went perfectly well.
    - has_an_accident: The operation went rather well.
}

{amazizaHipState:
    - feeling_okay: Apparently, given my dance practicing, I might only need some few physical therapy to maintain it perfectly functionnal until the end of my days.
    - hurting_a_bit: Apparently, given my dance practicing, I will only need some few physical therapy to maintain it perfectly functionnal until the end of my days.
    - getting_rough: I know Druid Stork had told me I had no reason to worry, but apparently I moved a lot during these height hours of anesthesia.
    - has_an_accident: Druid Stork said we were lucky at some point. Apparently I moved a lot during these height hours of anesthesia.
}

->->

=== amaziza_events ===

= psychologist_medication_1
// depressed

Doctor Spicey my psychologist suggested that we change the doses of my medications, the time my situation settles down. 

After twelve years she knows me well. We'll see in two weeks if it gets better.

~ amazizaEventDone += normalEvents.psychologist_medication1
~ amazizaEventList -= normalEvents.psychologist_medication1

->->

= children_A_1
// low
// se déclenche en second (?)

What's the time? Oh... Vick must be sleeping already. Alix's probably hard at work. 

And Barjov? No idea. Maybe at the theatre with some friends.

~ amazizaEventDone += normalEvents.children_A1
~ amazizaEventList -= normalEvents.children_A1

->->

= feeling_trash_1
// depressed

Fuck me! 

Why can't I just be a functionnal human being living normally in good health and doing normal activities that make them happy?!

~ amazizaEventDone += normalEvents.feeling_trash1
~ amazizaEventList -= normalEvents.feeling_trash1

->->

= hips_feeling_okay_1
// top priority if triggered
// trigered if ... (check in another life when this game is complete <3 <3 <3 J'aime Fae)

Maybe I forced a bit too much tonight.

I'm still feeling my hips, gonna stretch myself again.

~ amazizaEventDone += normalEvents.hips_feeling_okay1
~ amazizaEventList -= normalEvents.hips_feeling_okay1
~ amazizaIntroEventList += introEvents.operation_announcement1
~ amazizaEventList += normalEvents.hips_hurting_a_bit1

->->

= hips_hurting_a_bit_1
// top priority if triggered

I still feel my hips since last week, plus I quite had to stop my dance class in advance tonight.

This is not good.

~ amazizaEventDone += normalEvents.hips_hurting_a_bit1
~ amazizaEventList -= normalEvents.hips_hurting_a_bit1

->->

= operation_conclusion_1
// week 8 = conclusion

{amazizaHipState:
    - feeling_okay: I was so relieved to hear that.
    - hurting_a_bit: 
    - getting_rough: 
    - has_an_accident: It will took me some time to recover.

}

{amazizaHipState:
    - feeling_okay: After all these years, I would I hated to hear that I had past the age to dance.
    - hurting_a_bit: I won't be able to dance for the whole month.
    - getting_rough: 
    - has_an_accident: Six months at least before dancing any move, then stating agin little by little. 
}

->->

= operation_conlusion_2
// week 8 = conclusion

{amazizaHipState:
    - feeling_okay: I love that so much. It's like my reason to live.
    - hurting_a_bit: 
    - getting_rough: 
    - has_an_accident: I'm not very glad of that. Six months is so long.
}

{amazizaHipState:
    - feeling_okay: Although every other student in my jazz and classic classes are younglings, when it comes to dance I sure am the most impatient of all.
    - hurting_a_bit: 
    - getting_rough: 
    - has_an_accident: I don't know if I'll be that patient. I hope that will do.
}

->->

=== amaziza_sleep_events ===

= children_A_2
// se déclenche suite à children_A_1 (?)

I really oughta write my children more often. I'm the worst parent...

No, no, shut up. You're just chill. Come on, it's bedtime now.

~ amazizaEventDone += sleepEvents.children_A2
~ amazizaSleepEventList -= sleepEvents.children_A2

->->

= late_A_1
// low

What time is it? Oh damn, I spent so much time cooking!

Let's just leave everything like that, I need to wake up early tomorrow...

~ amazizaEventDone += sleepEvents.late_A1
~ amazizaSleepEventList -= sleepEvents.late_A1

->->

= late_B_1
// low

Shit, is it midnight already?

Let's just eat anything quickly, I'll do the dishes when coming back from high school tomorrow. 

~ amazizaEventDone += sleepEvents.late_B1
~ amazizaSleepEventList -= sleepEvents.late_B1

->->

= tired_1
// low

Is it really only 9:30pm ? 

Pfff anyway, I'm spent, I'll do the dishes tomorrow.

~ amazizaEventDone += sleepEvents.tired1
~ amazizaSleepEventList -= sleepEvents.tired1

->->

= feeling_crap_1
// depressed

Who could ever want to be my friend? I am not even able to take care of me, of my house, of my life!

I am so pissed off of staying alone and having no energy!

~ amazizaEventDone += sleepEvents.feeling_crap1
~ amazizaSleepEventList -= sleepEvents.feeling_crap1
->->

= going_out_1
// joyfull 
// triggered when amaziza_passion.radiant the first time

I'm so full of joy and energy tonight!

Definitively not going to go to bed early.  Why not going out?

~ amazizaEventDone += sleepEvents.going_out1
~ amazizaSleepEventList -= sleepEvents.going_out1

->->

= operation_conclusion_1
// week 8 = conclusion

{amazizaHipState:
    - feeling_okay: Anyway, I still have a little thing to {~complete|end|achieve} for tomorrow before to go to bed.
    - hurting_a_bit: 
    - getting_rough: 
    - has_an_accident: Anyway, I have all my lessons to write for my students until I come back.
}

{amazizaHipState:
    - feeling_okay: Better go back to work.
    - hurting_a_bit: 
    - getting_rough: 
    - has_an_accident: Better go back to work.
}

->->

=== kazzie_mindreads ===

{currentWeek ? week_8: -> endings}

{pickedForALetter == kazzie:
    - -> kazzie_consequences ->
}

-> kazzieEventStack(intro) ->

+ [READ MORE]
- 

-> kazzieEventStack(normal) ->

+ [READ MORE]
- 

-> kazzieEventStack(normal) ->

+ [READ MORE]
- 

-> kazzieEventStack(sleep) ->

-> DONE

=== endings ===

<- default_end

-> DONE

= default_end

Well, I guess it had to happen some day, it sucks that we won't be even friends, but I guess it couldn't have gone any other way anyway...

I wish we'll still reconnect sometime in the future, but I can't really stand here moping forever

-> DONE

= dragon_riding_exam

I think I might really get the hang of this dragon riding stuff, my teacher said they had great hopes for me and I love the perspective of flying a rescue dragon for people that need assistance, it the kind oh hobby that makes you feel useful

-> DONE

= dragon_riding_exam_failed

I am still training regularly for the next batch of dragon riding exam, it's a lot of work but I am getting the hang of it more and more, and it's still a blast to train with those magnificent creatures no matter what.

-> DONE

= no_dragon_riding

I think next year I'll try getting into dragon riding, it's shame I couldn't bring myself to start it now, but I still need time for myself with everything happening, when I'll be ready it'll surely go smoothly

-> DONE

= dragon_adopt_center

The dragon center shopkeeper called me back, I have a part time job there as an assistant baby dragon keeper, I am looking forward to helping the cute little monsters, and the staff seems really nice, I had a first day were I was feeling anxious and started crying, but they were very supportive and I still have the job.

-> DONE

= magic_singing_end

I am training more and more to perform magical singing, everyday I sing a little bit for myself, and more and more I manage to sing in front of friends, even stranger now ! I hope I get to a point were I could go on stage at some point, in front of a small crowd.

-> DONE

=== credits_tooltip ===

[b]Forest people[/b]
Computer mechanic: Manuflette
Narrative tree growers: Meduthey, KT, Grizembrr
Narrative tree house builder: fae.exe
Bird chirps and wind howl maker: KT
Botanic painter and musician: alyd asmar
Sylvan cooker: BDKZ
Baby in the trees: KP

[b]Fonts[/b]
Aseprite Font by David Capello
Pixel Tactical by Neale Davidson

[b]Made with[/b]
Godot 3.5, Ink, Asesprite, Ambient Mixer, LMMS 

-> DONE 

=== kazzie_default_intro ===

{~{~Why can't I {~hear|get} some news from Luna?|I wish I'd {~hear|get} some news from Luna.}|I wonder how {~Luna's|she's} doing...}
    
{~Is she ghosting me?|Is she even thinking about me{~ the way I do about her?|?}|Look at me, getting all angsty{~ over someone who might not give a shit at all.| like that.}|I don't know, I just want to talk a bit.|Will I ever get to talk to her again?}

->->

=== kazzie_default_normal ===

{~That {~sentiment|feeling of {~isolation|loneliness}} is getting to me, {~I think|I believe|I'm afraid}...| I don't know {~how long|how much longer|if} I can {stay like this...|stay without seeing {~people|anyone}...}}

{~I should {~probably|perhaps} try to {~go {~out|outside}|take a stroll|go buy some groceries}, but I can't find the {~motivation|willpower|determination}.}

->->

=== kazzie_default_sleep ===

{~I wish {~Luna|people} would {~make|take} {~a step towards me|the first step} {~for once|this time|just once|for a change}.| {~I  try so hard|I {~make|spend} so much efforts all the time|Everything just takes so much {~effort|energy}}.}

{~But it's useless,|But no matter what,|But no matter how hard I try,} it's like no one {~wants to do anything with me anymore.|ever calls me.|ever wants to {~spend time with me.|see me.}}

->->

=== function activity_parser (activity)
    {activity:
        - dragon_riding: 
            ~ return "learning dragon riding"
        - celebrating_birthday:
            ~ return "celebrating my birthday"
        - apply_for_shelter:
            ~ return "applying for a job at Tiny Hoard Cave"
        - painting:
            ~ return "painting"
        - magic_singing:
            ~ return "practicing magic singing"
    }

=== function activityListWithCommas(list, if_empty)
    {LIST_COUNT(list):
    - 2:
                {activity_parser(LIST_MIN(list))} and {activityListWithCommas(list - LIST_MIN(list), if_empty)}
    - 1:
                {activity_parser(list)}
    - 0:
                        {if_empty}
    - else:
                      {activity_parser(LIST_MIN(list))}, {activityListWithCommas(list - LIST_MIN(list), if_empty)}
    }

=== kazzie_intro_events ===

= lonely_1

It feels so lonely. 

It's been so long since I have been alone like this...

~ kazzieEventDone += introEvents.lonely1
~ kazzieIntroEventList -= introEvents.lonely1
->->

= school_1

It's been days since I even attended school. 

I haven't seen anyone, done anything.

~ kazzieEventDone += introEvents.school1
~ kazzieIntroEventList -= introEvents.school1
->->

= no_motivation_1

I can't read, I can't even bring myself to do magic anymore. 

It's as if I wasn't just missing her but a part of myself...

~ kazzieEventDone += introEvents.no_motivation1
~ kazzieIntroEventList -= introEvents.no_motivation1
->->

= dragon_riding_1

I learned the dragon riding club is opening soon.

... Shouldn't I at leat give it a try?

~ kazzieEventDone += introEvents.dragon_riding1
~ kazzieIntroEventList -= introEvents.dragon_riding1

{getHighestEmo(kazzie):
    - nostalgia:
        ~ addEventToList(kazziePriorityNostalgiaEventList, kazzieEventDone, nostalgiaEvents.dragon_riding1)
    - passion:
        ~ addEventToList(kazziePriorityPassionEventList, kazzieEventDone, passionEvents.dragon_riding1)
    - care:
        ~ addEventToList(kazziePriorityCareEventList, kazzieEventDone, careEvents.dragon_riding1)
}
~ addEventToList(kazzieToAddEventList, kazzieEventDone, kazzie_events.dragon_riding_2)

->->

= luna_call_1
    
Luna called a few days ago.

I told her I was {activityListWithCommas(activities,"not doing much of anything")}.

{LIST_COUNT(activities):
    -1: 
        She seemed a little bit reassured about my situation.
        ~ reachState(lunaCall, has_called_positive)
    -0: 
        She seemed worried about me, almost angry.
        ~ reachState(lunaCall, has_called_negative)
    -else: 
        She seems to be glad to hear I was doing good.
        ~ reachState(lunaCall, has_called_positive)
}

~ kazzieEventDone += introEvents.luna_call1
~ kazzieEventList -= introEvents.luna_call1
~ addEventToList(kazziePriorityEventList, kazzieEventDone, luna_call2)
->->

=== kazzie_events ===

= rough_1

These past few days were... rough, but I didn't expect... That. 

It's like, things made sense, for month, like never before. But now...

~ kazzieEventDone += normalEvents.rough1
~ kazzieEventList -= normalEvents.rough1
->->

= luna_call_2
    
    {getHighestEmo(kazzie):
        - passion: {TURNS_SINCE(-> kazzie_intro_events.luna_call_1) > 3 : When luna last called, she|She} talked excitedly about her new partner. 
        
        They seem so interesting, I got very curious. 
        
        {~I guess I understand why she wanted to be with them.|Maybe she didn't left just because of me.|I hope I'll get to meet them, maybe we could all be friends.}
        
        - care: {TURNS_SINCE(-> kazzie_intro_events.luna_call_1) > 3 : When luna last called, she|She} asked me how I was doing, I said I was taking care of myself, trying to get better.
        
        - nostalgia: {TURNS_SINCE(-> kazzie_intro_events.luna_call_1) > 3 : When luna last called, we|We} talked about our past, before we were dating. We reminisced about our childhood. 
        
        She seemed pensive, maybe a bit melancholic... 
        
        I thought about how those days were nice even if we weren't like together together, I wish we could have that again.
    }
    
    ~ kazzieEventDone += normalEvents.luna_call2
    ~ kazziePriorityEventList -= normalEvents.luna_call2
    ~ addEventToList(kazzieToAddEventList, kazzieEventDone, conflict1)
    ->->

= conflict_1
    {
        - LIST_COUNT(activities) == 0 && getEmoScore(kazzie, passion) < 3:
            What was I thinking, of course she doesn't care. For a week she ghosts me and now she is pissed that I don't have anything to say and that I slack off in my house doing nothing, she's the one that put me in that headspace.

            A childhood friend, then lover, then goner, in a few weeks, and I have nothing to say. 
            
            ~ changeStates(howLunaFeels, angry)
        - LIST_COUNT(activities) > 0 && getEmoScore(kazzie, passion) < 3:
            We talked again with Luna, I feel like we almost had an argument about what I was doing with my life, but she calmed down when we talked about some of the things I did since our break up, but it feels like she has a lot going on in her life, she's on edge.

            ~ changeStates(howLunaFeels, friends)
        - LIST_COUNT(activities) == 0 && getEmoScore(kazzie, passion) >= 3:
            I had the occasion to talk to Luna, she was pissed off at me but we manage to calm down and talk, I saw something was off with her so I tried to understand what she was going through, she didn't explain it clearly but at least it put an end to the argument and now we're cool.
            
            ~ changeStates(howLunaFeels, close_friends)
        - LIST_COUNT(activities) > 0 && getEmoScore(kazzie, passion) >= 3:
            I had the greatest time since my break up talking with Luna, she opened to me about struggling between our break up and her new relationship, life in general, worrying about me, it feels she needed to talk to someone and I am still close enough that she feels safe saying this to me. I am happy I am still important to her...
            ~ changeStates(howLunaFeels, romance)
    }
    
    ~ kazzieEventDone += normalEvents.conflict1
    ~ kazziePriorityEventList -= normalEvents.conflict1
    ->->

= dragon_riding_2

    I didn't find it in me to go to dragon riding class, it looked fun, but it's also exhausting, and I am so tired of everything right now.
    ->->
    
    ~ kazzieEventDone += normalEvents.care_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.care_dragon_riding2
    ~ kazzieEventDone += normalEvents.nostalgia_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.nostalgia_dragon_riding2
    ~ kazzieEventDone += normalEvents.passion_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.passion_dragon_riding2
    ~ kazzieEventDone += normalEvents.dragon_riding2
    ~ kazzieCareEventList -= normalEvents.dragon_riding2
    
= passion_dragon_riding_2
    I really wish we could be going to the dragon riding class with Luna, she promised a long time ago she would accompany me for the first few class days, I'll ask her.
    ->->
    
    ~ kazzieEventDone += normalEvents.care_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.care_dragon_riding2
    ~ kazzieEventDone += normalEvents.nostalgia_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.nostalgia_dragon_riding2
    ~ kazzieEventDone += normalEvents.passion_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.passion_dragon_riding2
    ~ kazzieEventDone += normalEvents.dragon_riding2
    ~ kazzieCareEventList -= normalEvents.dragon_riding2

= nostalgia_dragon_riding_2
    I remember riding Arrow's dragon when I was a kid, that's one of my dearest memories, I can't wait to go to that class, I am not missing out this time !
    ->->
    
    ~ kazzieEventDone += normalEvents.care_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.care_dragon_riding2
    ~ kazzieEventDone += normalEvents.nostalgia_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.nostalgia_dragon_riding2
    ~ kazzieEventDone += normalEvents.passion_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.passion_dragon_riding2
    ~ kazzieEventDone += normalEvents.dragon_riding2
    ~ kazzieCareEventList -= normalEvents.dragon_riding2
    
= care_dragon_riding_2
    I really need this dragon riding course, it's everything I ever dreamed of, it's sad the Luna is not there, but I can't wait for her for this. I might ask some of my friends if they wanna go with me instead.
    ->-> 
    
    ~ kazzieEventDone += normalEvents.care_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.care_dragon_riding2
    ~ kazzieEventDone += normalEvents.nostalgia_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.nostalgia_dragon_riding2
    ~ kazzieEventDone += normalEvents.passion_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.passion_dragon_riding2
    ~ kazzieEventDone += normalEvents.dragon_riding2
    ~ kazzieCareEventList -= normalEvents.dragon_riding2
    
    
    
= fuck_1

How could it come to this? 

I always heard that the first break up hurt the most, but [i]fuck[/i].

~ kazzieEventDone += normalEvents.fuck1
~ kazzieEventList -= normalEvents.fuck1
->->

= childhood_1

We were together since childhood, is that nothing to her ?

I can't believe she'd dump me like that.

~ kazzieEventDone += normalEvents.childhood1
~ kazzieEventList -= normalEvents.childhood1
->->

= thoughts_of_dragon_riding_1

What was that about becoming dragon riders together, huh?

All our promises, thrown to the wind...

~ kazzieEventDone += normalEvents.thoughts_of_dragon_riding1
~ kazzieEventList -= normalEvents.thoughts_of_dragon_riding1
~ addEventToList(kazzieEventList, kazzieEventDone, introEvents.dragon_riding1)
->->

= ace_and_kazzie_1

I miss petting Arrow's Ace.

Come to think of it, I could really use a pet.

But the tent is way too flammable, even for a tiny dragon like that.

~ kazzieEventDone += normalEvents.ace_and_kazzie1
~ kazzieEventList -= normalEvents.ace_and_kazzie1
~ addEventToList(kazzieEventList, kazzieEventDone, introEvents.dragon_riding1)
->->

=== kazzie_sleep_events ===

= everything_stopped_1

It seems like everything just stopped, right then and there when she left. 

Please come back Luna. 

I am so lost without you...

~ kazzieEventDone += sleepEvents.everything_stopped1
~ kazzieSleepEventList -= sleepEvents.everything_stopped1
->->

= thoughts_of_dragon_riding_2

Am I letting my life escape me?

What am I doing... I'd always thought I'd be a dragon tamer by now.

But I can't seem to do much more than moping around...

~ kazzieEventDone += sleepEvents.thoughts_of_dragon_riding2
~ kazzieEventList -= sleepEvents.thoughts_of_dragon_riding2
~ addEventToList(kazzieEventList, kazzieEventDone, introEvents.dragon_riding1)
->->

= crying_to_sleep_1

How am I to go on without her? 

When she's already found someone new, and I am just crying myself to sleep. 

~ kazzieEventDone += sleepEvents.crying_to_sleep1
~ kazzieSleepEventList -= sleepEvents.crying_to_sleep1
->->

=== arrow_mindreads ===

~ temp x = RANDOM(1, 6)

{pickedForALetter == arrow:
    - -> arrow_consequences ->
}

{
    - (arrowNest ? go_hunt) && (arrowWound ? not_wounded) && (x <= 3): -> arrow_intro_events.sprain_ankle_1 ->
    - (arrowNest ? go_hunt) && (arrowWound ? sprain_ankle) && (arrowWound ? resprain_ankle) && not (arrowWound ? got_blind) && (x <= 3): -> arrow_intro_events.blind_1 ->
    - else: -> arrowEventStack(intro) ->
}

+ [READ MORE]
- 

-> arrowEventStack(normal) ->

+ [READ MORE]
- 

-> arrowEventStack(normal) ->

+ [READ MORE]
- 

-> arrowEventStack(sleep) ->

+ [READ MORE]
- 

-> arrow_nest_events ->

-> DONE

=== arrow_default_intro ===

~ randomEvent = ()

{
    - arrowNest ? go_hunt || arrowNest ? first_day: 
        ~ randomEvent += go_hunt
    - arrowNest ? stay_home: 
        ~ randomEvent += stay_home
}

{
    - arrowWound ? sprain_ankle || arrowWound ? resprain_ankle:
        ~ randomEvent += sprain_ankle
}

{LIST_RANDOM(randomEvent):
        - go_hunt:
        {shuffle:
        - ACE, HEEL! {~ You've done well today, girl!|Let's see... 1 upper chimeara and 2 basic ones? Good job, girl!|We caught 3 upper chimearas today. What a bounty!}
        [i] {~ Something|The Dragon|Ace} barks proudly. [/i]
        - {~What an exhausting day it was. Wasn't it, Ace?|It's now time to butcher and dry our hunting booty. Ready, Ace?!}
        [i] The panting breath of {~ a creature|the dwarf-dragon|Ace} answers you. [/i]
        - ACE, HEEL! {~ We had only met a chimeara like that once before. You remember, girl?|There was a weird smell in the woods today, we should invest it.}
        [i] {~ A creature|The dwarf-dragon|Ace} emits a serious growl. [/i]
        }
        
        - stay_home:
        {shuffle: 
        - {~ What a unusual week. Right, girl?|We hadn't had a week like that in like... forever?}
        [i] Pensive moans escape from {~ the creature|the dwarf-dragon|Ace}. [/i]
        - ACE, HEEL! {~ It was surprisely restful not to go hunting last week. What do you think, girl?|Did you enjoy hanging out in the city this week?}
        [i] A grunt of approval is heard in the cabin [/i]
        
        }
    - sprain_ankle: {~ I should play it cool on my ankle.|How much longer can last a sprain?}
        [i] {~ Something|The dragon|Ace} emits a pity squeek. [/i]
    }

->->

=== arrow_default_event ===

 {shuffle:
        -  Ace, girl! We have to {~ do a stocktake of our loot.|preserve the meat with salt.|ration our food for the coming weeks.|spruce the cabin up.}
        
        [i] {~The creature|The dragon|Ace}{~sighs in laziness.|makes a encouraging grunt.|reluctantly approaches.} [/i]
        
        Come on, {~ the work needs to be done.|our work is not over yet.|let's get the job done.}
 }

->->

=== arrow_default_sleep ===

 {shuffle:
        - {~The morning storks are singing|It's already dawn|I hear a neighbour crying|My bones are feeling weak from the day} and I didn't get any sleep yet.
        {~I'll just treat my arrows with iron cap oil|I'll just wash my teeth with the morning dew|I'll just read a few pages of my book about skynimals} then I'll catch some sleep.
 }

->->

=== arrow_nest_events ===

{
    - arrow_last_emotags ? care && pickedForALetter ? arrow:
        {arrowNest ? stay_home && (arrowWound ? sprain_ankle || arrowWound ? resprain_ankle): 
            ~ changeStates(arrowWound, ankle_recovered)
        }
        ~ changeStates(arrowNest, stay_home)
    - else:
        ~ changeStates(arrowNest, go_hunt)
}

{arrowNest:
    - go_hunt: -> arrow_hunt
    - stay_home: -> arrow_stay
    - first_day: -> arrow_hunt
}

=== arrow_hunt ===

{arrowWound:
    - sprain_ankle: -> hunt_ankle
    - resprain_ankle: -> hunt_ankle
    - ankle_recovered: -> hunt_recovered
    - else: -> hunt_default
}

= hunt_default

{~I miss the smell of the forest.|I can't stay put another minute.|} Ace, nest! {~Get ready!|} 

Tomorrow, {~we hunt{~ again|}!|go hunting!|we're hunting!}

->->

= hunt_ankle

{~Recovered or not, I have to get out{~ of here| in the wild}.|I can't stand staying home another week.} Ace, nest!

Tomorrow, {~we hunt{~ again|}!|we go hunting!|we're hunting!}

->->

= hunt_recovered

{~Our patience has paid off!|My ankle is so much better!|I'm in such a good shape tonight.|I'm craving the thrill of the hunt.} Ace, nest!

Tomorrow, {~we hunt again!|we're back in the forest!|we're hunting again!|we follow our hearts!}
->->

=== arrow_stay ===

= stay_default

{~I think we should take it easy tomorrow.|The weather's {~not conducive to|unsuitable for} hunting tomorrow.|Tomorrow, it's better if we stay in town.} 

{~Sleep well,|Good night,|Sleep tight,} Ace.

->->

= stay_ankle

{~I can't trust my ankle.|I need to give myself time to recover.|It would be unwise to keep straining the wound.|We can't go out again just yet, girl.}

{~We won't be hunting anytime soon, Ace.|We could use some time at home.|{~Sleep well,|Good night,|Sleep tight,} Ace.}

->->

= stay_resprain

{~My ankle hurts like hell.|What have I done to deserve this?|I need to be careful, the pain keeps getting worse.}

{~Tomorrow, we stay put, my girl.|Tomorrow, we're under house arrest, Ace!}

->->

= stay_recovered

{~I should take it easy with my new ankle, right?|Our patience has paid off!}

{~How about we wander around the tree a bit, girl?|What say you, should we take some us-time?|Let's keep practicing a bit of self-care.} 

{~Sleep well,|Good night,|Sleep tight,} Ace.

->->

=== arrow_intro_events ===

= heel_1

ACE, HEEL! WE'RE BACK!

[i]Barks and a low growl answer.[/i]

~ arrowEventDone += introEvents.heel1
~ arrowIntroEventList -= introEvents.heel1
->->

= sprain_ankle_1 //arrow_hunt, -> arrow_stay

ACE! Quick, the first-aid kit!

Behind the pile of broken arrows! Please!

[i]Something rummages frantically.[/i]

I need to make a splint. I can't get stuck at home.

~ arrowEventDone += introEvents.sprain_ankle1
~ arrowIntroEventList -= introEvents.sprain_ankle1
~ changeStates(arrowNest, stay_home)
~ reachState(arrowWound, sprain_ankle)
~ arrowStaysSet = true
~ addEventToList(arrowEventList, arrowEventDone, normalEvents.sprain_ankle2)
->->

= blind_1 // arrow_hunt, sprain_ankle (si arrow_passion > 3 && arrow_nostalgie > 3 = false)

ACE, HEEL OVER! Closer, skin to skin. Are we home?

[i]Ace grunts in aquiescence.[/i]

I can't see shit. I'll just spend the evening in the dark.

We'll go to the town healer in the morning.

~ arrowEventDone += introEvents.blind1
~ arrowIntroEventList -= introEvents.blind1
~ reachState(arrowWound, got_blind)
~ reachState(arrowDruid, thinking_about_stork)
~ addEventToList(arrowToAddEventList, arrowEventDone, stork3)
->->

= stork_4 //stork_letter_1
[b] ARROW-[/b] Ace, heel!
It was interessted to assit druid Stork, don't you think?
 
[i] Ace has a serious look [/i]
 
{
    - (arrowWound ? got_blind) && (aceGuide ? ace_not_trained): [b] ARROW -[/b] Please, don't run on the way next time it's dangerous for me.
    - (arrowWound ? got_blind) && (aceGuide ? ace_trained): [b] AAROW-[/b] Thank you, Ace, you guided me well today.
}

~ arrowEventDone += introEvents.stork4
~ arrowIntroEventList -= introEvents.stork4
~ reachState(arrowDruid, first_day_at_stork)

->->

= argument_1 

ACE, HEEL! What was that today?

{
    - arrowWound ? sprain_ankle || arrowWound ? resprain_ankle: Did you think I could handle your shit with my twisted ankle?
    - else:
        Do you think we've got time for your shit?
}

Am I really going to have to climb down {arrowWound ? sprain_ankle || arrowWound ? resprain_ankle || arrowWound ? got_blind: in this state }and apologize to the neighbours?

I'm mad. Talk's over.

~ arrowEventDone += introEvents.argument1
~ arrowIntroEventList -= introEvents.argument1
->->

= argument_2

By the name of the goddess, Ace! What's gotten into you?

You can't just burn Dr. Spicey's paraglider!

I already have a hard enough time making any connections here...

~ arrowEventDone += introEvents.argument2
~ arrowIntroEventList -= introEvents.argument2
->->

=== arrow_events ===

= mess_1

Ugh... Look at the mess in this cabin.

[i]You hear some happy yelps.[/i]

Haha, yes, girl! You certainly help trash the place.

~ arrowEventDone += normalEvents.mess1
~ arrowEventList -= normalEvents.mess1
->->

= meat_1

Here, take some chimera and eat.

[i]The creature whines reluctantly.[/i]

Come on! We caught it today ourselves, dummy. Eat up.

~ arrowEventDone += normalEvents.meat1
~ arrowEventList -= normalEvents.meat1
->->

= sprain_ankle_2

My ankle's doing pretty bad, Ace.

[i]The creature lets out a worried moan.[/i]

{arrow_passion: This serviceable old body|My old worn-out body} is not so solid anymore.

~ arrowEventDone += normalEvents.sprain_ankle2
~ arrowEventList -= normalEvents.sprain_ankle2
->->

= weapon_1

Time to re-sharpen my arrow heads using my favorite iron cap oil to strengthen the metal and they'll be perfect.
Oh, my pots of oil are almost empty.

~ arrowEventDone += normalEvents.weapon1
~ arrowEventList -= normalEvents.weapon1
~ addEventToList(arrowToAddEventList, arrowEventDone, normalEvents.weapon2)
->->

= weapon_2 //weapon_1

Oh no... I'm out of cap shrooms oil.
I'll have to stop in town next week. You'll Comme with me, Ace? 

[i]A enthusiastic yelp answers your question[/i] 

~ arrowEventDone += normalEvents.weapon1
~ arrowEventList -= normalEvents.weapon1
~ addEventToList(arrowToAddEventList, arrowEventDone, normalEvents.weapon3)

->->

= weapon_3//weapon_2, has_seen_stork, add stork(?) 

Once a week, I treat my bow using wood cap oil. Tonight's the night. 
Ah! How I love the strong scent of a newly opened pot!

~ arrowEventDone += normalEvents.weapon1
~ arrowEventList -= normalEvents.weapon1
~ addEventToList(arrowToAddEventList, arrowEventDone, normalEvents.stork2)
->->

= stork_2//thinking_about_stork
I came across the town healer Stork, 
they talked my ear off for an hour about white magic.
and how they'd like to have me for day. But time is limited.
~ arrowEventDone += normalEvents.stork2
~ arrowEventList -= normalEvents.stork2
~ reachState(arrowDruid, has_seen_stork)

 
->->

= stork_3 //blind1
 
Well this is RICH. Druid Stork told me they couldn't fix my eyes. {stork2: What would I want to learn useless white magic with them for?} 

I guess I'm gonna have to live like that, now.

~ arrowEventDone += normalEvents.stork3
~ arrowEventList -= normalEvents.stork3
~ reachState(arrowDruid, has_seen_stork)
 
->->

= stork_5

Stork insisted on having me as their assistant pretending the extra hands could help. It feels good to be {~needed|useful}.

~ arrowEventDone += normalEvents.stork5
~ arrowEventList -= normalEvents.stork5
~ reachState(arrowDruid, has_seen_stork)

->->

= stork_6

Today the clinic was empty. Stork tested my resonance with white magic. 
It seems I could have a way. I'm excited.

~ arrowEventDone += normalEvents.stork6
~ arrowEventList -= normalEvents.stork6
~ reachState(arrowDruid, has_seen_stork)

->->

= stork_7//stork 6

{(arrowWound ? got_blind): 
    - Stork said with the magic freely flowing in me, time and patience, I could recover sight. I'm so happy.
    - else: Beside the clinic I spend my days listening to white magic books reading themselves.
}

~ arrowEventDone += normalEvents.stork7
~ arrowEventList -= normalEvents.stork7
~ reachState(arrowDruid, has_seen_stork)

->->


=== arrow_sleep_events ===

= skip_meal_1

I don't feel like cooking just for myself.

Guess I'll just skip a meal tonight.

~ arrowEventDone += sleepEvents.skip_meal1
~ arrowSleepEventList -= sleepEvents.skip_meal1
->->

= skip_meal_2

Fuck, I hate cooking, I think.

Seeing Ace eat makes me a little hungry, too.

But I guess I'll just skip another meal.

~ arrowEventDone += sleepEvents.skip_meal2
~ arrowSleepEventList -= sleepEvents.skip_meal2
->->

= skip_meal_3

Another meal skipped.

Maybe I'd need someone else to cook for me.

But my last friend fucked off years ago.

~ arrowEventDone += sleepEvents.skip_meal3
~ arrowSleepEventList -= sleepEvents.skip_meal3
->->

= straight_to_bed_1

Well, fuck it. Straight to bed it is. 

I need at least 4 hours of sleep anyways.

~ arrowEventDone += sleepEvents.straight_to_bed1
~ arrowSleepEventList -= sleepEvents.straight_to_bed1
->->

= stork_1  //sprain_ankle && thinking_about_stork
[b] ARROW - [/b] I should go see druid Stork tomorrow about my ankle.
I never have time to visit them otherwise...

~ arrowEventDone += sleepEvents.stork1
~ arrowSleepEventList -= sleepEvents.stork1
->->

=== kazzie_letter ===

My Dear Kazzie,

{
    - arrow_letter == 1: It's been a long time, I had echoes of you recent break up, I know how dear she was to you.
    - else: 
    {shuffle:
        - You're doing great, you can do whatever you put your mind to.
        - You are improving, I can see it, don't give up on anything.
        - It's not always easy I know, but you have it in you to keep going!
        - If you are anxious, breath, drink water, and try to take a nap once in a while under the sun.
        - Your anxieties can hit you like a mega dragon some times, but they are not everything you feel, you have so much in you.
        - There is so many things you must feel right now, it's overwhelming, but you can do it.
        - If you think everything is going the wrong way, remember that nothing is set in stone.
        - You're future can always be brighter and brighter, believe in yourself.
        - I send you all the positives energies the trees can muster, and hope they will guide you well.
    }
}

{kazzie_last_emotags ? nostalgia: <-kazzie_nostalgia}
{kazzie_last_emotags ? passion: <-kazzie_passion}
{kazzie_last_emotags ? care: <- kazzie_care}

Yours Always, 

Delittah

-> DONE

=== kazzie_care ===

-> kazzieEventStack(care) ->

-> DONE

= care_1

You should care more about yourself, go make friends, people appreciate you presence.

~ kazzieEventDone += careEvents.care1
~ kazzieCareEventList -= careEvents.care1

-> DONE

= care_2

Seeing new people and people you already know could make you feel much better, you don't deserve to be alone.

~ kazzieEventDone += careEvents.care2
~ kazzieCareEventList -= careEvents.care2

-> DONE

= care_3

Don't stay alone moping, there are people who could benefit from seeing you, and reciprocally.

~ kazzieEventDone += careEvents.care3
~ kazzieCareEventList -= careEvents.care3

-> DONE

= care_4

Take care of yourself and your dream, they matter, and not only to you, to people around you

~ kazzieEventDone += careEvents.care4
~ kazzieCareEventList -= careEvents.care4

-> DONE

= care_5

You'll find friends whatever you choose to do, people will like you everywhere you'll go.

~ kazzieEventDone += careEvents.care5
~ kazzieCareEventList -= careEvents.care5

-> DONE

= care_6

Being alone with your thought you'll hurt yourself more and more, there is beauty everywhere around you go find it and revel in it.

~ kazzieEventDone += careEvents.care6
~ kazzieCareEventList -= careEvents.care6

-> DONE

= care_7

Your head is your worst enemy right now, so you should see more heads, new heads, don't isolate yourself too much.

~ kazzieEventDone += careEvents.care7
~ kazzieCareEventList -= careEvents.care7

-> DONE

= dragon_riding_1

I have seen dragon riding classes are starting, Luna has other things going on, but friends could be there for you too, follow your dreams but you don't have to be all on your own.

~ kazzieEventDone += careEvents.dragon_riding1
~ kazzieCareEventList -= careEvents.dragon_riding1
~ kazzieEventDone += passionEvents.dragon_riding1
~ kazziePassionEventList -= passionEvents.dragon_riding1
~ kazzieEventDone += nostalgiaEvents.dragon_riding1
~ kazzieNostalgiaEventList -= nostalgiaEvents.dragon_riding1
~ addEventToList(kazziePriorityEventList, kazzieEventDone, normalEvents.care_dragon_riding2)

-> DONE

= magic_singing_1

You could try and learn a new skill and make friends along the way, I think your neighbor knows about magical singing, you might like giving it a go ?

~ kazzieEventDone += careEvents.magic_singing1
~ kazzieCareEventList -= careEvents.magic_singing1
~ kazzieEventDone += passionEvents.magic_singing1
~ kazziePassionEventList -= passionEvents.magic_singing1
~ kazzieEventDone += nostalgiaEvents.magic_singing1
~ kazzieNostalgiaEventList -= nostalgiaEvents.magic_singing1

-> DONE

= pet_dragon_1

You know what makes goof company when your lonely ? Pets ! I know how much you love animals, I bet you could handle one if you put your mind to it !

~ kazzieEventDone += careEvents.pet_dragon1
~ kazzieCareEventList -= careEvents.pet_dragon1
~ kazzieEventDone += passionEvents.pet_dragon1
~ kazziePassionEventList -= passionEvents.pet_dragon1
~ kazzieEventDone += nostalgiaEvents.pet_dragon1
~ kazzieNostalgiaEventList -= nostalgiaEvents.pet_dragon1

-> DONE

= birthday_1

If I remembered correctly your birthday is coming, I bet you have people living around you that would benefit from celebrating with you, and you would too.

~ kazzieEventDone += careEvents.birthday1
~ kazzieCareEventList -= careEvents.birthday1
~ kazzieEventDone += passionEvents.birthday1
~ kazziePassionEventList -= passionEvents.birthday1
~ kazzieEventDone += nostalgiaEvents.birthday1
~ kazzieNostalgiaEventList -= nostalgiaEvents.birthday1

-> DONE

=== kazzie_nostalgia ===

-> kazzieEventStack(nostalgia) ->

-> DONE

= nostalgia_1

Everything you did in your life matters, you can reconnect with it and it's a blessing, don't leave it behind.

~ kazzieEventDone += nostalgiaEvents.nostalgia1
~ kazzieNostalgiaEventList -= nostalgiaEvents.nostalgia1

-> DONE

= nostalgia_2

Some times it feels like the present is a storm, but you can always relax in the calm weather of you past.

~ kazzieEventDone += nostalgiaEvents.nostalgia2
~ kazzieNostalgiaEventList -= nostalgiaEvents.nostalgia2

-> DONE

= nostalgia_3

You can find the keys to your future in morsels and memories, emotions of the past can still be achieved.

~ kazzieEventDone += nostalgiaEvents.nostalgia3
~ kazzieNostalgiaEventList -= nostalgiaEvents.nostalgia3

-> DONE

= nostalgia_4

Sit down, take a look into those moments you used to love back in the day, there is so many things in there.

~ kazzieEventDone += nostalgiaEvents.nostalgia4
~ kazzieNostalgiaEventList -= nostalgiaEvents.nostalgia4

-> DONE

= nostalgia_5

You can learn from the past as much as you can from the present, and your future may depend on both.

~ kazzieEventDone += nostalgiaEvents.nostalgia5
~ kazzieNostalgiaEventList -= nostalgiaEvents.nostalgia5

-> DONE

= nostalgia_6

You are young but your past is immense, you have so much to get from it, don't forget it.

~ kazzieEventDone += nostalgiaEvents.nostalgia6
~ kazzieNostalgiaEventList -= nostalgiaEvents.nostalgia6

-> DONE

= nostalgia_7

Don't forget to take time for yourself and reflect on what you did in your life, the feelings, the choices, the good and the bad.

~ kazzieEventDone += nostalgiaEvents.nostalgia7
~ kazzieNostalgiaEventList -= nostalgiaEvents.nostalgia7

-> DONE

= dragon_riding_1
I have seen dragon riding classes are starting, you had it in you since you were a kid, you don't need anyone to help you attend this training !

~ kazzieEventDone += careEvents.dragon_riding1
~ kazzieCareEventList -= careEvents.dragon_riding1
~ kazzieEventDone += passionEvents.dragon_riding1
~ kazziePassionEventList -= passionEvents.dragon_riding1
~ kazzieEventDone += nostalgiaEvents.dragon_riding1
~ kazzieNostalgiaEventList -= nostalgiaEvents.dragon_riding1
~ addEventToList(kazziePriorityEventList, kazzieEventDone, normalEvents.nostalgia_dragon_riding2)

-> DONE

= magic_singing_1
I bet you could start magical singing, you loved songs as a kid, you could be the one singing the now !

~ kazzieEventDone += careEvents.magic_singing1
~ kazzieCareEventList -= careEvents.magic_singing1
~ kazzieEventDone += passionEvents.magic_singing1
~ kazziePassionEventList -= passionEvents.magic_singing1
~ kazzieEventDone += nostalgiaEvents.magic_singing1
~ kazzieNostalgiaEventList -= nostalgiaEvents.magic_singing1

-> DONE

= pet_dragon_1
You know what could make you feel better, just like when you were a kid, playing with animals, I know how much you love them, I bet it'll make you feel better !

~ kazzieEventDone += careEvents.pet_dragon1
~ kazzieCareEventList -= careEvents.pet_dragon1
~ kazzieEventDone += passionEvents.pet_dragon1
~ kazziePassionEventList -= passionEvents.pet_dragon1
~ kazzieEventDone += nostalgiaEvents.pet_dragon1
~ kazzieNostalgiaEventList -= nostalgiaEvents.pet_dragon1

-> DONE

= birthday_1
Your birthday is right around the corner, you should do things you use to do for your birthdays, reconnect with moments of your childhood you liked.

~ kazzieEventDone += careEvents.birthday1
~ kazzieCareEventList -= careEvents.birthday1
~ kazzieEventDone += passionEvents.birthday1
~ kazziePassionEventList -= passionEvents.birthday1
~ kazzieEventDone += nostalgiaEvents.birthday1
~ kazzieNostalgiaEventList -= nostalgiaEvents.birthday1

-> DONE

=== kazzie_passion ===

-> kazzieEventStack(passion) ->

-> DONE

= passion_1

Luna matters a lot to you, you can still have her around and do stuff with her, she isn't gone.

~ kazzieEventDone += passionEvents.passion1
~ kazziePassionEventList -= passionEvents.passion1

-> DONE

= passion_2

Don't you think you could see Luna a little bit, I know you miss her, and you shouldn't stay too much on your own.

~ kazzieEventDone += passionEvents.passion2
~ kazziePassionEventList -= passionEvents.passion2

-> DONE

= passion_3

I know love can be painful at time, but it's not because you don't date someone that your love towards them don't matter.

~ kazzieEventDone += passionEvents.passion3
~ kazziePassionEventList -= passionEvents.passion3

-> DONE

= passion_4

Your love is strong, it is important, you should passion about it, and passion about yourself, they both work in unison.

~ kazzieEventDone += passionEvents.passion4
~ kazziePassionEventList -= passionEvents.passion4

-> DONE

= passion_5

You should take inspiration from the love you have for Luna, and direct it at yourself, you deserve it, she'd like seeing you happy.

~ kazzieEventDone += passionEvents.passion5
~ kazziePassionEventList -= passionEvents.passion5

-> DONE

= passion_6

You have a lot of love in you, don't let it all go away, hold on to it and become stronger and better because of it.

~ kazzieEventDone += passionEvents.passion6
~ kazziePassionEventList -= passionEvents.passion6

-> DONE

= passion_7

You are passionate and loving, foster those qualities, they'll make you into someone amazing.

~ kazzieEventDone += passionEvents.passion7
~ kazziePassionEventList -= passionEvents.passion7

-> DONE

= dragon_riding_1

I have seen dragon riding classes are starting, if I remember correctly you and Luna had a promise on that topic, I know it's important to you, hold on to that.

~ kazzieEventDone += careEvents.dragon_riding1
~ kazzieCareEventList -= careEvents.dragon_riding1
~ kazzieEventDone += passionEvents.dragon_riding1
~ kazziePassionEventList -= passionEvents.dragon_riding1
~ kazzieEventDone += nostalgiaEvents.dragon_riding1
~ kazzieNostalgiaEventList -= nostalgiaEvents.dragon_riding1
~ addEventToList(kazziePriorityEventList, kazzieEventDone, normalEvents.passion_dragon_riding2)

-> DONE

= magic_singing_1
You should work on something, skills and passion, you know Luna loved magical singing, maybe you could connect with it too ?

~ kazzieEventDone += careEvents.magic_singing1
~ kazzieCareEventList -= careEvents.magic_singing1
~ kazzieEventDone += passionEvents.magic_singing1
~ kazziePassionEventList -= passionEvents.magic_singing1
~ kazzieEventDone += nostalgiaEvents.magic_singing1
~ kazzieNostalgiaEventList -= nostalgiaEvents.magic_singing1

-> DONE

= pet_dragon_1
Having a pet is a lot of time and responsibility, with your current state, maybe you could find another way to see animals without having to take care of them ?

~ kazzieEventDone += careEvents.pet_dragon1
~ kazzieCareEventList -= careEvents.pet_dragon1
~ kazzieEventDone += passionEvents.pet_dragon1
~ kazziePassionEventList -= passionEvents.pet_dragon1
~ kazzieEventDone += nostalgiaEvents.pet_dragon1
~ kazzieNostalgiaEventList -= nostalgiaEvents.pet_dragon1

-> DONE

= birthday_1
I know your birthday is coming soon, you can't stay alone for the big day, Luna attended to all your birthdays since you met, I bet she wants to come.

~ kazzieEventDone += careEvents.birthday1
~ kazzieCareEventList -= careEvents.birthday1
~ kazzieEventDone += passionEvents.birthday1
~ kazziePassionEventList -= passionEvents.birthday1
~ kazzieEventDone += nostalgiaEvents.birthday1
~ kazzieNostalgiaEventList -= nostalgiaEvents.birthday1

-> DONE

=== arrow_letter ===

My {&dear|old friend||fierce} Arrow,

{
    - arrow_letter == 1: Previous letter I sent you was last autumn. Already one year ago, time flies!
    { cycle:
        - I'm trying to reach out to you{~ in this autumn morning.| again.|.}
        - I'm writing this message thinking about you{~.|and Ace.|and your girl.}
    }
    - arrow_letter >= 5:
    { cycle:
        - This time of the year makes me want to share things with you.
        - {~ I hope you have received my last letters.|I hope the letters I sent you did you some good.}
    }
    
}

{arrow_last_emotags ? nostalgia: <-arrow_nostalgia}
{arrow_last_emotags ? passion: <-arrow_passion}
{arrow_last_emotags ? care: <- arrow_care}

{
        - arrow_letter ==7: I'm going to be away a long time. But you can go on with your life without me, now.
        { cycle:
            - I felt {~the urge|it was time|I needed} to {~write|tell|send} you these {~words|thoughts|lines}.
            - Have no doubt {~I'll never be far from you.|I'll keep watching over you.}
            - Let these {~words|thoughts|lines|feelings} resonate within you.
        }
}

Yours Always,

Delittah

~ emotags = ()

-> DONE

=== arrow_care ===

{(arrowWound >= sprain_ankle) && little_bird_1 == 0: -> little_bird_1}
{(kazzieFriend >= seen_at_bday) && kazzie_1 == 0: -> kazzie_1}

{getEmoValue(arrowES, care):
    - 0 : -> care_1
    - 1 : -> care_2
    - 2 : -> care_3
    - 3 : -> care_4
    - 4 : -> care_5
    - 5 : -> care_6
    - 6 : -> care_7
}

= little_bird_1

What did I tell you? The little bird never lies. You should to take it easy on yourself.

-> DONE

= kazzie_1

Did you know your neighbour Kazzie was all over dragons stuff? I'm sure Ace would agree.

-> DONE

= care_1

A little bird told me that you might be pushing the limits of your body to keep hunting.

~ addEmoValue(arrowES, care)

-> DONE

= care_2

Nobody could resent you but yourself if you took a week off. How you're spending your time is up to you.

~ addEmoValue(arrowES, care)

-> DONE

= care_3

It's difficult to listen to yourself if you're always busy. Don't hesitate to take a break.

~ addEmoValue(arrowES, care)

-> DONE

= care_4

Don't be ashame to try something new because you would be bad at it in the beginning. It's the first step to re-discover yourself.

~ addEmoValue(arrowES, care)

-> DONE

= care_5

When you wonder, the answer is often already in you. If you're still hesitating, you can ask Ace's opinion!

~ addEmoValue(arrowES, care)

-> DONE

= care_6

There is not always just one option, one way to live your life.

~ addEmoValue(arrowES, care)

-> DONE

= care_7

You find a certain peace when your body and mind work together to meet your needs.

~ addEmoValue(arrowES, care)

-> DONE

=== arrow_nostalgia ===

{(arrowWound >= sprain_ankle) && hunt_memory_1 == 0: -> hunt_memory_1}

{(arrowDruid >= has_seen_stork) && nostalgia_3 && stork_1 == 0: -> stork_1}

{getEmoValue(arrowES, nostalgia):
    - 0 : -> nostalgia_1
    - 1 : -> nostalgia_2
    - 2 : -> nostalgia_3
    - 3 : -> nostalgia_4
    - 4 : -> nostalgia_5
    - 5 : -> nostalgia_6
    - 6 : -> nostalgia_7
}

= hunt_memory_1
When you went on your first hunt, you had hurt this same ankle on a root out of excitement, before the event even started.

-> DONE

= stork_1
I told you they were still around! It was good to see your school friend Stork, like in the good old days.
Why not visit them more regularly


-> DONE

= nostalgia_1

Maybe you should hang out with people your age, once in a while. It might do you good to feel understood. What about that Mx. Stork?

~ addEmoValue(arrowES, nostalgia)
~ reachState(arrowDruid, thinking_about_stork)

-> DONE

= nostalgia_2

You have to know you're the best hunter.ess I've ever met, Arrow. Your control is precise, your aim is true, you shoot only once.

~ addEmoValue(arrowES, nostalgia)

-> DONE

= nostalgia_3

Okay, about that Stork kid you used to be in school with... I've done my research they're still around Heavenwood, as the town healer.

~ addEmoValue(arrowES, nostalgia)
~ reachState(arrowDruid, thinking_about_stork)

-> DONE

= nostalgia_4

I admire you a lot. You've been hunting since you're 14! Don't you ever get bored?

~ addEmoValue(arrowES, nostalgia)

-> DONE

= nostalgia_5

You've spent your life to master the art of hunting. This is something you can be proud of.

~ addEmoValue(arrowES, nostalgia)

-> DONE

= nostalgia_6

Did you know one of your grandparent was a white mage? But when they met their lovers they started dedicating their life to hunting, the three of them.

~ addEmoValue(arrowES, nostalgia)

-> DONE

= nostalgia_7

By digging your past you can learn more about yourself, analyse every decision you made to arrive when your stand. Don't be harsh on yourself if it was't what you expected.

~ addEmoValue(arrowES, nostalgia)

-> DONE

=== arrow_passion ===

{(arrowWound >= sprain_ankle) && obstacle_1 == 0: -> obstacle_1}
{(arrowWound ? got_blind) && obstacle_2 == 0: -> obstacle_2}

{getEmoValue(arrowES, passion):
    - 0 : -> passion_1
    - 1 : -> passion_2
    - 2 : -> passion_3
    - 3 : -> passion_4
    - 4 : -> passion_5
    - 5 : -> passion_6
    - 6 : -> passion_7
}

= obstacle_1

Every path has its share of struggles and you have to bravely persevere to overcome the obstacles. Don't panic, treated fairly, any injury heals enventually.

-> DONE

= obstacle_2

I'm sorry about what happened, Arrow. Sometimes, when you rush on a path, it can lead to recklessness. But where one path ends, another starts. Don't despair!

-> DONE

= passion_1

I think it's great that you keep doing what you love,
especially if it's for the last times. Enjoy it as much as you can.

~ addEmoValue(arrowES, passion)

-> DONE

= passion_2

If you are lucky enough to have people who take care of you, it is important to give them due respect.

~ addEmoValue(arrowES, passion)

-> DONE

= passion_3

Everybody think they know what's best for you, but in the end it's up to you to forge your destiny.

~ addEmoValue(arrowES, passion)

-> DONE

= passion_4

When you're living with someone it's sometimes easy to get lost in a routine. Be carefull to keep paying attention to your loved ones.

~ addEmoValue(arrowES, passion)

-> DONE

= passion_5

Whatever you might be doing of your time lately, I hope you can find some pleasure into it.

~ addEmoValue(arrowES, passion)

-> DONE

= passion_6

Cherish every moment you spend with Ace, hunting. They will be a part of you forever. You can still feel the wind, ear the wind in the leafs, skynimals squealing above you.

~ addEmoValue(arrowES, passion)

-> DONE

= passion_7

We've talked about paths of life a lot. I'm so proud of what you accomplished and of who you are now. You sure grew up a lot for someone your age.

~ addEmoValue(arrowES, passion)

-> DONE

=== amaziza_letter ===

My {&sweet|good friend|dear|strong} Ama Ziza,

{
    - amaziza_letter == 1: It has been a while since I wrote you for the last time.
    - amaziza_nostalgia == 5: I still have in mind howm much your home used to be lively.
    - amaziza_last_emotags ? care: 
        { cycle:
           - I hope this letter finds you well.
           - Are you doing alright?
        }
    - amaziza_last_emotags ? nostalgia: 
        { cycle:
           - I think about you often.
        }
    - amaziza_last_emotags ? passion: 
        { cycle:
           - I can feel your energy streaming from here.
        }
}

{amaziza_last_emotags ? nostalgia: <-amaziza_nostalgia}
{amaziza_last_emotags ? passion: <-amaziza_passion}
{amaziza_last_emotags ? care: <- amaziza_care}

{
    - amaziza_last_emotags ? care: 
        { cycle:
           - Don't forget to listen to yourself a bit,
           - Take care,
        }
    - amaziza_last_emotags ? nostalgia: 
        { cycle:
           - Miss you,
           - See you soon,
        }
    - amaziza_last_emotags ? passion: 
        { cycle:
           - Love,
           - Your are just the greatest!
        }
}

Yours always, 

Delittah

-> DONE

=== amaziza_care ===

-> amazizaEventStack(care) ->

-> DONE

= singing_1

Do you still enjoy singing you heart out all along the weekend in that little confortable house of yours ? I know how much it makes you fell free. Plus, your have such a clear voice.

~ amazizaEventDone += careEvents.singing1
~ amazizaCareEventList -= careEvents.singing1

-> DONE

= everyday_pleasure_1

I hope you do take some time for yourself, resting a bit and enjoying the small things of life everyday.

~ amazizaEventDone += careEvents.everyday_pleasure1
~ amazizaCareEventList -= careEvents.everyday_pleasure1

-> DONE

= strong_1

I know things are not always easy, but you are stronger than you think. Bringing up three children on your own, and making them the beautiful persons thay are, is an achievement most of us would be incapable of.

~ amazizaEventDone += careEvents.strong1
~ amazizaCareEventList -= careEvents.strong1

-> DONE

= not_perfect_1

You don't have to be perfect tou know. People who like you will not stop just by knowing you better. They are just as imperfect as you are, with both their qualities and their flaws.

~ amazizaEventDone += careEvents.not_perfect1
~ amazizaCareEventList -= careEvents.not_perfect1

-> DONE

= sleep_1

Do you rest better at night since you got that sleeping machine from the town druid of Nightfall? I know they are experts in fixing the problems of sleep apnea.

~ amazizaEventDone += careEvents.sleep1
~ amazizaCareEventList -= careEvents.sleep1

-> DONE

= medication_1

You seem to be gradually less struggling with your bipolar disorder, do you not? It means that Doctor Spicey and yourself are getting closer to the right proportion in your medications. I am sure that you will reach it eventually!

~ amazizaEventDone += careEvents.medication1
~ amazizaCareEventList -= careEvents.medication1

-> DONE

= neighbour_1

What a wonderful neighbourhood you live in! Why not inviting one of your nextbranch neighbours to a four-hand cooking session some day? It would not surprise me they are lovely persons. 

~ amazizaEventDone += careEvents.neighbour1
~ amazizaCareEventList -= careEvents.neighbour1

-> DONE

=== amaziza_nostalgia ===

-> amazizaEventStack(nostalgia) ->

-> DONE

= barjov_1

Do you remember that Barjov had been working with that stagehand in the Great Opera house? Apparently they went on a tour with some bard group. I saw them exhausted but happy.

~amazizaEventDone += nostalgiaEvents.barjov1
~amazizaNostalgiaEventList -= nostalgiaEvents.barjov1

-> DONE

= alix_1

I met Alix recently, he bought a great house in Hightree. I believe they were thinking about setting up a family reunion someday. You should write them, I think they would love it!

~amazizaEventDone += nostalgiaEvents.alix1
~amazizaNostalgiaEventList -= nostalgiaEvents.alix1

-> DONE

= vick_1

Did Vick tell you that they had finally decided to pass the mathemagical exam for teaching at the end of the year? Do you believe that they found her way after all? Maybe you could ask them.

~amazizaEventDone += nostalgiaEvents.vick1
~amazizaNostalgiaEventList -= nostalgiaEvents.vick1

-> DONE

= neighbour_1

I remember the time when you moved here with the children. Old Arrow and young Kazzie already lived in the tree, and you had sworn to get along quickly with them. Life runs so fast... 

~amazizaEventDone += nostalgiaEvents.neighbour1
~amazizaNostalgiaEventList -= nostalgiaEvents.neighbour1

-> DONE

= distant_friend_1

Do you know how your old friend Malon is doing since their last year mountaineering adventure? Maybe there is a way to plan spending a part of the Christmas holidays with them and their daughter Luna?

~amazizaEventDone += nostalgiaEvents.distant_friend1
~amazizaNostalgiaEventList -= nostalgiaEvents.distant_friend1

-> DONE

= bts_1

Did you see that the 'Burning Tin Singers' have revealed the program of their next tour?! In three months they're coming in town! You have to take tickets! Is there anyone you could offer to go with?

~amazizaEventDone += nostalgiaEvents.bts1
~amazizaNostalgiaEventList -= nostalgiaEvents.bts1

-> DONE

= family_reunion_1
// iff the three Vick, Alix and Barjov happened.

Thanks to you, Alix finally settled a date for your family reunion. This is awesome! I will leave you with your family then, no doubt that you will be well surrounded. Enjoy it to the fullest!

~amazizaEventDone += nostalgiaEvents.family_reunion1
~amazizaNostalgiaEventList -= nostalgiaEvents.family_reunion1

-> DONE

=== amaziza_passion ===

-> amazizaEventStack(passion) ->

-> DONE

= alain_1

What was your dance teacher's name already? I remember that competition a few years back, he was on fire! I hope he still got it.

~amazizaEventDone += passionEvents.alain1
~amazizaPassionEventList -= passionEvents.alain1

-> DONE

= jazz_classic_1

Still at the top of your game? I remember how you do rule your jazz and classic dance classes!


~amazizaEventDone += passionEvents.jazz_classic1
~amazizaPassionEventList -= passionEvents.jazz_classic1

-> DONE

= radiant_1

You look radiant this week. Would you not like to go out one of these days? I think you could ask one of your friends, it has been a while since you haven not spent some time with them.

~amazizaEventDone += passionEvents.radiant1
~amazizaPassionEventList -= passionEvents.radiant1

-> DONE

= easy_1

I know how crazy you are about dancing. And you dance like hell, you really are the best! Do not forget to go easy and to mind your hip.

~amazizaEventDone += passionEvents.easy1
~amazizaPassionEventList -= passionEvents.easy1

-> DONE

= show_1

Is your winter dance show ready yet? I heard they had given you the central role, despite your age. All of your younger comrade must be very impresssed!

~amazizaEventDone += passionEvents.show1
~amazizaPassionEventList -= passionEvents.show1
~addEventToList(amazizaPassionEventList, amazizaEventDone, passionEvents.show2)

-> DONE

= show_2
// follows the show_1

Damn, this show was amazing! You are so stunning when you dance. If I could, I would definitively spend the night dancing with you. 

~amazizaEventDone += passionEvents.show2
~amazizaPassionEventList -= passionEvents.show2

-> DONE

= proposition_1
// ne peut pas suivre show_2 ?

I think you are an outstanding person, and spending time with you have to be incredible. If you like it, you should really accept the invitation that charming person made to you the other day.

~amazizaEventDone += passionEvents.proposition1
~amazizaPassionEventList -= passionEvents.proposition1

-> DONE