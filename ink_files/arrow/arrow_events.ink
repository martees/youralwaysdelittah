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
