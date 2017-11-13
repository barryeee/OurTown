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
 *   12/15/2014 Remove points for defeating opponents. Points no longer used. BE
 *   11/13/2017 Created Onyx Sword. BE
 */

weapon : Thing 'generic weapon' 'generic weapon' 
    "There is nothing special about this weapon"
    damage = 1
    weight = 1
   
   // achievement = perInstance(new SimpleAchievement('Defeating the  ' + gDobj.name)) 
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
         
             if (rand(gActor.accuracy) > rand(gDobj.dexterity))
            { 
                    "A direct hit!<br>"; 
                    //gDobj.health = gDobj.health - rand(me.strength + damage);
                 gDobj.health = gDobj.health - rand(gDobj.strength + damage);
                //check defender's health to see if he/she is still alive - health > 0
                if (gDobj.health <= 0)
                {
                    "<<gDobj.deathMsg>>";
                    if (gDobj == gPlayerChar)
                    {
                         finishGameMsg(ftDeath, finishOptionFullScore);
                    }
                    else
                    gDobj.moveIntoForTravel(theAbyss);
                    exit;
                }
             }
            else
            {
                "Missed!<br>";
            }
            //Defender counterattacks
            "The <<gDobj.name>> ";
            if (rand(gDobj.accuracy) > rand(gActor.dexterity)) 
            {
                " <<gDobj.name>> scores a hit against <<gActor.name>>";
                gActor.health = gActor.health - rand(gDobj.strength + gIobj.damage);
            }
            else { "misses.";}
            //Check player health to see if he/she is still alive
            if (gActor.health <= 0)
            {
               // "<br><<gActor.name>> has lost the battle!<br/>";
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
//  @Outfitters
    @BelowtheTomb
    " A beautifully hand-crafted weapon, with diamonds inset all long the handle. 
    It is long enough to double as a short sword in some instances. It looks like a very dangerous weapon."
    damage = 500
    weight = 3
;
    
onyxSword: weapon 'black onyx sword' 'onyx sword'
    @blackKnight
    damage = 100
    weight = 5
;