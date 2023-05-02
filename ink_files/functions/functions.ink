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
    