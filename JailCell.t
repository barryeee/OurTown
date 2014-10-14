#charset "us-ascii"

#include <adv3.h>
#include <en_us.h>



JailCell: Room 
    name = '<font color="#008800">Jail Cell</font>'
    desc = " <hr/>
        The cell is barely large enough to hold two people at a time.
        Ancient, rusty manacles are attached to the side walls at a variety of heights. 
        Occasionally, a rat scampers across the chains and the heavy clanking whispers of the room's darker history."

    south = CellDoor2
;
+ CellDoor2: Door ->CellDoor 'door''door'  
   
;

