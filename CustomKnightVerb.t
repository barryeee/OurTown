#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>


// Custom Verb that awakes each knight and is friendly.

/* DEFINE A NEW VERB */
    DefineTAction(Apello);

    VerbRule(Appello)
        ('appello' | 'summon') singleDobj
    : AppelloAction
    verbPhrase = 'appello (what)'
    ;
    
    modify Thing
    dobjFor (Appello)
    {
        verify() { }
        check() 
        {
            // check position of knight. If lying, change positon to standing and display message.
            if (posture == lying)
            { 
                posture = standing;
                "<<properName>>, the <<name>> rises from the crypt and prepares to meet your attack with his mighty sword made of black onyx.<br>";
                moveIntoForTravel(BelowtheTomb);
                blackScroll.sightPresence = true;
                setCurState(blackKnightHostile);
            }
            
            // check to see if knight is friendly
                
        action() {
            if ActorState == friendly 
        }
      
            
                
                
                

              
        
            

   
    
