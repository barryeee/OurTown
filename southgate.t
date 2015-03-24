#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>


/*
 *   The South Gate - southgate.t 
     Author: Barry Eichelberger 
     Date: 11/10/2014
 *   Maintenance Log:
 */
    
SouthGate: OutdoorRoom 
    
        roomName = '<font color="#00ff00">South Gate</font>'
        desc = "<table><tr><td><img src=\"southgate.jpg\" width=\"200\" height=\"133\"></td><td>The southern entrance/exit to Our Town. 
            Beyond is just miles and miles of farmland...</td></tr></table>"
    
    north = SouthMainStreet
    south: FakeConnector {"Unfortunately, the South Gate has been locked for years. Some one lost the key and it has never been replaced."}
;
