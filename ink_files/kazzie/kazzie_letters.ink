=== kazzie_letter ===

My Dear Kazzie,

{
    - arrow_letter == 1: It's been a long time, I had echoes of you recent break up, I know how dear she was to you.
    - else: 
    {shuffle:
        - You're doing great, you can do whatever you put your mind to.
        - You are improving, I can see it, don't give up on anything.
        - It's not always easy I know, but you have it in you to keep going!
        - If you are anxious, breath, drink water, and try to take a nap once in a while under the sun.
        - Your anxieties can hit you like a mega dragon some times, but they are not everything you feel, you have so much in you.
        - There is so many things you must feel right now, it's overwhelming, but you can do it.
        - If you think everything is going the wrong way, remember that nothing is set in stone.
        - You're future can always be brighter and brighter, believe in yourself.
        - I send you all the positives energies the trees can muster, and hope they will guide you well.
    }
}

{kazzie_last_emotags ? nostalgia: <-kazzie_nostalgia}
{kazzie_last_emotags ? passion: <-kazzie_passion}
{kazzie_last_emotags ? care: <- kazzie_care}

Yours Always, 

Delittah

-> DONE

=== kazzie_care ===

-> kazzieEventStack(care) ->

-> DONE

= care_1

You should care more about yourself, go make friends, people appreciate you presence.

~ kazzieEventDone += careEvents.care1
~ kazzieCareEventList -= careEvents.care1

-> DONE

= care_2

Seeing new people and people you already know could make you feel much better, you don't deserve to be alone.

~ kazzieEventDone += careEvents.care2
~ kazzieCareEventList -= careEvents.care2

-> DONE

= care_3

Don't stay alone moping, there are people who could benefit from seeing you, and reciprocally.

~ kazzieEventDone += careEvents.care3
~ kazzieCareEventList -= careEvents.care3

-> DONE

= care_4

Take care of yourself and your dream, they matter, and not only to you, to people around you

~ kazzieEventDone += careEvents.care4
~ kazzieCareEventList -= careEvents.care4

-> DONE

= care_5

You'll find friends whatever you choose to do, people will like you everywhere you'll go.

~ kazzieEventDone += careEvents.care5
~ kazzieCareEventList -= careEvents.care5

-> DONE

= care_6

Being alone with your thought you'll hurt yourself more and more, there is beauty everywhere around you go find it and revel in it.

~ kazzieEventDone += careEvents.care6
~ kazzieCareEventList -= careEvents.care6

-> DONE

= care_7

Your head is your worst enemy right now, so you should see more heads, new heads, don't isolate yourself too much.

~ kazzieEventDone += careEvents.care7
~ kazzieCareEventList -= careEvents.care7

-> DONE

= dragon_riding_1

I have seen dragon riding classes are starting, Luna has other things going on, but friends could be there for you too, follow your dreams but you don't have to be all on your own.

~ kazzieEventDone += careEvents.dragon_riding1
~ kazzieCareEventList -= careEvents.dragon_riding1
~ kazzieEventDone += passionEvents.dragon_riding1
~ kazziePassionEventList -= passionEvents.dragon_riding1
~ kazzieEventDone += nostalgiaEvents.dragon_riding1
~ kazzieNostalgiaEventList -= nostalgiaEvents.dragon_riding1
~ addEventToList(kazziePriorityEventList, kazzieEventDone, normalEvents.care_dragon_riding2)

-> DONE

= magic_singing_1

You could try and learn a new skill and make friends along the way, I think your neighbor knows about magical singing, you might like giving it a go ?

~ kazzieEventDone += careEvents.magic_singing1
~ kazzieCareEventList -= careEvents.magic_singing1
~ kazzieEventDone += passionEvents.magic_singing1
~ kazziePassionEventList -= passionEvents.magic_singing1
~ kazzieEventDone += nostalgiaEvents.magic_singing1
~ kazzieNostalgiaEventList -= nostalgiaEvents.magic_singing1

-> DONE

= pet_dragon_1

You know what makes goof company when your lonely ? Pets ! I know how much you love animals, I bet you could handle one if you put your mind to it !

~ kazzieEventDone += careEvents.pet_dragon1
~ kazzieCareEventList -= careEvents.pet_dragon1
~ kazzieEventDone += passionEvents.pet_dragon1
~ kazziePassionEventList -= passionEvents.pet_dragon1
~ kazzieEventDone += nostalgiaEvents.pet_dragon1
~ kazzieNostalgiaEventList -= nostalgiaEvents.pet_dragon1

-> DONE

= birthday_1

If I remembered correctly your birthday is coming, I bet you have people living around you that would benefit from celebrating with you, and you would too.

~ kazzieEventDone += careEvents.birthday1
~ kazzieCareEventList -= careEvents.birthday1
~ kazzieEventDone += passionEvents.birthday1
~ kazziePassionEventList -= passionEvents.birthday1
~ kazzieEventDone += nostalgiaEvents.birthday1
~ kazzieNostalgiaEventList -= nostalgiaEvents.birthday1

-> DONE

=== kazzie_nostalgia ===

-> kazzieEventStack(nostalgia) ->

-> DONE

= nostalgia_1

Everything you did in your life matters, you can reconnect with it and it's a blessing, don't leave it behind.

~ kazzieEventDone += nostalgiaEvents.nostalgia1
~ kazzieNostalgiaEventList -= nostalgiaEvents.nostalgia1

-> DONE

= nostalgia_2

Some times it feels like the present is a storm, but you can always relax in the calm weather of you past.

~ kazzieEventDone += nostalgiaEvents.nostalgia2
~ kazzieNostalgiaEventList -= nostalgiaEvents.nostalgia2

-> DONE

= nostalgia_3

You can find the keys to your future in morsels and memories, emotions of the past can still be achieved.

~ kazzieEventDone += nostalgiaEvents.nostalgia3
~ kazzieNostalgiaEventList -= nostalgiaEvents.nostalgia3

-> DONE

= nostalgia_4

Sit down, take a look into those moments you used to love back in the day, there is so many things in there.

~ kazzieEventDone += nostalgiaEvents.nostalgia4
~ kazzieNostalgiaEventList -= nostalgiaEvents.nostalgia4

-> DONE

= nostalgia_5

You can learn from the past as much as you can from the present, and your future may depend on both.

~ kazzieEventDone += nostalgiaEvents.nostalgia5
~ kazzieNostalgiaEventList -= nostalgiaEvents.nostalgia5

-> DONE

= nostalgia_6

You are young but your past is immense, you have so much to get from it, don't forget it.

~ kazzieEventDone += nostalgiaEvents.nostalgia6
~ kazzieNostalgiaEventList -= nostalgiaEvents.nostalgia6

-> DONE

= nostalgia_7

Don't forget to take time for yourself and reflect on what you did in your life, the feelings, the choices, the good and the bad.

~ kazzieEventDone += nostalgiaEvents.nostalgia7
~ kazzieNostalgiaEventList -= nostalgiaEvents.nostalgia7

-> DONE

= dragon_riding_1
I have seen dragon riding classes are starting, you had it in you since you were a kid, you don't need anyone to help you attend this training !

~ kazzieEventDone += careEvents.dragon_riding1
~ kazzieCareEventList -= careEvents.dragon_riding1
~ kazzieEventDone += passionEvents.dragon_riding1
~ kazziePassionEventList -= passionEvents.dragon_riding1
~ kazzieEventDone += nostalgiaEvents.dragon_riding1
~ kazzieNostalgiaEventList -= nostalgiaEvents.dragon_riding1
~ addEventToList(kazziePriorityEventList, kazzieEventDone, normalEvents.nostalgia_dragon_riding2)

-> DONE

= magic_singing_1
I bet you could start magical singing, you loved songs as a kid, you could be the one singing the now !

~ kazzieEventDone += careEvents.magic_singing1
~ kazzieCareEventList -= careEvents.magic_singing1
~ kazzieEventDone += passionEvents.magic_singing1
~ kazziePassionEventList -= passionEvents.magic_singing1
~ kazzieEventDone += nostalgiaEvents.magic_singing1
~ kazzieNostalgiaEventList -= nostalgiaEvents.magic_singing1

-> DONE

= pet_dragon_1
You know what could make you feel better, just like when you were a kid, playing with animals, I know how much you love them, I bet it'll make you feel better !

~ kazzieEventDone += careEvents.pet_dragon1
~ kazzieCareEventList -= careEvents.pet_dragon1
~ kazzieEventDone += passionEvents.pet_dragon1
~ kazziePassionEventList -= passionEvents.pet_dragon1
~ kazzieEventDone += nostalgiaEvents.pet_dragon1
~ kazzieNostalgiaEventList -= nostalgiaEvents.pet_dragon1

-> DONE

= birthday_1
Your birthday is right around the corner, you should do things you use to do for your birthdays, reconnect with moments of your childhood you liked.

~ kazzieEventDone += careEvents.birthday1
~ kazzieCareEventList -= careEvents.birthday1
~ kazzieEventDone += passionEvents.birthday1
~ kazziePassionEventList -= passionEvents.birthday1
~ kazzieEventDone += nostalgiaEvents.birthday1
~ kazzieNostalgiaEventList -= nostalgiaEvents.birthday1

-> DONE

=== kazzie_passion ===

-> kazzieEventStack(passion) ->

-> DONE

= passion_1

Luna matters a lot to you, you can still have her around and do stuff with her, she isn't gone.

~ kazzieEventDone += passionEvents.passion1
~ kazziePassionEventList -= passionEvents.passion1

-> DONE

= passion_2

Don't you think you could see Luna a little bit, I know you miss her, and you shouldn't stay too much on your own.

~ kazzieEventDone += passionEvents.passion2
~ kazziePassionEventList -= passionEvents.passion2

-> DONE

= passion_3

I know love can be painful at time, but it's not because you don't date someone that your love towards them don't matter.

~ kazzieEventDone += passionEvents.passion3
~ kazziePassionEventList -= passionEvents.passion3

-> DONE

= passion_4

Your love is strong, it is important, you should passion about it, and passion about yourself, they both work in unison.

~ kazzieEventDone += passionEvents.passion4
~ kazziePassionEventList -= passionEvents.passion4

-> DONE

= passion_5

You should take inspiration from the love you have for Luna, and direct it at yourself, you deserve it, she'd like seeing you happy.

~ kazzieEventDone += passionEvents.passion5
~ kazziePassionEventList -= passionEvents.passion5

-> DONE

= passion_6

You have a lot of love in you, don't let it all go away, hold on to it and become stronger and better because of it.

~ kazzieEventDone += passionEvents.passion6
~ kazziePassionEventList -= passionEvents.passion6

-> DONE

= passion_7

You are passionate and loving, foster those qualities, they'll make you into someone amazing.

~ kazzieEventDone += passionEvents.passion7
~ kazziePassionEventList -= passionEvents.passion7

-> DONE

= dragon_riding_1

I have seen dragon riding classes are starting, if I remember correctly you and Luna had a promise on that topic, I know it's important to you, hold on to that.

~ kazzieEventDone += careEvents.dragon_riding1
~ kazzieCareEventList -= careEvents.dragon_riding1
~ kazzieEventDone += passionEvents.dragon_riding1
~ kazziePassionEventList -= passionEvents.dragon_riding1
~ kazzieEventDone += nostalgiaEvents.dragon_riding1
~ kazzieNostalgiaEventList -= nostalgiaEvents.dragon_riding1
~ addEventToList(kazziePriorityEventList, kazzieEventDone, normalEvents.passion_dragon_riding2)

-> DONE

= magic_singing_1
You should work on something, skills and passion, you know Luna loved magical singing, maybe you could connect with it too ?

~ kazzieEventDone += careEvents.magic_singing1
~ kazzieCareEventList -= careEvents.magic_singing1
~ kazzieEventDone += passionEvents.magic_singing1
~ kazziePassionEventList -= passionEvents.magic_singing1
~ kazzieEventDone += nostalgiaEvents.magic_singing1
~ kazzieNostalgiaEventList -= nostalgiaEvents.magic_singing1

-> DONE

= pet_dragon_1
Having a pet is a lot of time and responsibility, with your current state, maybe you could find another way to see animals without having to take care of them ?

~ kazzieEventDone += careEvents.pet_dragon1
~ kazzieCareEventList -= careEvents.pet_dragon1
~ kazzieEventDone += passionEvents.pet_dragon1
~ kazziePassionEventList -= passionEvents.pet_dragon1
~ kazzieEventDone += nostalgiaEvents.pet_dragon1
~ kazzieNostalgiaEventList -= nostalgiaEvents.pet_dragon1

-> DONE

= birthday_1
I know your birthday is coming soon, you can't stay alone for the big day, Luna attended to all your birthdays since you met, I bet she wants to come.

~ kazzieEventDone += careEvents.birthday1
~ kazzieCareEventList -= careEvents.birthday1
~ kazzieEventDone += passionEvents.birthday1
~ kazziePassionEventList -= passionEvents.birthday1
~ kazzieEventDone += nostalgiaEvents.birthday1
~ kazzieNostalgiaEventList -= nostalgiaEvents.birthday1

-> DONE