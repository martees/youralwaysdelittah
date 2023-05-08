=== kazzie_intro_events ===

= lonely_1

It feels so lonely. 

It's been so long since I have been alone like this...

~ kazzieEventDone += introEvents.lonely1
~ kazzieIntroEventList -= introEvents.lonely1
->->

= school_1

It's been days since I even attended school. 

I haven't seen anyone, done anything.

~ kazzieEventDone += introEvents.school1
~ kazzieIntroEventList -= introEvents.school1
->->

= no_motivation_1

I can't read, I can't even bring myself to do magic anymore. 

It's as if I wasn't just missing her but a part of myself...

~ kazzieEventDone += introEvents.no_motivation1
~ kazzieIntroEventList -= introEvents.no_motivation1
->->

= dragon_riding_1

I learned the dragon riding club is opening soon.

... Shouldn't I at leat give it a try?

~ kazzieEventDone += introEvents.dragon_riding1
~ kazzieIntroEventList -= introEvents.dragon_riding1

{getHighestEmo(kazzie):
    - nostalgia:
        ~ addEventToList(kazziePriorityNostalgiaEventList, kazzieEventDone, nostalgiaEvents.dragon_riding1)
    - passion:
        ~ addEventToList(kazziePriorityPassionEventList, kazzieEventDone, passionEvents.dragon_riding1)
    - care:
        ~ addEventToList(kazziePriorityCareEventList, kazzieEventDone, careEvents.dragon_riding1)
}
~ addEventToList(kazzieToAddEventList, kazzieEventDone, kazzie_events.dragon_riding_2)

->->

= luna_call_1
    
Luna called a few days ago.

I told her I was {activityListWithCommas(activities,"not doing much of anything")}.

{LIST_COUNT(activities):
    -1: 
        She seemed a little bit reassured about my situation.
        ~ reachState(lunaCall, has_called_positive)
    -0: 
        She seemed worried about me, almost angry.
        ~ reachState(lunaCall, has_called_negative)
    -else: 
        She seems to be glad to hear I was doing good.
        ~ reachState(lunaCall, has_called_positive)
}

~ kazzieEventDone += introEvents.luna_call1
~ kazzieEventList -= introEvents.luna_call1
~ addEventToList(kazziePriorityEventList, kazzieEventDone, luna_call2)
->->

=== kazzie_events ===

= rough_1

These past few days were... rough, but I didn't expect... That. 

It's like, things made sense, for month, like never before. But now...

~ kazzieEventDone += normalEvents.rough1
~ kazzieEventList -= normalEvents.rough1
->->

= luna_call_2
    
    {getHighestEmo(kazzie):
        - passion: {TURNS_SINCE(-> kazzie_intro_events.luna_call_1) > 3 : When luna last called, she|She} talked excitedly about her new partner. 
        
        They seem so interesting, I got very curious. 
        
        {~I guess I understand why she wanted to be with them.|Maybe she didn't left just because of me.|I hope I'll get to meet them, maybe we could all be friends.}
        
        - care: {TURNS_SINCE(-> kazzie_intro_events.luna_call_1) > 3 : When luna last called, she|She} asked me how I was doing, I said I was taking care of myself, trying to get better.
        
        - nostalgia: {TURNS_SINCE(-> kazzie_intro_events.luna_call_1) > 3 : When luna last called, we|We} talked about our past, before we were dating. We reminisced about our childhood. 
        
        She seemed pensive, maybe a bit melancholic... 
        
        I thought about how those days were nice even if we weren't like together together, I wish we could have that again.
    }
    
    ~ kazzieEventDone += normalEvents.luna_call2
    ~ kazziePriorityEventList -= normalEvents.luna_call2
    ~ addEventToList(kazzieToAddEventList, kazzieEventDone, conflict1)
    ->->

= conflict_1
    {
        - LIST_COUNT(activities) == 0 && getEmoScore(kazzie, passion) < 3:
            What was I thinking, of course she doesn't care. For a week she ghosts me and now she is pissed that I don't have anything to say and that I slack off in my house doing nothing, she's the one that put me in that headspace.

            A childhood friend, then lover, then goner, in a few weeks, and I have nothing to say. 
            
            ~ changeStates(howLunaFeels, angry)
        - LIST_COUNT(activities) > 0 && getEmoScore(kazzie, passion) < 3:
            We talked again with Luna, I feel like we almost had an argument about what I was doing with my life, but she calmed down when we talked about some of the things I did since our break up, but it feels like she has a lot going on in her life, she's on edge.

            ~ changeStates(howLunaFeels, friends)
        - LIST_COUNT(activities) == 0 && getEmoScore(kazzie, passion) >= 3:
            I had the occasion to talk to Luna, she was pissed off at me but we manage to calm down and talk, I saw something was off with her so I tried to understand what she was going through, she didn't explain it clearly but at least it put an end to the argument and now we're cool.
            
            ~ changeStates(howLunaFeels, close_friends)
        - LIST_COUNT(activities) > 0 && getEmoScore(kazzie, passion) >= 3:
            I had the greatest time since my break up talking with Luna, she opened to me about struggling between our break up and her new relationship, life in general, worrying about me, it feels she needed to talk to someone and I am still close enough that she feels safe saying this to me. I am happy I am still important to her...
            ~ changeStates(howLunaFeels, romance)
    }
    
    ~ kazzieEventDone += normalEvents.conflict1
    ~ kazziePriorityEventList -= normalEvents.conflict1
    ->->

= dragon_riding_2

    I didn't find it in me to go to dragon riding class, it looked fun, but it's also exhausting, and I am so tired of everything right now.
    ->->
    
    ~ kazzieEventDone += normalEvents.care_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.care_dragon_riding2
    ~ kazzieEventDone += normalEvents.nostalgia_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.nostalgia_dragon_riding2
    ~ kazzieEventDone += normalEvents.passion_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.passion_dragon_riding2
    ~ kazzieEventDone += normalEvents.dragon_riding2
    ~ kazzieCareEventList -= normalEvents.dragon_riding2
    
= passion_dragon_riding_2
    I really wish we could be going to the dragon riding class with Luna, she promised a long time ago she would accompany me for the first few class days, I'll ask her.
    ->->
    
    ~ kazzieEventDone += normalEvents.care_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.care_dragon_riding2
    ~ kazzieEventDone += normalEvents.nostalgia_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.nostalgia_dragon_riding2
    ~ kazzieEventDone += normalEvents.passion_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.passion_dragon_riding2
    ~ kazzieEventDone += normalEvents.dragon_riding2
    ~ kazzieCareEventList -= normalEvents.dragon_riding2

= nostalgia_dragon_riding_2
    I remember riding Arrow's dragon when I was a kid, that's one of my dearest memories, I can't wait to go to that class, I am not missing out this time !
    ->->
    
    ~ kazzieEventDone += normalEvents.care_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.care_dragon_riding2
    ~ kazzieEventDone += normalEvents.nostalgia_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.nostalgia_dragon_riding2
    ~ kazzieEventDone += normalEvents.passion_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.passion_dragon_riding2
    ~ kazzieEventDone += normalEvents.dragon_riding2
    ~ kazzieCareEventList -= normalEvents.dragon_riding2
    
= care_dragon_riding_2
    I really need this dragon riding course, it's everything I ever dreamed of, it's sad the Luna is not there, but I can't wait for her for this. I might ask some of my friends if they wanna go with me instead.
    ->-> 
    
    ~ kazzieEventDone += normalEvents.care_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.care_dragon_riding2
    ~ kazzieEventDone += normalEvents.nostalgia_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.nostalgia_dragon_riding2
    ~ kazzieEventDone += normalEvents.passion_dragon_riding2
    ~ kazzieCareEventList -= normalEvents.passion_dragon_riding2
    ~ kazzieEventDone += normalEvents.dragon_riding2
    ~ kazzieCareEventList -= normalEvents.dragon_riding2
    
    
    
= fuck_1

How could it come to this? 

I always heard that the first break up hurt the most, but [i]fuck[/i].

~ kazzieEventDone += normalEvents.fuck1
~ kazzieEventList -= normalEvents.fuck1
->->

= childhood_1

We were together since childhood, is that nothing to her ?

I can't believe she'd dump me like that.

~ kazzieEventDone += normalEvents.childhood1
~ kazzieEventList -= normalEvents.childhood1
->->

= thoughts_of_dragon_riding_1

What was that about becoming dragon riders together, huh?

All our promises, thrown to the wind...

~ kazzieEventDone += normalEvents.thoughts_of_dragon_riding1
~ kazzieEventList -= normalEvents.thoughts_of_dragon_riding1
~ addEventToList(kazzieEventList, kazzieEventDone, introEvents.dragon_riding1)
->->

= ace_and_kazzie_1

I miss petting Arrow's Ace.

Come to think of it, I could really use a pet.

But the tent is way too flammable, even for a tiny dragon like that.

~ kazzieEventDone += normalEvents.ace_and_kazzie1
~ kazzieEventList -= normalEvents.ace_and_kazzie1
~ addEventToList(kazzieEventList, kazzieEventDone, introEvents.dragon_riding1)
->->

=== kazzie_sleep_events ===

= everything_stopped_1

It seems like everything just stopped, right then and there when she left. 

Please come back Luna. 

I am so lost without you...

~ kazzieEventDone += sleepEvents.everything_stopped1
~ kazzieSleepEventList -= sleepEvents.everything_stopped1
->->

= thoughts_of_dragon_riding_2

Am I letting my life escape me?

What am I doing... I'd always thought I'd be a dragon tamer by now.

But I can't seem to do much more than moping around...

~ kazzieEventDone += sleepEvents.thoughts_of_dragon_riding2
~ kazzieEventList -= sleepEvents.thoughts_of_dragon_riding2
~ addEventToList(kazzieEventList, kazzieEventDone, introEvents.dragon_riding1)
->->

= crying_to_sleep_1

How am I to go on without her? 

When she's already found someone new, and I am just crying myself to sleep. 

~ kazzieEventDone += sleepEvents.crying_to_sleep1
~ kazzieSleepEventList -= sleepEvents.crying_to_sleep1
->->
