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
    damage = 1
    weight = 1
    // modify examine verb to display weapon's damage and weight properties.
   dobjFor (Examine)
    {
        action()
        {
            inherited();
            "<br>Damage = <<damage>>";
            "<br>Weight = <<weight>>"; 
           
        }
    }
;
    
    
cheapSword : weapon 'cheap brass sword' 'brass sword' @BelowtheTomb
    "A very poorly made and inexpensive sword. 
    It is better than no weapon at all, but it does not look like it will do much damage in a fight."
    damage = 2
    weight = 10
;
    