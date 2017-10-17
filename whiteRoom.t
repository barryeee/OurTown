#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/* 
 *   The White Room
 *   Author: Isaiah Cox and Eric Holdridge
 *   Date: 9-20-17 
 *   Desc: The white room is the quest for the white knight
 *      Maintenance Log:
 * --10/4/17 IC EH added whiteRoom, whiteKey and whiteDoor
 */

whiteRoom : Room
    name = '<font color="#D3D3D3">White Room</font>'
    desc = "<table><tr><td><img src=\"whiteRoom.jpg\" height=\"140\" width=\"200\" align=\"top\"></td><td>A small, gloomy room with a creaky wooden floor.
        The only light comes from a flickering light hanging in the middle of the room.
        The white wallpaper looks worn.
        You see a door straight ahead</td></tr></table>"

    east = whiteDoor2
    west = whiteSwordRoom //room with sword west of the white room
;
    /*key to unlock the whiteDoor*/
    
+    whiteKey: Key 'white key' 'white key'
    desc = "<table><tr><td><img src=\"whiteKey.jpg\" width=\"100\" height=\"66\"></td><td>The key is made of brass, old and tarnished.
        This key is used to unlocked the door straight in front of you.</td></tr></table>"
    bulk = 1
;
    /* The white Door is what is blocking you from finishing the quest. */
+    whiteSwordDoor: LockableWithKey, Door
        'White Door/door'
        'White Door'
        "<p>The door is worn and the paint is chipping</p>"
    keyList = [whiteKey]
;
+ whiteDoor2: Door ->whiteDoor  'door''door' 
;  
