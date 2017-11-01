#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/* 
 *   The White Room
 *   Author: Isaiah Cox and Eric Holdridge
 *   Date: 9-20-17 
 *   Desc: The room west of the white room holding the white sword
 *      Maintenance Log:
 * 10/4/17 IC added whiteSword
 */

whiteSwordRoom : Room
    name = '<font color="#D3D3D3">White Room</font>'
    desc = "<table><tr><td><img src=\"whiteSword.jpg\" height=\"140\" width=\"200\" align=\"top\"></td><td>A small, gloomy room with a creaky wodden floor.
        You see a white sword lying in the middle of the room. </td></tr></table>"
    east = whiteRoom
;
    
    whiteSword : weapon 'white sword' 'white sword' @whiteRoom
    "A very sharp, white sword. 
    It is heavy but very powerful."
    damage = 75
    weight = 40
;