#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

SouthMainStreet: OutdoorRoom 
    
        roomName = 'South Main Street'
        desc = "You are in South Main Street. This is mainly a residential area... Some of these residences are definitely different!"
    
    north = TownSquare
    east = Caveentrance
    west = VacantLot
    
;

VacantLot: OutdoorRoom 
    
        roomName = 'VacantLot'
        vocabWords = 'vacant lot/lot'
        desc = "This is a vacant lot. Nothing here but weeds."
        east = SouthMainStreet
    
;
ForSaleSign: Thing, Readable

       location = VacantLot
       name = 'For Sale Sign'
        vocabWords = 'for sale sign/sign'
        desc = "The sign is a typical one used by realtors since the dawn of time. It is so old and rusty it is hard to tell what color the sign used to be."
        readDesc = "Lot For Sale.</b> See Town Clerk at Town Hall for details."

;

Caveentrance: OutdoorRoom 
    
        roomName = 'Cave entrance'
        desc = "You are standing at the entrance to a cave of unknown depth or length. Use caution when entering."
        west = SouthMainStreet
    
;

