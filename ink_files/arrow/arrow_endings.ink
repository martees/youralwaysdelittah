=== arrow_endings ===

-> occupation ->

+ [READ MORE]
-

-> relationships ->

+ [READ MORE]
-

-> health ->

+ [READ MORE]
-

-> DONE 

= occupation

{
    - arrowStopsHunting >= 4 && arrowNest ? stay_home : I've decided to put a stop to hunting. After seventy years, that book finally closes. {(arrowDruid ? work_for_stork): I've decided to help Stork with the clinic.|I'm open to discover anything else.}
    - else: My wish is to keep hunting until eventually my life ends. I left a note at the cabin asking to be buried in the forest, where I spent most of my alive time.
}


->->

= relationships

I'm feeling complete with Ace by my side. She is all I need, my loyal best friend.
Maybe if I had more time, I could befriend other people in the future?

->->

= health

{
    - (arrowWound ? got_blind): Since I've become blind my senses have changed. I'm excited to experiment that. Ace and I will free up some time to go to Tiny Hoard Cave, so as to have her becoming an actual guide dragon.
    - arrowWound ? sprain_ankle || arrowWound ? resprain_ankle: I have planned to take the time to have that sprain recover properly. Because apart from that, I'm in pretty good shape regarding my age!
    - (arrowWound ? not_wounded || ankle_recovered): I'm in great shape! I have in mind to develop a light training routine with Ace. I have seen these dragon yoga courses explained in books I'm interested about.
}

->->