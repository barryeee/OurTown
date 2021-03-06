#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>


/* 
 *   blackknight.t - Elemental Knight.
* Author: Barry Eichelberger
* Date: 11/06/2014
 *   Basic description and characteristics for one of the
 *   Four Elemental Knights which appear first in the crypts below the tomb in
 *   the Town Cemetery.
 *Maintenance Log
 *    11/12/2014 Added a gender value so pronouns are used correctly. BE
 *    11/19/2014 Added code for AttackWith verb to allow basic combat with player. BE
 *    11/24/2014 Added death message property for indiviualized messages. BE
 *    12/15/2014 Changed sightPrsence property on black scroll to visible when knight stands up. BE
 *    10/31/2016 Added ActorState causing knight to follow player after and initial attack. BE
 */


    
blackKnight: Person ' the black knight' 'black knight'  
    "<table><tr><td><img src=\"blackknight.jpg\" height=\"100\" width=\"100\" align=\"top\"></td><td>A fierce-looking warrior, outfitted in gleaming black armor of unknown
    material. Although he has been dead for centuries, he has suffered no
    decay. He looks as though he could be sleeping. </td></tr></table>"
    disambigName = 'black knight'
    posture = lying
    location = graniteCrypt
    properName = 'Borgion'
    isHostile = nil
    isHim = true
    accuracy = 10
    strength = 10
    dexterity = 5
    health = 20
    damage = 10
    points = 0
    deathMsg = "The seemingly invincible knight suddenly turns to stone and crumbles to the ground, leaving a pile of fine sand behind."
    
   
   dobjFor (Appello) 
        { 
            verify () {} 
            check () {} 
            action () 
            { 
                if (posture == lying)
                {
                    "<<properName>>, the <<name>> rises from the crypt and salutes you.<br>";
                    moveIntoForTravel(BelowtheTomb); blackScroll.sightPresence = true;
                    setCurState(blackKnightFriendly); 
                }

         }

    }
    
    dobjFor (AttackWith)
    {
        verify() { }
        check() 
        {
            // check position of knight. If lying, change positon to standing and display message.
            if (posture == lying)
            { 
                posture = standing;
                "<<properName>>, the <<name>> rises from the crypt and prepares to meet your attack with his mighty sword made of black onyx.<br>";
                moveIntoForTravel(BelowtheTomb);
                blackScroll.sightPresence = true;
                setCurState(blackKnightHostile);
                isHostile = true;
            }
        }
        action() 
        {
                      
            "<br>";
           // inherited;
            "<br>";
           
        }
    }
   
   
;


+blackKnightFriendly: ActorState
    isInitState = true

;

+blackKnightHostile  : AccompanyingState 
  specialDesc = "The black knight is standing beside you. " 
  stateDesc = "He's standing beside you. " 
  accompanyTravel(leadActor, conn)  
    { return leadActor == gPlayerChar; } 
   
; 
