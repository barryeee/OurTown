#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

SouthMainStreet: OutdoorRoom 
    
        roomName = 'South Main Street'
        desc = "This is south extenstion of Main Street. 
            To the West is Ollie's Outfitters, to the East is the Inn of & Sorrows and to the South is the South Gate, the southern exit of Our Town."
    
    north = TownSquare
   // east = Inn
   // west = Outfitters
    south = SouthGate
;

