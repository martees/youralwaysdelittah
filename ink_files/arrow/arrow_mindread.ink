=== arrow_mindreads ===

{
    - pickedForALetter == arrow: -> arrow_letter_mindread
    - else: -> arrow_short_mindread
}


= arrow_intro_switch

~ temp x = RANDOM(1, 6)

{
    - (arrowNest ? go_hunt) && (arrowWound ? not_wounded) && (x <= 3): -> arrow_intro_events.sprain_ankle_1 ->
    - (arrowNest ? go_hunt) && (arrowWound ? sprain_ankle) && (arrowWound ? resprain_ankle) && not (arrowWound ? got_blind) && (x <= 3): -> arrow_intro_events.blind_1 ->
    - else: -> arrowEventStack(intro) ->
}

->->

= arrow_letter_mindread

-> arrow_consequences ->

-> arrow_intro_switch ->

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

= arrow_short_mindread

{shuffle:
    - -> arrow_intro_switch ->
    - -> arrowEventStack(normal) ->
    - -> arrowEventStack(sleep) ->
}

-> DONE

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