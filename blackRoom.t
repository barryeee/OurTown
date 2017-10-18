#include <adv3.h>
#include <en_us.h>

/* 
* blackknight.t - Elemental Knight.
* Author: Steve Ross
* Date: 09/20/2017
* The Black Knights quest room.
*Maintenance Log
* 09/20/2017 started to build the blackRoom. SR
* 09/25/2017 added human statue within the blackRoom. SR
* 09/25/2017 added Endora's picture to the blackRoom. SR
* 10/2/2017 editied the floor in the blackRoom. SR
*/

blackRoom: Room
roomName = '<font color="#000000">BlackRoom</font>'
destName = '<font color="#000000">BlackRoom</font>'
desc = "<img src=\"scriptorium.jpg\" width=\"200\" height=\"150\"> A Room." // change

east = eastWall
west = blackDoor2
north = northWall
south = southWall

roomParts = static inherited -defaultEastWall +eastWall -defaultWestWall +westWall
-defaultNorthWall +northWall -defaultSouthWall + southWall -defaultFloor +defaultFloor
;

+ blackDoor2: Door ->blackDoor 'door''door';
blackEastWall: defaultEastWall
desc = "This wall is covered in light moss. "
;

blackWestWall: defaultWestWall
desc = " Has the door you came in."
;
blackNorthWall: defaultNorthWall
desc = "The wall has Endoras picture. This wall has a human statue looks like it shouldn't be here. "
;
blackSouthWall: defaultSouthWall
desc = "This wall looks like it held weapons at one time. "
;
blackFloor: defaultFloor 'blackRoom Floor' 'floor of blackRoom'
desc="Looks like a stuggle has occured. "




;

+endorasPicture: Thing 
name = 'Endoras Picture'
vocabWords = 'endora/picture'
/*desc = "<table><tr><td><img src=\"angel.jpg\"width=\"150\" height=\"200\" align=\"top\"></td><td>You see a large statue, apparently carved from granite. It appears to be ancient, showing signs of severe weathering.</td></tr></table>" */
location = blackRoom
weight = 1000
actionDobjLook
{
"<bold>Well that did not go to plan!</bold><br />";
"Having looked at the picture, your feet are turning to stone, it is impossible to move.<br />
As your body is turing into stone the eyes of Endora start to glow from the picture.
Endora's eyes are bright yellow like the sun.
The last sight you see is Endora's eyes as your chest, neck, and head turn to stone. <br />";
totheAbyss();
}
;

/* Trying to figure out a good quest to put in here. SR 10/2/2017*/



