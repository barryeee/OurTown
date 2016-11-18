#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>


/*
 *   The South Gate - southgate.t 
     Author: Barry Eichelberger 
     Date: 11/10/2014
 *   Maintenance Log:
--  9/20/2016 Created SouthernGate and merged with SouthGate. MR
--  9/20/2016 Set SouthernGate to unlock with goldKey. MR
--  9/26/2016 Connected Southern Gate to SouthExit MR

 */
    
SouthGate: OutdoorRoom 
    
        roomName = '<font color="#00ff00">South Gate</font>'
        desc = "<img src=\"southgate.jpg\" align=\"top\" width=\"200\" height=\"133\">The southern entrance/exit to Our Town. 
            There is a beautiful golden gate here."
    
    north = SouthMainStreet
    south = SouthernGate 
   
;

+ SouthernGate: LockableWithKey, Door
    
'Southern Gate'
'Southern Gate'
    
        desc =  "<img src=\"southern_gate.jpg\" align=\"left\" width=\"200\" height=\"133\"><p>The southern gate is made of well crafted gold colored iron. There is also a gold-plated lock. It appears to have 
            the letter 'S' engraved on it. Unfortunately, the Southern Gate has been locked for years. Some one lost the key and it has 
            never been found, at least not yet!</p>"
    north = SouthGate
    south = SouthExit
    
    keyList = [goldKey]

    dobjFor(Unlock)
{
    action()
        {
        if (goldKey.location == me)
        {
        
        inherited;
        }
        else 
        {
            "I think you might need to find someting to unlock the gate.";
        }
}
}
;