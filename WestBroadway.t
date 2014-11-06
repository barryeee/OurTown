#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

/*
    Maintenance Log 
        11/04/2014      LS      Added the skeletonKey 
        11/05/2014      LS      Fixed spelling errors
*/


WestBroadway: OutdoorRoom 
    roomName = '<font color="#00ff00">West Broadway</font>'
    destName = '<font color="#00ff00">West Broadway</font>'
    desc = "<hr/>A brick-paved street which leads to the Town Hall on the north, Ollie\'s Outfitters on the South, Endora\'s Mansion on the West and the Town Square on the East."

    /*south = OlliesOutfitters*/
    north = TownHall
    west = EndorasMansion
    east = TownSquare
;
 
// The skeleton key, which unlocks Endora's Cellar, mistakenly dropped on West Broadway street
+ skeletonKey: Key 'skeleton key' 'skeleton key' 
    "A key has been dropped on the ground in the haste of its owner\'s departure. The key is constructed of wrought iron. A generic, all purpose, skeleton key. The story told by its appearance is outweighed by the vibe reverberating from the seemingly simple object."
;
