=== arrow_letter ===

My {&dear|old friend||fierce} Arrow,

{
    - arrow_letter == 1: Previous letter I sent you was last autumn. Already one year ago, time flies!
    { cycle:
        - I'm trying to reach out to you{~ in this autumn morning.| again.|.}
        - I'm writing this message thinking about you{~.|and Ace.|and your girl.}
    }
    - arrow_letter >= 5:
    { cycle:
        - This time of the year makes me want to share things with you.
        - {~ I hope you have received my last letters.|I hope the letters I sent you did you some good.}
    }
    
}

{arrow_last_emotags ? nostalgia: <-arrow_nostalgia}
{arrow_last_emotags ? passion: <-arrow_passion}
{arrow_last_emotags ? care: <- arrow_care}

{
        - arrow_letter ==7: I'm going to be away a long time. But you can go on with your life without me, now.
        { cycle:
            - I felt {~the urge|it was time|I needed} to {~write|tell|send} you these {~words|thoughts|lines}.
            - Have no doubt {~I'll never be far from you.|I'll keep watching over you.}
            - Let these {~words|thoughts|lines|feelings} resonate within you.
        }
}

Yours Always,

Delittah

~ emotags = ()

-> DONE

=== arrow_care ===

{(arrowWound >= sprain_ankle) && little_bird_1 == 0: -> little_bird_1}
{(kazzieFriend >= seen_at_bday) && kazzie_1 == 0: -> kazzie_1}

{getEmoValue(arrowES, care):
    - 0 : -> care_1
    - 1 : -> care_2
    - 2 : -> care_3
    - 3 : -> care_4
    - 4 : -> care_5
    - 5 : -> care_6
    - 6 : -> care_7
}

= little_bird_1

What did I tell you? The little bird never lies. You should to take it easy on yourself.

-> DONE

= kazzie_1

Did you know your neighbour Kazzie was all over dragons stuff? I'm sure Ace would agree.

-> DONE

= care_1

A little bird told me that you might be pushing the limits of your body to keep hunting.

~ addEmoValue(arrowES, care)

-> DONE

= care_2

Nobody could resent you but yourself if you took a week off. How you're spending your time is up to you.

~ addEmoValue(arrowES, care)

-> DONE

= care_3

It's difficult to listen to yourself if you're always busy. Don't hesitate to take a break.

~ addEmoValue(arrowES, care)

-> DONE

= care_4

Don't be ashame to try something new because you would be bad at it in the beginning. It's the first step to re-discover yourself.

~ addEmoValue(arrowES, care)

-> DONE

= care_5

When you wonder, the answer is often already in you. If you're still hesitating, you can ask Ace's opinion!

~ addEmoValue(arrowES, care)

-> DONE

= care_6

There is not always just one option, one way to live your life.

~ addEmoValue(arrowES, care)

-> DONE

= care_7

You find a certain peace when your body and mind work together to meet your needs.

~ addEmoValue(arrowES, care)

-> DONE

=== arrow_nostalgia ===

{(arrowWound >= sprain_ankle) && hunt_memory_1 == 0: -> hunt_memory_1}

{(arrowDruid >= has_seen_stork) && nostalgia_3 && stork_1 == 0: -> stork_1}

{getEmoValue(arrowES, nostalgia):
    - 0 : -> nostalgia_1
    - 1 : -> nostalgia_2
    - 2 : -> nostalgia_3
    - 3 : -> nostalgia_4
    - 4 : -> nostalgia_5
    - 5 : -> nostalgia_6
    - 6 : -> nostalgia_7
}

= hunt_memory_1
When you went on your first hunt, you had hurt this same ankle on a root out of excitement, before the event even started.

-> DONE

= stork_1
I told you they were still around! It was good to see your school friend Stork, like in the good old days.
Why not visit them more regularly


-> DONE

= nostalgia_1

Maybe you should hang out with people your age, once in a while. It might do you good to feel understood. What about that Mx. Stork?

~ addEmoValue(arrowES, nostalgia)
~ reachState(arrowDruid, thinking_about_stork)

-> DONE

= nostalgia_2

You have to know you're the best hunter.ess I've ever met, Arrow. Your control is precise, your aim is true, you shoot only once.

~ addEmoValue(arrowES, nostalgia)

-> DONE

= nostalgia_3

Okay, about that Stork kid you used to be in school with... I've done my research they're still around Heavenwood, as the town healer.

~ addEmoValue(arrowES, nostalgia)
~ reachState(arrowDruid, thinking_about_stork)

-> DONE

= nostalgia_4

I admire you a lot. You've been hunting since you're 14! Don't you ever get bored?

~ addEmoValue(arrowES, nostalgia)

-> DONE

= nostalgia_5

You've spent your life to master the art of hunting. This is something you can be proud of.

~ addEmoValue(arrowES, nostalgia)

-> DONE

= nostalgia_6

Did you know one of your grandparent was a white mage? But when they met their lovers they started dedicating their life to hunting, the three of them.

~ addEmoValue(arrowES, nostalgia)

-> DONE

= nostalgia_7

By digging your past you can learn more about yourself, analyse every decision you made to arrive when your stand. Don't be harsh on yourself if it was't what you expected.

~ addEmoValue(arrowES, nostalgia)

-> DONE

=== arrow_passion ===

{(arrowWound >= sprain_ankle) && obstacle_1 == 0: -> obstacle_1}
{(arrowWound ? got_blind) && obstacle_2 == 0: -> obstacle_2}

{getEmoValue(arrowES, passion):
    - 0 : -> passion_1
    - 1 : -> passion_2
    - 2 : -> passion_3
    - 3 : -> passion_4
    - 4 : -> passion_5
    - 5 : -> passion_6
    - 6 : -> passion_7
}

= obstacle_1

Every path has its share of struggles and you have to bravely persevere to overcome the obstacles. Don't panic, treated fairly, any injury heals enventually.

-> DONE

= obstacle_2

I'm sorry about what happened, Arrow. Sometimes, when you rush on a path, it can lead to recklessness. But where one path ends, another starts. Don't despair!

-> DONE

= passion_1

I think it's great that you keep doing what you love,
especially if it's for the last times. Enjoy it as much as you can.

~ addEmoValue(arrowES, passion)

-> DONE

= passion_2

If you are lucky enough to have people who take care of you, it is important to give them due respect.

~ addEmoValue(arrowES, passion)

-> DONE

= passion_3

Everybody think they know what's best for you, but in the end it's up to you to forge your destiny.

~ addEmoValue(arrowES, passion)

-> DONE

= passion_4

When you're living with someone it's sometimes easy to get lost in a routine. Be carefull to keep paying attention to your loved ones.

~ addEmoValue(arrowES, passion)

-> DONE

= passion_5

Whatever you might be doing of your time lately, I hope you can find some pleasure into it.

~ addEmoValue(arrowES, passion)

-> DONE

= passion_6

Cherish every moment you spend with Ace, hunting. They will be a part of you forever. You can still feel the wind, ear the wind in the leafs, skynimals squealing above you.

~ addEmoValue(arrowES, passion)

-> DONE

= passion_7

We've talked about paths of life a lot. I'm so proud of what you accomplished and of who you are now. You sure grew up a lot for someone your age.

~ addEmoValue(arrowES, passion)

-> DONE
