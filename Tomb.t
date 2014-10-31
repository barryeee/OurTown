#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

/* "The Tomb", located south of "The Town Cemetery"
Created by Brian Vorwald
Created on September 28, 2013
Maintenance Log----------------
11/13/2013 added Header Comments
10/31/2014 Added engraving on wall. BE    
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
            touch. You notice writing chiseled in the wall of the tomb."
	
    north = TownCemetery
    south = BelowtheTomb
    down = BelowtheTomb
;

+Engraving: Thing, Readable 
    name = 'Engraving on Tomb Wall' 
    vocabWords = 'Engraving'
    desc = "The jagged letters are difficult to read, and appear to be as old as the tomb.<br>"
    readDesc = "Let all who enter beware.<br>
        The bloodiest battle on earth happened here.<br> 
        The dead they know, of the sins from the ones below.<br> 
        And if our gods show you mercy,never again will the six unleash their fury."
;