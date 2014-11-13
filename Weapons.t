#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/* 
 *   Weapons.t 
 *   Author: Barry Eichelberger 
 *   Date:   11/11/2014
 *   Contains the basic definition of all weapons used in this game.
 *   All weapons will be added to this file.
 */

weapon : Thing 'generic weapon' 'generic weapon' 
    "There is nothing special about this weapon"
    attack = 0
    defense = 0
   dobjFor (Examine)
    {
        action()
        {
            inherited;
            "<br>Attack value = <<attack>>";
            "<br>Defense value = <<defense>>"; 
           
        }
    }
;
    
    
cheapSword : weapon 'cheap brass sword' 'brass sword' @BelowtheTomb
    "A very poorly made and inexpensive sword. Good for 3 or 4 swings before it breaks"
    attack = 5
    defense = 3
;
    