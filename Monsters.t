#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/* 
 *Monsters.t 
 *      Author: Barry Eichelberger 
 *      Date: 05/05/2015 
 *      Desc: This files
 *      contains all definitions for anything Monsterish. All monsters should be
 *      contained in this file and should be defined as type monster. Monsters are
 *      non-verbal and should not contain any conversation abilities what so ever.
 *
 *
 */

monster: Person 'monster' 'monster'
    "This is a generic monster with no distinguishing features."
     posture = standing
    location = TownSquare
    properName = 'Generic'
    isHim = nil
    accuracy = 10
    strength = 10
    dexterity = 5
    health = 20
    damage = 5
    points = 10
    deathMsg = "<<properName>>, the <<name>> crumples to the ground, mortally wounded. With his final breath, he uuters these unforgettable words:
        \"When your time comes to die, 
        be not like those whose hearts are filled with fear of death,
        so that when their time comes they weep and pray for a little more time
        to live their lives over again in a different way.
        Sing your death song, and die like a hero going home.\" <<properName>> disolves into a puddle of green goo and disappears.<p>"
    
     dobjFor (AttackWith)
    {
        verify() { }
        check()  { }        
        action() { }
    }
    
    
;

theGrue: monster
    'The Grue|grue'
    'grue'
    