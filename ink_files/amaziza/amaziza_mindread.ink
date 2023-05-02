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