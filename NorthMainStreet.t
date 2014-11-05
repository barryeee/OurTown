#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

NorthMainStreet: OutdoorRoom 
    name = '<font color="#00ff00">North Main Street</font>'
    desc = "<hr/>A well-paved street on the north end of Main Street. To the north is the East Bridge and the open road! To the West is Town Hall and to the east is the High Cathedral. South leads to Town Square."
            
    north = EastBridge
    east = HighCathedral
    south = TownSquare
    west = TownHall
;
