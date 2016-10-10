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
+ Rat: Thing, Actor
    'rat'
    'rat'
    desc = "Just an ordinary looking rat, but he seems like he wants to talk?"
    isHim = true
    propertyName = 'Mr, Jingles'
    bulk = 2
    location = JailCell
    destination = LeatherPouch
  ;
 ++ DefaultAnyTopic, ShuffledEventList
    [
      'It is nice to finally have someone to talk to.',
        
      'You should find Merrick. He says in an excited tone, He has something you could use!',
        
      'The rat looks up at you. Hello, I am Mr.Jingles. ',
        
      'I hear that Merrick and Endora were once lovers.',
          
      'Be careful in this town, it can be very dangerous.',
        
      'Can I come with you? I will surely fit in your pouch.'
        
    ]
;  
