#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/*    Town Hall
*     Author: Barry Eichelberger
*     Date:   10/01/2013
*       Maintenance Log
-- 10/22/2014 Changed name of Town Hall Counter to Old Wooden Counter, name is now more descriptive. BE
-- 10/23/2014 Changed the syntax for the bell and the key to conform with standard practices. 
--            Used '+' signs to indicate the bell and key will part of (located on) the counter. BE
-- 10/28/2014 Added Stone Steps Down to the Jail. BE
-- 10/29/2014 Added eventlist to steps, 1 in 3 trips ends in death. BE
-- 02/09/2014 Added image of descending stairs to jail. BE
*/     
TownHall: Room 
    name = '<font color="#008800">Town Hall</font>'
    desc = "<hr/>You see a typical, seedy-looking public office. 
        Everything in it looks a hundred years old or more. 
        The walls are dingy and in need of a new coat of paint. 
        The windows have not been washed ... ever!
        To the north are a set of stone steps, leading down to the Jail"
        
  
    east = NorthMainStreet
    down = StoneStepsDown
    north = StoneStepsDown
    south = WestBroadway
;
+StoneStepsDown: TravelWithMessage, StairwayDown, RandomEventList ->StoneStepsUp
	'Stone Steps'
        'Stone Steps'
        "<p>The old granite steps lead down to the Jail.</p>"
   eventList =  
  [ 
    new function 
    { 
      "<p><h1><img src=\"stonestepsdown.jpg\" height=\"200\" width=\"100\"></h1>You desend a long flight of narow, well-worn stone steps. <br>
      The steps are damp and covered with slime, making them treacherous to navigate.<br>
      Unfortunately, the shoes your are wearing are not up to the task.<br>
      You slip and fall down the stairs, breaking your neck when you land at the bottom.</p>";
       finishGameMsg(ftDeath, finishOptionFullScore);
    }, 
    '<p><h1><img src=\"stonestepsdown.jpg\" height=\"200\" width=\"100\"></h1>You descend the steps to the Jail. </p>',
    '<p><h1><img src=\"stonestepsdown.jpg\" height=\"200\" width=\"100\"></h1>You desend a long flight of narow, well-worn stone steps. <br>
      The steps are damp and covered with slime, making them treacherous to navigate.'
  ]   

 ;

+OldWoodenCounter: Surface 
    name = 'Old Wooden Counter' 
    vocabWords = 'counter' 
    desc = "An old wooden counter, dented and worn from centuries of use and abuse."
    inRoomDesc = "a wooden counter is at one end of the room."
;

++SilverBell: Thing
        name = 'Silver Bell'
        desc = "A small, silver bell, of the kind used everywhere to summon a clerk who has somehow disappeared."
        vocabWords = 'bell/Bell'
    
    actionDobjRing
    {
     "The silver bell makes a pleasant, tinkling sound."; 
    }
;

++ rustyKey: Key 'rusty key' 'rusty key'
    "The key is made of iron. It is very heavy and completely covered with rust.
    The key has seen a lot use in the past, as it is quite worn."
    //location = OldWoodenCounter
;

    
/* DEFINE A NEW VERB */
    DefineTAction(Ring);
    VerbRule(Ring) 'ring' singleDobj : RingAction verbPhrase = 'ring/ringing (what)'
    ;

/* When creating a new verb, you'll want to modify the Thing class so as to provide
   default handling for the command. The defaults specified here will be used except
   on objects for which you define explicit handling of the command. */
   
/*modify Thing
    dobjFor(Ring)
    {
        preCond = [touchObj];
        action() { mainReport(okayRingMsg); };        
    }
    
    okayRingMsg = '{You/he} ring{s} {the dobj/him} but not much happens as a
        result. '
    
    shouldNotBreakMsg = 'Only amateurs go round breaking things unnecessarily. '    
    ;*/


