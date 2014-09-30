#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

WestBroadway: OutdoorRoom 
    roomName = '<font color="#00ff00">West Broadway</font>'
    destName = '<font color="#00ff00">West Broadway</font>'
    desc = "<hr/>A brick-paved street which leads to the Town Hall on the north, Ollie\"s Outfitters on the South, Endora\'s Mansion on the West and the Town Square on the East."

    /*south = NorthMainStreet*/
    north = TownHall
    /*west - EndorasMansion*/
    east = TownSquare
;