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