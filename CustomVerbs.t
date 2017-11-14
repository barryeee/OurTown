#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/*    Custom Verbs
*     Author: Barry Eichelberger
*     Date:   09/28/2016
    *       Desc: This file contains all the custom verbs created for this game.
*       Maintenance Log
*       10/19/2016 Moved the totheAbyss function to this file from OurTown.t BE
*       09/20/2017 Added Stats verb to report player stats on demand. BE        
*/  
    

    //The Ring verb. Surprisingly, there is no such verb contained in the game.
DefineTAction(Ring);
VerbRule(Ring) 'ring' singleDobj : RingAction verbPhrase = 'ring/ringing (what)'
;

//The Apertu Verb. Replaces the open Verb for special objects.
 DefineTAction(Apertu);
    VerbRule(Apertu) 'Apertu' singleDobj : ApertuAction verbPhrase = 'apertu/apertuing (what)'
    ;
//modify Thing
  
/* The Appello Verb. Used to awaken the knights in a friendly fashion*/  
DefineTAction(Appello);
    VerbRule(Appello)'appello' singleDobj : AppelloAction verbPhrase = 'appello/apelloing (whom)'
    ;
/* The Stats Verb. Used to report the players's stats*/  

 DefineIAction(Stats)
     execAction() { mainReport('Health = <<me.health>> <br>' );
                    mainReport('Strength = <<me.strength>><br>' ); 
                    mainReport('Accuracy = <<me.accuracy>><br>' ); 
                    mainReport('Dexterity = <<me.dexterity>><br>' ); 
                    mainReport('Damage = <<me.damage>><br>' ); 
}
;
    VerbRule(Stats)
     'stats' | 'stat' | 'health'
     : StatsAction
     verbPhrase = 'stats/statsing'
   ;

;
/* totheAbyss - a function which allows the player to be relocated to the Abyss, where he/she dies immediately*/
function totheAbyss ( )
{
    me.moveIntoForTravel(theAbyss);
    say (theAbyss.roomName); 
    say (theAbyss.desc);
    finishGameMsg(ftDeath, finishOptionFullScore);
}

