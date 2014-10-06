#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

/* "Endora's Mansion", located... "
Created by Laurie Starr
Created on September 18, 2014 
github test October 6, 2014
*/

EndorasMansion: Room
    name = '<font color="#880000">Endora\'s Mansion</font>'
    vocabWords = 'mansion'    
    desc = "An expansive/decrepit Victorian Era Mansion. Void of any paint and surrounded by brambles and briars... "
    
    east = WestBroadway
;

SummoningRope: Thing 
    name = 'Summoning Rope' 
    vocabWords = 'rope/Rope' 
    location = EndorasMansion
    desc = "An ornate, braided, silk rope with a gold tassle hangs from seemingly no where just inside the door."
    inRoomDesc = "An ornate, braided, silk rope with a gold tassle hangs from seemingly no where just inside the door."

    actionDobjPull
    {
     "From deep inside the mansion you hear the unpleasant cackling of an angry witch."; 
    }
 ;
