=== amaziza_letter ===

My {&sweet|good friend|dear|strong} Ama Ziza,

{
    - amaziza_letter == 1: It has been a while since I wrote you for the last time.
    - amaziza_nostalgia == 5: I still have in mind howm much your home used to be lively.
    - amaziza_last_emotags ? care: 
        { cycle:
           - I hope this letter finds you well.
           - Are you doing alright?
        }
    - amaziza_last_emotags ? nostalgia: 
        { cycle:
           - I think about you often.
        }
    - amaziza_last_emotags ? passion: 
        { cycle:
           - I can feel your energy streaming from here.
        }
}

{amaziza_last_emotags ? nostalgia: <-amaziza_nostalgia}
{amaziza_last_emotags ? passion: <-amaziza_passion}
{amaziza_last_emotags ? care: <- amaziza_care}

{
    - amaziza_last_emotags ? care: 
        { cycle:
           - Don't forget to listen to yourself a bit,
           - Take care,
        }
    - amaziza_last_emotags ? nostalgia: 
        { cycle:
           - Miss you,
           - See you soon,
        }
    - amaziza_last_emotags ? passion: 
        { cycle:
           - Love,
           - Your are just the greatest!
        }
}

Yours always, 

Delittah

-> DONE

=== amaziza_care ===

-> amazizaEventStack(care) ->

-> DONE

= singing_1

Do you still enjoy singing you heart out all along the weekend in that little confortable house of yours ? I know how much it makes you fell free. Plus, your have such a clear voice.

~ amazizaEventDone += careEvents.singing1
~ amazizaCareEventList -= careEvents.singing1

-> DONE

= everyday_pleasure_1

I hope you do take some time for yourself, resting a bit and enjoying the small things of life everyday.

~ amazizaEventDone += careEvents.everyday_pleasure1
~ amazizaCareEventList -= careEvents.everyday_pleasure1

-> DONE

= strong_1

I know things are not always easy, but you are stronger than you think. Bringing up three children on your own, and making them the beautiful persons thay are, is an achievement most of us would be incapable of.

~ amazizaEventDone += careEvents.strong1
~ amazizaCareEventList -= careEvents.strong1

-> DONE

= not_perfect_1

You don't have to be perfect tou know. People who like you will not stop just by knowing you better. They are just as imperfect as you are, with both their qualities and their flaws.

~ amazizaEventDone += careEvents.not_perfect1
~ amazizaCareEventList -= careEvents.not_perfect1

-> DONE

= sleep_1

Do you rest better at night since you got that sleeping machine from the town druid of Nightfall? I know they are experts in fixing the problems of sleep apnea.

~ amazizaEventDone += careEvents.sleep1
~ amazizaCareEventList -= careEvents.sleep1

-> DONE

= medication_1

You seem to be gradually less struggling with your bipolar disorder, do you not? It means that Doctor Spicey and yourself are getting closer to the right proportion in your medications. I am sure that you will reach it eventually!

~ amazizaEventDone += careEvents.medication1
~ amazizaCareEventList -= careEvents.medication1

-> DONE

= neighbour_1

What a wonderful neighbourhood you live in! Why not inviting one of your nextbranch neighbours to a four-hand cooking session some day? It would not surprise me they are lovely persons. 

~ amazizaEventDone += careEvents.neighbour1
~ amazizaCareEventList -= careEvents.neighbour1

-> DONE

=== amaziza_nostalgia ===

-> amazizaEventStack(nostalgia) ->

-> DONE

= barjov_1

Do you remember that Barjov had been working with that stagehand in the Great Opera house? Apparently they went on a tour with some bard group. I saw them exhausted but happy.

~amazizaEventDone += nostalgiaEvents.barjov1
~amazizaNostalgiaEventList -= nostalgiaEvents.barjov1

-> DONE

= alix_1

I met Alix recently, he bought a great house in Hightree. I believe they were thinking about setting up a family reunion someday. You should write them, I think they would love it!

~amazizaEventDone += nostalgiaEvents.alix1
~amazizaNostalgiaEventList -= nostalgiaEvents.alix1

-> DONE

= vick_1

Did Vick tell you that they had finally decided to pass the mathemagical exam for teaching at the end of the year? Do you believe that they found her way after all? Maybe you could ask them.

~amazizaEventDone += nostalgiaEvents.vick1
~amazizaNostalgiaEventList -= nostalgiaEvents.vick1

-> DONE

= neighbour_1

I remember the time when you moved here with the children. Old Arrow and young Kazzie already lived in the tree, and you had sworn to get along quickly with them. Life runs so fast... 

~amazizaEventDone += nostalgiaEvents.neighbour1
~amazizaNostalgiaEventList -= nostalgiaEvents.neighbour1

-> DONE

= distant_friend_1

Do you know how your old friend Malon is doing since their last year mountaineering adventure? Maybe there is a way to plan spending a part of the Christmas holidays with them and their daughter Luna?

~amazizaEventDone += nostalgiaEvents.distant_friend1
~amazizaNostalgiaEventList -= nostalgiaEvents.distant_friend1

-> DONE

= bts_1

Did you see that the 'Burning Tin Singers' have revealed the program of their next tour?! In three months they're coming in town! You have to take tickets! Is there anyone you could offer to go with?

~amazizaEventDone += nostalgiaEvents.bts1
~amazizaNostalgiaEventList -= nostalgiaEvents.bts1

-> DONE

= family_reunion_1
// iff the three Vick, Alix and Barjov happened.

Thanks to you, Alix finally settled a date for your family reunion. This is awesome! I will leave you with your family then, no doubt that you will be well surrounded. Enjoy it to the fullest!

~amazizaEventDone += nostalgiaEvents.family_reunion1
~amazizaNostalgiaEventList -= nostalgiaEvents.family_reunion1

-> DONE

=== amaziza_passion ===

-> amazizaEventStack(passion) ->

-> DONE

= alain_1

What was your dance teacher's name already? I remember that competition a few years back, he was on fire! I hope he still got it.

~amazizaEventDone += passionEvents.alain1
~amazizaPassionEventList -= passionEvents.alain1

-> DONE

= jazz_classic_1

Still at the top of your game? I remember how you do rule your jazz and classic dance classes!


~amazizaEventDone += passionEvents.jazz_classic1
~amazizaPassionEventList -= passionEvents.jazz_classic1

-> DONE

= radiant_1

You look radiant this week. Would you not like to go out one of these days? I think you could ask one of your friends, it has been a while since you haven not spent some time with them.

~amazizaEventDone += passionEvents.radiant1
~amazizaPassionEventList -= passionEvents.radiant1

-> DONE

= easy_1

I know how crazy you are about dancing. And you dance like hell, you really are the best! Do not forget to go easy and to mind your hip.

~amazizaEventDone += passionEvents.easy1
~amazizaPassionEventList -= passionEvents.easy1

-> DONE

= show_1

Is your winter dance show ready yet? I heard they had given you the central role, despite your age. All of your younger comrade must be very impresssed!

~amazizaEventDone += passionEvents.show1
~amazizaPassionEventList -= passionEvents.show1
~addEventToList(amazizaPassionEventList, amazizaEventDone, passionEvents.show2)

-> DONE

= show_2
// follows the show_1

Damn, this show was amazing! You are so stunning when you dance. If I could, I would definitively spend the night dancing with you. 

~amazizaEventDone += passionEvents.show2
~amazizaPassionEventList -= passionEvents.show2

-> DONE

= proposition_1
// ne peut pas suivre show_2 ?

I think you are an outstanding person, and spending time with you have to be incredible. If you like it, you should really accept the invitation that charming person made to you the other day.

~amazizaEventDone += passionEvents.proposition1
~amazizaPassionEventList -= passionEvents.proposition1

-> DONE