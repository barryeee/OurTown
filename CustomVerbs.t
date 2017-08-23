#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/*    Custom Verbs
*     Author: Barry Eichelberger
*     Date:   09/28/2016
    *       Desc: This file contains all the custom verbs created for this game.
*       Maintenance Log
*       10/19/2016 Moved to totheAbyss function to this file from OurTown.t BE
*/  
    

    //The Ring verb. Surprisingly, there is no such verb contained in the game.
DefineTAction(Ring);
VerbRule(Ring) 'ring' singleDobj : RingAction verbPhrase = 'ring/ringing (what)'
;

//The Apertu Verb. Replaces the open Verb for special objects.
 DefineTAction(Apertu);
    VerbRule(Apertu) 'Apertu' singleDobj : ApertuAction verbPhrase = 'apertu (what)'
    ;
modify Thing
    dobjFor (Apertu)
    {
        check()
        {
            if(isOpen)
            {
                "It's already open, silly!";
                exit;
            }
        }
    }
;
  
/* totheAbyss - a function which allows the player to be relocated to the Abyss, where he/she dies immediately*/
function totheAbyss ( )
{
    me.moveIntoForTravel(theAbyss);
    say (theAbyss.roomName); 
    say (theAbyss.desc);
    finishGameMsg(ftDeath, finishOptionFullScore);
}
