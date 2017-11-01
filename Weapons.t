#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/* 
 *   Weapons.t 
 *   Author: Barry Eichelberger 
 *   Date:   11/11/2014
 *   Contains the basic definition of all weapons used in this game.
 *   All weapons will be added to this file.
 *   Maintenance Log
 *   11/19/2014 Added code for AttackWith verb to allow basic combat with player. BE
 *   11/19/2014 Created Diamond Dagger. BE 
 *   11/24/2014 Changed method for awarding points using weapons. BE
 *   12/15/2014 Remove points for ddefeating opponents. Points no longer used. BE
 */

weapon : Thing 'generic weapon' 'generic weapon' 
    "There is nothing special about this weapon"
    damage = 1
    weight = 1
   
    achievement = perInstance(new SimpleAchievement('Defeating the  ' + gDobj.name)) 
    // modify examine verb to display weapon's damage and weight properties.
   dobjFor (Examine)
    {
        action()
        {
            inherited;
            "<br>Damage = <<damage>>";
            "<br>Weight = <<weight>>"; 
           
        }
    }
   
    iobjFor (AttackWith)
    {
        verify() { }
        check() { }
        action()
        {
           
           //attack defender with weapon of choice
            if (rand(me.accuracy) > rand(gDobj.dexterity)) 
            { 
                    "You score a direct hit!<br>"; 
                    gDobj.health = gDobj.health - rand(me.strength + damage);
                //check defender's health to see if he/she is still alive - health > 0
                if (gDobj.health <= 0)
                {
                    "<<gDobj.deathMsg>>";
                    "<br>You have defeated your valiant opponent!";
                    gDobj.moveIntoForTravel(theAbyss);
                    exit;
                }
             }
            else
            {
                "You missed!<br>";
            }
            //Defender counterattacks
            "The <<gDobj.name>> ";
            if (rand(gDobj.accuracy) > rand(me.dexterity)) 
            {
                " scores a hit against your pathetic body!";
                me.health = me.health - rand(gDobj.strength + gDobj.damage);
            }
            else { "misses.";}
            //Check player health to see if he/she is still alive
            if (me.health <= 0)
            {
                "<br/>Alas, your opponent has struck a fatal blow.<br/>Your body falls limply to the ground.<br/>";
                finishGameMsg(ftDeath, finishOptionFullScore);
            }
         }
        
     }
   
    
;                        
                
    
cheapSword : weapon 'cheap brass sword' 'brass sword' @BelowtheTomb
    "A very poorly made and inexpensive sword. 
    It is better than no weapon at all, but it does not look like it will do much damage in a fight."
    damage = 2
    weight = 10
;

diamondDagger : weapon 'dimaond-studded dagger' 'diamond dagger'
    @Outfitters
    " A beautifully hand-crafted weapon, with diamonds inset all long the handle. 
    It is long enough to double as a short sword in some instances. It looks like a very dangerous weapon."
    damage = 50
    weight = 3
;
    