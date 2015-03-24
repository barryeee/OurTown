#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

/*
 *   South Main Street 
 *   Author: Barry Eichelberger 
 *   Date: 11/01/2014 Maintenance Log 
 *   11/10/2014 Made minor cosmetic changes for comform to standards. BE
 *   11/24/2014 Added destName property. BE
 *   03/24/2015 BE Added image.
 */
SouthMainStreet: OutdoorRoom 
    
    roomName = '<font color="#00ff00">South Main Street</font>'
    destName = '<font color="#00ff00">South Main Street</font>'
    desc = "<table><tr><td><img src=\"southmainstreet.jpg\" width=\"200\" height=\"150\"></td><td>This is south extenstion of Main Street. 
            To the West is Ollie's Outfitters, 
        to the East is the Inn of 7 Sorrows 
        and to the South is the South Gate, the southern exit of Our Town.</td></tr></table>"
    
    north = TownSquare
   // east = Inn
    west = Outfitters
    south = SouthGate
;

 