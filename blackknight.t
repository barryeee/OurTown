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
 */


    
blackKnight: Person 'black knight' 'black knight'  
    "A fierce-looking warrior, outfitted in gleaming black armor of unknown
    material. Although he has been dead for centuries, he has suffered no
    decay. He looks as though he could be sleeping. "
    disambigName = 'black knight'
    posture = lying
    location = graniteCrypt
    properName = 'Borgion'
    isHim = true
    
;