#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/*    Town Hall
*     Author: Barry Eichelberger
*     Date:   10/01/2013
*       Maintenance Log
*       10/22/2014 Changed name of Town Hall Counter to Old Wooden Counter, name is now more descriptive. BE
*/     
TownHall: Room 
    name = '<font color="#008800">Town Hall</font>'
    desc = "<hr/>You see a typical, seedy-looking public office. Everything in it looks a hundred years old or more. The walls are dingy and in need of a new coat of paint. The windows have not been washed ... ever!"
  
    east = NorthMainStreet
    down = Jail
    south = WestBroadway
;

OldWoodenCounter: Surface 
    name = 'Old Wooden Counter' 
    vocabWords = 'counter' 
    location = TownHall
    desc = "An old wooden counter, dented and worn from centuries of use and abuse."
    inRoomDesc = "a wooden counter is at one end of the room."
;

SilverBell: Thing
        name = 'Silver Bell'
        desc = "A small, silver bell, of the kind used everywhere to summon a clerk who has somehow disappeared."
        vocabWords = 'bell/Bell'
        location = OldWoodenCounter
    
    actionDobjRing
    {
     "The silver bell makes a pleasant, tinkling sound."; 
    }
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

+ rustyKey: Key 'rusty key' 'rusty key'
    "The key is made of iron. It is very heavy and completely covered with rust.
    The key has seen a lot use in the past, as it is quite worn."
    location = OldWoodenCounter
;
