#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

/* "The Tomb", located south of "The Town Cemetery"
Created by Brian Vorwald
Created on September 28, 2013
Maintenance Log----------------
11/13/2013 added Header Comments
*/
Tomb: Room
	name = '<font color="#008800">The Tomb</font>'
	vocabWords = 'tomb'
	desc = "Inside, the tomb is dark, only a couple of torches light the
            small room. Encased in stone, you feel as though you have entered a 
            prison. It reeks of dead air, cob webs hang low from the ceiling. 
            You look around the room, and on the floor is an old, wooden trap 
            door. It is loose, and one of the hinges is broken off. The door 
            itself is rotted, and appears ready to crumble away at the slightest
            touch. You notice writing etched in the wall of the tomb."
	
    north = TownCemetery
    south = BelowtheTomb
    down = BelowtheTomb
;