#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>


/* 
 *   knights.t - Elemental Knights.
 *   Basic description and characteristics for the
 *   Four Elemental Knights which appear first in the crypts below the tomb in
 *   the Town Cemetery.
  11/05/2014 created 4 knights .
 */



blackKnight: Person 'black knight' 'black knight'  
    "A fierce-looking warrior, outfitted in gleaming black armor of unknown
    material. Although he has been dead for centuries, he has suffered no
    decay. He looks as though he could be sleeping."
    disambigName = 'black knight'
    posture = lying
    location = graniteCrypt
    properName = 'Borgion'
    
;

whiteKnight: Person 'white knight' 'white knight'  
    "A fierce-looking warrior, outfitted in gleaming white armor of unknown
    material. Although he has been dead for centuries, he has suffered no
    decay. He looks as though he could be sleeping."
    disambigName = 'white knight'
    posture = lying
    location = marbleCrypt
    
;

greenKnight: Person 'green knight' 'green knight'  
    "A fierce-looking warrior, outfitted in gleaming green armor of unknown
    material. Although he has been dead for centuries, he has suffered no
    decay. He looks as though he could be sleeping."
    disambigName = 'green knight'
    posture = lying
    location = malachiteCrypt
    
;

redKnight: Person 'red knight' 'red knight'  
    "A fierce-looking warrior, outfitted in gleaming red armor of unknown
    material. Although he has been dead for centuries, he has suffered no
    decay. He looks as though he could be sleeping."
    disambigName = 'red knight'
    posture = lying
    location = jasperCrypt
    
;