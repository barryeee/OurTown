#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/* 
 *Grue.t 
 *      Author: Barry Eichelberger 
 *      Date: 11/13/17
 *      Desc: This file contains all definitions for the grue. It will attack the player,if it is in a dark room
 *      after 1 turn. This gives the player time to escape.
 *Mantenance Log
 *	
 *
 */

theGrue: monster
    'grue'
    'grue'
    "The grue is a little monster with a big mouth and an endless appetite. It will eat anything(or anyone) in the same room, as long as the room is dark"
    location = Outfitters
    properName = 'Grue'
    isHim = nil
    accuracy = 100
    strength = 100
    dexterity = 100
    health = 2000
    damage = 500
    points = 1000
    deathMsg = "<<properName>>, the <<name>> crumples to the ground, mortally wounded. With his final breath, he utters these unforgettable words:
        \"Ouch! That hurt!\" <<properName>> disolves into a puddle of green goo and disappears.<p>"
   
   
   afterAction()
    {
        if (senseAmbientMax([sight]) <= 1)
        {
            new Fuse(self, &attack, 1);
            "You might be eaten by a Grue if you don\'t turn on a light. ";
        }
        
    }
    attack()
        {
        if ((senseAmbientMax([sight]) <= 1) && (gPlayerChar.location == theGrue.location))
 //       if ((senseAmbientMax([sight]) <= 1) && !(gPlayerChar.canSee(theGrue)))
                {
                   "The Grue launches itself at your head and immediately eats your face...followed by the rest of your body";
                   isDone = finishGameMsg(ftDeath, finishOptionFullScore);  
                }
        }
;
