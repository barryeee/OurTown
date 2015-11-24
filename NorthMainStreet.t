#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

/*
* NorthMainStreet.t
    * Author: Barry Eichelberger
    * Date: 10/10/2013
    * Maintenance Log:
    * 11/10/2014 changed north to link to North Bridge. BE
    * 03/05/2015 BE added image file.
*/
    
NorthMainStreet: OutdoorRoom 
    name = '<font color=\"#00ff00\">North Main Street</font>'
    desc = "<table>
        <tr><td><img src=\"NorthMainStreet.jpg\" height=\"150\" width=\"200\" align=\"left\"></td><td>A well-paved street on the north end of Main Street. 
        To the north is the East Bridge and the open road! 
        To the West is Town Hall and to the east is the High Cathedral. South leads to Town Square.</td></tr></table>"
     
    north = NorthBridge
    east = HighCathedral
    south = TownSquare
    west = TownHall
;
