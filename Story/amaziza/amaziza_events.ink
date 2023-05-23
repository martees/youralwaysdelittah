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