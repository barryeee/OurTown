#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/* 
 *   Jail Cell 
 *   Created by : Barry Eichelberger 
 *   Date Created: 10/14/2014
 *   Maintenance Log:
 *      10/8/2016 Created Rat aka Mr. Jingles and made him talk. MR
 *      10/9/2016 Added image to JailCell. MR 
 */


JailCell: Room 
    name = '<font color="#008800">Jail Cell</font>'
    desc = " <hr/><img src=\"Jail_Cell.jpg\" width=\"200\" height=\"100\" align=\"top\">
        <p>The cell is barely large enough to hold two people at a time.
        Ancient, rusty manacles are attached to the side walls at a variety of heights. 
        Occasionally, a rat scampers across the chains and the heavy clanking whispers of the room's darker history.</p>"

    south = CellDoor2
;
+ CellDoor2: Door ->CellDoor 'door''door'  
   
;

//A NPC that can give you clues as you traverse the game
+ Rat: Actor
    'rat'
    'rat'
    desc = "Just an ordinary looking rat, but he seems like he wants to talk?"
    bulk = 2
    location = JailCell
    isHim = true
    globalParamName = 'rat'      
    makeProper(properName)   
    {      
        name = properName;      
        isProperName = true;      
        initializeVocabWith(properName.toLower());      
        return name;   
    } 
;

++RatKnown : AccompanyingState
  specialDesc = "Mr. Jingles is accompanying you. " 
  stateDesc = "Mr. Jingles is with you. " 
  accompanyTravel(leadActor, conn)  
    { return leadActor == gPlayerChar; } 
   
; 

 
++ DefaultAnyTopic, ShuffledEventList 
    [ 
      
     'It is nice to finally have someone to talk to.',
  
     'You should find Merrick. He says in an excited tone, He has something
     very useful!',
  
     'I hear that Merrick and Endora were once lovers.',
  
     'The rat looks up at you. Hello, I am <<Rat.makeProper('Mr.Jingles')>> . ',
  
     'Be careful in this town, it can be very dangerous.'
  
     ] 
    ;
  
++ RatSouthGateAgenda: ConvAgendaItem
    isReady = (inherited && Rat.canSee (SouthGate))
    invokeItem()
    {
        "This Gate is quite beautiful, I bet the key is equally as beautiful.";
        
        isDone = true;
    }
;

  
