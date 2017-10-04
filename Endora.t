#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>


/* 
 * Endora.t: Wicked Witch of West Broadway
 * Author: Laurie Starr
 * Date: 12/01/2014
 *   Basic description and characteristics for the Wicked Witch of West Broadway, Endora.
 * Maintenance Log
 *      08/30/17 Add combat stats to keep an attack from causing an error. BE
 *    
*/
    
    
Endora: Hidden, Person 
    'Endora' 
    'Wicked Witch of West Broadway/Endora' @EndorasMansion
   
    "<p>Centuries old, black of heart, putrid of scent and terrifying to behold, Endora has remained in her lair guarding her prisoner as only he knows her secret.</p>"
     isHer = true 
     isKnown = true
    properName = 'Endora'
    uselessToAttackMsg = "<p>Physical confrontation only angers Endora, your efforts are in vain.</p>" 
    accuracy = 100
    strength = 100
    dexterity = 500
    health = 2000
    damage = 500
    points = 10000
   
    deathMsg = "<p>With a shriek of angony and despair,Endora vaporizes into a black cloud.</p>"
;

