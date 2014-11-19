#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>


/* 
 *   greenknight.t - Elemental Knight.
* Author: Barry Eichelberger
* Date: 11/06/2014
 *   Basic description and characteristics for one of the
 *   Four Elemental Knights which appear first in the crypts below the tomb in
 *   the Town Cemetery.
*Maintenance Log
 *    11/12/2014 Added a gender value so pronouns are used correctly. BE
 *    11/19/2014 Added code for AttackWith verb to allow basic combat with player. BE
 *    11/19/2014 Added code for AttackWith verb to allow basic combat with player. BE
 */
    
greenKnight: Person 'green knight' 'green knight'  
    "A fierce-looking warrior, outfitted in gleaming green armor of unknown
    material. Although he has been dead for centuries, he has suffered no
    decay. He looks as though he could be sleeping."
    disambigName = 'green knight'
    posture = lying
    location = malachiteCrypt
    properName = 'Garym'
    isHim = true
    accuracy = 10
    strength = 10
    dexterity = 5
    health = 20
    damage = 5
    
    dobjFor (AttackWith)
    {
        verify() { }
        check() 
        {
            // check position of knight. If lying, change positon to standing and display message.
            if (posture == lying)
            { 
                posture = standing;
                "The <<name>> rises from the crypt and prepares to meet your attack with his emerald-tipped spear.<br>";
                moveIntoForTravel(BelowtheTomb);
            }
        }
        action() { }
    }
    
;