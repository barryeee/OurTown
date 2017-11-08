#include <adv3.h>
#include <en_us.h>
    
redRoom: Room
    roomName = '<font color="#008800">redRoom</font>'
    destName = '<font color="#008800">redRoom</font>'
    desc = "<img src=\"scriptorium.jpg\" width=\"200\" height=\"150\"> 
        A Room that looks oddly empty and unfinished. There is a knight straight ahead that explains your task."// change

    east = redEntryDoor
 
    north = doorA 
    south = doorB
;


+acmeLever: Lever, Fixture
    name = 'acme Lever' 
    vocabWords = 'lever' 
    
    desc = "<p> Standard,run of the mill dungeon lever. </p>"
    inRoomDesc = "<p> Standard run of the mill dungeon lever. </p>"
    
    makePulled(stat) // Pulling the Lever
    {
        doorA.makeOpen(stat);
        doorB.makeOpen(stat);
        
        doorA.makeLocked(!stat);
        doorB.makeLocked(!stat);
        
        "The doors on either side of the room slide <<stat ? 'open' : 'closed'>>.";
    }  
;


+doorA: IndirectLockable, Door 'door''door' 
    //name = 'doorA' 
    //vocabWords = 'door' 
    //location = redRoom
    desc = "<p> a locked door </p>"
    inRoomDesc = "<p> Bars cover the door making it inaccessible. </p>"
;

+doorB: IndirectLockable, Door 'door''door' 
    //name = 'doorB' 
    //vocabWords = 'door' 
    //location = redRoom
    desc = "<p> a locked door </p>"
    inRoomDesc = "<p> Bars cover the door making it inaccessible. </p>"
;


+redEntryDoor: Door 'door' 'door'; 

/*
  *   roomParts = static inherited -defaultEastWall +eastWall -defaultWestWall
  *   +westWall -defaultNorthWall +northWall -defaultSouthWall + southWall
  *   -defaultFloor +floor
  */        
;

 
eastWall: defaultEastWall
   desc = "The wall is made of limestone, and has the door you came in on in the middle. "
;

westWall: defaultWestWall
   desc = "The wall is made of limestone."
;

northWall: defaultNorthWall
   desc = "The wall is made of limestone, with a heavily barred door in the middle. "
;

southWall: defaultSouthWall
   desc = "The wall is made of limestone, with a heavily barred door in the middle. "
;

