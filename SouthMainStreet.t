#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

/*
 *   South Main Street 
 *   Author: Barry Eichelberger 
 *   Date: 11/01/2014 Maintenance Log 
 *   11/10/2014 Made minor cosmetic changes for comform to standards. BE
 *   11/24/2014 Added destName property. BE
 */
SouthMainStreet: OutdoorRoom 
    
    roomName = '<font color="#00ff00">South Main Street</font>'
    destName = '<font color="#00ff00">South Main Street</font>'
    desc = "<hr/>This is south extenstion of Main Street. 
            To the West is Ollie's Outfitters, to the East is the Seven Sorrows Inn and to the South is the South Gate, the southern exit of Our Town."
    
    north = TownSquare
    east = SevenSorrowsInn
    west = Outfitters
    south = SouthGate
;

 