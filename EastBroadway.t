#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/* 
 *   East Broadway 
 *   Author: Barry Eichelberger 
 *   Date:   10/01/2014
 */
EastBroadway: OutdoorRoom 
    roomName = '<font color="#00ff00">East Broadway</font>'
    destName = '<font color="#00ff00">East Broadway</font>'
    desc = "<table><tr><td><img src=eastbroadway.jpg height=\"100\" width=\"200\" align=\"top\"></td><td>A bricked-paved street which leads to the Seven Sorrows Inn on
        the South, the Cemetery Gate, leading to the Town Cemetery on the east and the Town Square on the West.</td></tr><table>"

    west = TownSquare
    east = CemeteryGate
    south = SevenSorrowsInn
;
/*Cemetery Gate, located east of East Broadway
Created by Brian Vorwald
Created on September 23, 2013
Maintenance Log--------------
11/13/2013 added Header Comments
09/25/2014 renamed from Catheral Gate to Cemetery Gate and changed object type
    to door and merged with East Broadway. BE
10/02/2014 made the gate a lockable object and created ornateKey to unlock it. BE
10/07/2014 added a point to the unlock verb for the gate. 
    Points are only awared the first time the gate is unlocked. 
    Changed the description. BE
12/15/2014 Remove points for opening gate. Points no longer used. BE
*/
   
+ CemeteryGate: LockableWithKey, Door  
	'<font color="#00ff00">Cemetery Gate</font>'
        '<font color="#00ff00">Cemetery Gate</font>'
        desc = "A black steel gate hulks before you, creaking in the wind. 
            In pointed steel lettering, you see the words, Our Town Cemetery, jutting from the top of the gate. 
            Beyond the gate, you are able to see the outlines of tombstones, a grim audience forever waiting near the old church. 
            The gate is secured with an ornate lock."
    
    keyList = [ornateKey]
    dobjFor(Open)
    {
             action() 
             { 
               inherited; 
             } 
    }   

 ;