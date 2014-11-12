#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

/* "Endora's Mansion", located... "
Created by Laurie Starr
Created on September 18, 2014 
github test October 6, 2014
added Cellar Door November 4, 2014
*/

EndorasMansion: Room
    name = '<font color="#880000">Endora\'s Mansion</font>'
    vocabWords = 'mansion'    
    desc = "An expansive/decrepit Victorian Era Mansion. Void of any paint and surrounded by brambles and briars.. Inside the mansion the sun bounces dusty rays off ornate, antique furnishings. To the north you can barely make out the shape of a door."
    
    east = WestBroadway
    north = CellarDoor
;

+SummoningRope: Thing 
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

/* The Cellar Door is only to release Endora's prisoner, entrance to the cellar is not permitted. */

+ CellarDoor: LockableWithKey, Door  
	'Cellar Door'
        'Cellar Door'
        "The door, constructed of weathered planking, has centered on it an aged locking mechanism. From beyond the door you hear the tortured cries of a hopeless prisoner."
    keyList = [skeletonKey]
    
/* Opening of the cellar door results in the reward of 3 points for releasing Endora's prisoner and can only be done with the possession of the skeleton key that was dropped on West Broadway. */
    
    dobjFor(Open)
    {
             action() 
             { 
               achievement.awardPointsOnce();                        
             }
    } 
         
   achievement : Achievement { +3 "Releasing Endora's prisoner" } 

 ;



 