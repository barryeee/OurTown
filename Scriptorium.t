#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/* 
 *   The Sciptorium
 *   Author: Barry Eichelberger
 *   Date: 12-01-2014
 *   Desc: The Sciptorium is a small room located of the main sancturary in the High Cathedral.
 *              Its only purpose is to be a repository for various book and scrolls....
 *      Maintenance Log:
 *      12/03/2014 Added shevles and modified room description. BE
 *      01/28/2015 Made the Crystal Globe to heavy to carry, to prvent a player from walking off with it. BE
 *      02/09/2015 Made minor correction to the suth wall description. BE
 *
 */

Scriptorium: Room
    roomName = '<font color="#008800">Scriptorium</font>'
    destName = '<font color="#008800">Scriptorium</font>'
    desc = "<img src=\"scriptorium.jpg\" width=\"200\" height=\"150\"> A windowless library, filled with shelves from floor to ceiling. 
        Unfortunately, it looks as if the library has been looted, as there are few, if any volumes remaining on the shelves."

    south = HighCathedral
    roomParts = static inherited -defaultEastWall +scriptoriumEastWall -defaultWestWall +scriptoriumWestWall
         -defaultNorthWall +scriptoriumNorthWall -defaultSouthWall +scriptoriumSouthWall -defaultFloor +scriptoriumFloor
 ;

+ReadingDesk:  Surface
    'reading desk/oak desk/desk'
    'reading desk'
    "It's a small oak desk, just big enough for a single book or scroll."
    inRoomDesc = " A small, oak desk sits in the center of the room, to be used by anyone who wishes to do a little light reading!"
;
++ CrystalGlobe: LightSource
    'crystal globe/globe'
    'crystal globe'
    "A tiny globe, made of crystal and attached to the desk, shines with a faint, silver light. 
    The eerie, pearlescent glow is just bright enought to illuminate the room."
    isLit = true
    brightness = 3
    weight = 1000 //it is too heavy to carry - we don't want anyone walking off with the lamp!
;
+historyShelf: Surface, Fixture
    'history shelf*shelves'
    'history shelf'
    "This shelf reaches from floor to ceiling and is large enough to hold hundreds of books and scrolls. "
    
    iobjFor (PutOn)
    {
        action()
        {
            if (gDobj.destination == 'history shelf')
            {
                "You gently place the <<gDobj.name>> on the history shelf";
                inherited();
            }
            else
            {
                "You can't put that here!";
            }
        }
    }
    
;
+spellsShelf: Surface, Fixture
    'spells shelf*shelves'
    'spells shelf'
    "This shelf reaches from floor to ceiling and is large enough to hold hundreds of books and scrolls. "
    
     iobjFor (PutOn)
    {
        action()
        {
            if (gDobj.destination == 'spells shelf')
            {
                inherited();
            }
            else
            {
                "You can't put that here!";
            }
        }
    }
    
;
+monstersShelf: Surface, Fixture
    'monsters shelf*shelves'
    'monsters shelf'
    "This shelf reaches from floor to ceiling and is large enough to hold hundreds of books and scrolls. "
    
     iobjFor (PutOn)
    {
        action()
        {
            if (gDobj.destination == 'monsters shelf')
            {
                inherited();
            }
            else
            {
                "You can't put that here!";
            }
        }
    }
    
;
scriptoriumEastWall: defaultEastWall
   desc = "This wall is built of the same stone as the rest of the cathedral. "
;

scriptoriumWestWall: defaultWestWall
   desc = "This wall is built of the same stone as the rest of the cathedral. The entrance door is set in the middle of that wall. "
;
scriptoriumNorthWall: defaultNorthWall
   desc = "This wall is built of the same stone as the rest of the cathedral. "
;
scriptoriumSouthWall: defaultSouthWall
   desc = "This wall is built of the same stone as the rest of the cathedral. The entrance door is set in the middle of that wall. "
;
scriptoriumFloor: Floor 'Scriptorium Floor' 'floor of the Scriptorium'
    desc="You see a stone floor made of limestone blocks, worn smooth by the passage many feet over the course of countless years. "
    putDestMessage = &putDestFloor 
;