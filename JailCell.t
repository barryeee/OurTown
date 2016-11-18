#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/* 
 *   Jail Cell 
 *   Created by : Barry Eichelberger 
 *   Date Created: 10/14/2014
 *   Maintenance Log:
 *      10/9/2016 Added image to JailCell. MR 
 */


JailCell: Room 
    name = '<font color="#008800">Jail Cell</font>'
    desc = " <hr/><img src=\"Jail_Cell.jpg\" width=\"200\" height=\"100\" align=\"top\">
        <p>The cell is barely large enough to hold two people at a time.
        Ancient, rusty manacles are attached to the side walls at a variety of heights. 
        Occasionally, a rat scampers across the chains and the heavy clanking whispers of the room's darker history.</p>"

    south = CellDoor2
;
+ CellDoor2: Door ->CellDoor 'door''door'  
   
;

