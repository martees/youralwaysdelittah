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