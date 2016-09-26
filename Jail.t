#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/* 
 *   The Jail 
 *   Author: Barry Eichelberger
 *   Date: 10-05-2013 
 *   Desc: the Jail is the entrance to
 *   the underground maze, beneath the city.
 *      Maintenance Log:
 * 10/07/2014 Changed Description. 
 *      Merged in room description from Jail Cellar written by Grayson Leigh. BE
 * 10/28/2014 Added Stone Steps up to town hall. BE
 * 02/09/2015 Removed acheivement points and addded simple smell. BE
 */

Jail: Room
    name = '<font color="#008800">Jail</font>'
    desc = "<hr/> A small, dank room with an unavoidable musk permeating the air.
        The only light comes from a single, guttering torch. 
        A wall of iron bars separate the northern half of the room from the rest, serving as a cramped cell."

    up = StoneStepsUp
    north = CellDoor
;
+StoneStepsUp: StairwayUp
    'stone steps' 'stone steps'
    "The old granite steps lead up to Town Hall."
    noteTraversal(traveler)  
  {  
        "<P>You climb up the slippery stairs to the Town Hall.</p>" ;
  } 
 
; 

+ CellDoor: LockableWithKey, Door
'Cell Door'
'Cell Door'
"The Cell Door is made of sturdy iron bars. There is a rusty-looking lock which secures the cell."

    keyList = [rustyKey]

    dobjFor(Unlock)
{
    action()
        {
        if (rustyKey.location == me)
        {
        
        inherited;
        }
        else 
        {
            "I think you might need someting with which to unlock the door.";
        }
}
}
;
+ SimpleOdor 'damp/musty smell' 'musty smell'
    "The air has a distinctly damp smell, reminiscent of a place without adequate ventilation.  "
;
