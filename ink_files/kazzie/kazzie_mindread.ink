=== kazzie_mindreads ===

{
    - currentWeek ? week_8: -> kazzie_endings
    - pickedForALetter == kazzie: -> kazzie_letter_mindread
    - else: -> kazzie_short_mindread
}

= kazzie_short_mindread

{shuffle:
    - -> kazzieEventStack(intro) ->
    - -> kazzieEventStack(normal) ->
    - -> kazzieEventStack(sleep) ->
}

-> DONE

= kazzie_letter_mindread

-> kazzie_consequences ->

-> kazzieEventStack(intro) ->

+ [READ MORE]
- 

-> kazzieEventStack(normal) ->

+ [READ MORE]
- 

-> kazzieEventStack(sleep) ->

-> DONE