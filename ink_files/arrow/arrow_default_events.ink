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

{&-> default_event_1 ->|-> default_event_2 ->}

->->

= default_event_1


 {shuffle:
        -  Ace, girl! We have to {~ do a stocktake of our loot.|preserve the meat with salt.|ration our food for the coming weeks.|spruce the cabin up.}
        
        [i] {~The creature|The dragon|Ace}{~sighs in laziness.|makes a encouraging grunt.|reluctantly approaches.} [/i]
        
        Come on, {~ the work needs to be done.|our work is not over yet.|let's get the job done.}
 }

->->

= default_event_2

 {
        - (arrowWound ? got_blind): {~In this season|In autumn|At this time of year} I just {~used to love|usd to enjoy|used to spend quality time} watching {the light through the {~yellow|red|orange} leaves|out for the crops when the {~rodants|pests|ruminants} come too close,|the treeshrooms {~grow|glow|sing}} {~by the window|while drinking a hot brew|during Ace's nap}.
        -  else: {~In this season|In autumn|At this time of year} I just {~love|enjoy|spend quality time} watching {the light through the {~yellow|red|orange} leaves|out for the crops when the {~rodants|pests|ruminants} come too close,|the treeshrooms {~grow|glow|sing}} {~by the window|while drinking a hot brew|during Ace's nap}.
 }
 

->->

=== arrow_default_sleep ===

 {shuffle:
        - {~The morning storks are singing|It's already dawn|I hear a neighbour crying|My bones are feeling weak from the day} and I didn't get any sleep yet.
        {~I'll just treat my arrows with iron cap oil|I'll just wash my teeth with the morning dew|I'll just read a few pages of my book about skynimals} then I'll catch some sleep.
 }

->->