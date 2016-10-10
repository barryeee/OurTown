#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/*    Custom Verbs
*     Author: Barry Eichelberger
*     Date:   09/28/2016
    *       Desc: This file contains all the custom verbs created for this game.
*       Maintenance Log
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
       