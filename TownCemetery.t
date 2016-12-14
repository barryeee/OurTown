#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

/* The Town Cemetery, to the east of "Cathedral Gate".
Created by Brian Vorwald
Created on September 28, 2013
Maintenance Log--------------
11/13/2013
Added Header Comments
*/

TownCemetery: OutdoorRoom 
	name = '<font color="#00ff00">The Town Cemetery</font>'
	vocabWords = 'cemetery'
	roomDesc  { "<table>
            <tr><td><img src=\"Cemetery.jpg\" width=\"200\" height=\"200\" align=\"top\"></td><td>You peer around and see various tombstones, highlighting memories of years gone by. 
            Many of these poor victims of life are forgotten by the cold steel gate. 
            Some names worn off the gravestones, broken and split marble dismember the rest. 
            To the south, at the edge of the graveyard, you see a tomb. And to the northwest, the towering cathedral sits amongst dead grass, and cracked steps.</td></tr></table>";
        "<br />";       
    } 
    south = Tomb
   
   west = CemeteryGate2
    
;
/*Cemetery Gate, located east of East Broadway
Created by Brian Vorwald
Created on September 23, 2013
Maintenance Log--------------
11/13/2013 added Header Comments
09/25/2014 renamed from Catheral Gate to Cemetery Gate and changed object type to door and merged with TownCemetery. BE
*/
    
+ CemeteryGate2: LockableWithKey, Door ->CemeteryGate 'gate' 'gate' 
    keyList = [ornateKey]
	  
 
 ;