#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>


/* 
 *   redknight.t - Elemental Knight.
* Author: Barry Eichelberger
* Date: 11/06/2014
 *   Basic description and characteristics for one of the
 *   Four Elemental Knights which appear first in the crypts below the tomb in
 *   the Town Cemetery.
*Maintenance Log
 *    11/12/2014 Added a gender value so pronouns are used correctly. BE
 *    11/19/2014 Added code for AttackWith verb to allow basic combat with player. BE
 *    11/24/2014 Added death message property for indiviualized messages. BE
 */
    
    
redKnight: Person 'red knight' 'red knight'  
    "A fierce-looking warrior, outfitted in gleaming red armor of unknown
    material. Although he has been dead for centuries, he has suffered no
    decay. He looks as though he could be sleeping."
    disambigName = 'red knight'
    posture = lying
    location = jasperCrypt
    properName = 'Risas'
    isHime = true
    accuracy = 10
    strength = 10
    dexterity = 5
    health = 20
    damage = 5
    points = 10
    deathMsg = "The seemingly invincible knight bursts into a pillar of fire, leaving behind nothing but a pile of ash on the ground."
    dobjFor (AttackWith)
    {
        verify() { }
        check() 
        {
            // check position of knight. If lying, change positon to standing and display message.
            if (posture == lying)
            { 
                posture = standing;
                "<<properName>>, the <<name>>, rises from the crypt and prepares to meet your attack with his maleficent mace covered with ruby spikes.<br>";
                moveIntoForTravel(BelowtheTomb);
            }
        }
        action() { }
    }
    
;