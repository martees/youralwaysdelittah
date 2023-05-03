=== amaziza_mindreads ===

{
    - pickedForALetter == ama_ziza: -> amaziza_letter_mindread
    - else: -> amaziza_short_mindread
}

= calculate_moodswings

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

->->

= amaziza_short_mindread

-> calculate_moodswings ->

{shuffle:
    - -> amazizaEventStack(intro) ->
    - -> amazizaEventStack(normal) ->
    - -> amazizaEventStack(sleep) ->
}

-> DONE

= amaziza_letter_mindread

-> calculate_moodswings ->

-> amaziza_consequences ->

+ [READ MORE]
- 

-> amazizaEventStack(intro) ->

+ [READ MORE]
- 

-> amazizaEventStack(normal) ->


+ [READ MORE]
- 

-> amazizaEventStack(sleep) ->

-> DONE