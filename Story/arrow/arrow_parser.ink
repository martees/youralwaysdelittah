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