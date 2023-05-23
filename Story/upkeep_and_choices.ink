=== weekly_upkeep ===

~ arrowConditionalEventLoader()
~ amazizaConditionalEventLoader()
~ kazzieConditionalEventLoader()
~ currentWeek++

-> DONE

=== character_choice ===

+ [amaziza] -> picked_ama_ziza
+ [arrow] -> picked_arrow
+ [kazzie] -> picked_kazzie

= picked_ama_ziza

~ pickedForALetter = (ama_ziza)
-> DONE

= picked_arrow

~ pickedForALetter = (arrow)
-> DONE

= picked_kazzie

~ pickedForALetter = (kazzie)
-> DONE


// Ingredient choice

=== ingredient_choice ===

+ [apple] -> apple
+ [leaf] -> leaf
+ [feather] -> feather

= apple

{pickedForALetter:
    - ama_ziza:
        ~ amaziza_last_emotags = (nostalgia, passion)
    - arrow:
        ~ arrow_last_emotags = (nostalgia, passion)
    - kazzie:
        ~ kazzie_last_emotags = (nostalgia, passion)
}

-> DONE

= leaf

{pickedForALetter:
    - ama_ziza:
        ~ amaziza_last_emotags = (nostalgia, care)
    - arrow:
        ~ arrow_last_emotags = (nostalgia, care)
    - kazzie:
        ~ kazzie_last_emotags = (nostalgia, care)
}

-> DONE

= feather

{pickedForALetter:
    - ama_ziza:
    ~ amaziza_last_emotags = (passion, care)
    - arrow:
    ~ arrow_last_emotags = (passion, care)
    - kazzie:
    ~ kazzie_last_emotags = (passion, care)
}

-> DONE