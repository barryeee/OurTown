#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>


/*
 *   The South Exit - southexit.t 
     Author: Andy Winchell 
     Date: 09/20/2016
 *   Maintenance Log:
-- 9/26/2016 connected SouthernGate to SouthExit MR
-- 10/26/2016 Finished Game added
 */
    
SouthExit: OutdoorRoom 
    
        roomName = '<font color="#00ff00">South Exit</font>'
        desc = "<img src=\"southexit.jpg\" align=\"left,\" width=\"200\" height=\"133\">You have managed to escape the town.  
            Your experience here has created countless tales to tell, but will anyone believe them?"
    finishGame (extra) {
        finishGameMsg(nil, extra);
    }
    
    
;

+ SouthernGate2: Door ->SouthernGate 'Southern Gate' 'Southern Gate'
    
;