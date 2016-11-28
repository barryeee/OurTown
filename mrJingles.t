#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

/* 
 *   Mr. Jingles (Rat) Created by : Mitch Roberts Date: 10/8/2016 Created to be
 *   a companion and clue giver to player
 *
 *   Maintenance log: 
 *      10/9/2016       Added Shuffled event list for some random speech. MR
 *      10/10/2016      Changed Shuffled list to Event list so responses are in order. MR
 *      11/10/2016      Added AccompanyingState for travel with player. MR
 *      11/10/2016      Created .t file for mrJingjes. MR
 *      11/11/2016      Added image to mrJingles. MR
 *      11/16/2016      Added AskTopic for Merrick (Had to add isKnown = true in the Merrick.t file). MR
 *      11/17/2016      Added AskTopic for Endora. MR
 *      11/17/2016      Added InitiateTopic for SouthGate. MR
 *      11/17/2016      Changed font color for mrJingles responses to blue. MR
 */
 
 
 //An NPC that can give you clues as you traverse the game
 mrJingles: Actor
    'rat'
    'rat'
    desc = "<hr/><img src=\"mrJingles.jpg\" width=\"150\" height=\"150\" align=\"top\">
        </p>Just an ordinary looking rat, but he seems like he wants to talk?"
    bulk = 2
    location = JailCell
    destination = AccompanyingState
    isHim = true
    dexterity = 10
    globalParamName = 'Mr.Jingles'
    properName = 'Mr.Jingles'
    

    //Make references to mrJingles use proper name instead of rat
    makeProper(properName)   
    {      
        name = properName;      
        isProperName = true;      
        initializeVocabWith(properName.toLower());      
        return name;   
    }

    
    //Have mrJingles change state to discovered  
      dobjFor(TalkTo)
  {
     verify() { }
     check() 
    {
       if (mrJingles.isHim)
        {
            moveIntoForTravel(LeatherPouch);
               
            setCurState(mrJinglesDiscovered);
                
        }
    }
  }
    

 getActor()
    {
        if (location.ofKind(InConversationState))
            return location.getActor();
        else
            return location;
    }
;
//Once discovered mrJingles will accompany player
+mrJinglesDiscovered : AccompanyingState
  specialDesc = " Mr. Jingles is accompanying you. " 
  stateDesc = " Mr. Jingles is with you. "
   
  accompanyTravel(leadActor, conn)  
    { return leadActor == gPlayerChar; } 
    
    arrivingTurn() { mrJingles.initiateTopic(mrJingles.getOutermostRoom); } 

;


//Mr.Jingles responses to ask about 
+ AskTopic @Merrick 
     
    "<font color='#000088'><q>What can you tell me about Merrick?</q> you ask. 
    <.p><q>You should find Merrick!</q> he says in an excited tone.<q>He has something very
    useful!</q><br>
    <q> I hear that Merrick and Endora were once lovers, but now he is a prisoner...or dead.</q></font>"   
  
;

+ AskTopic @Endora
    
    "<font color='#000088'><q>What do you know about Endora?</q> you ask.
    <.p>Seeming somewhat frightened, Mr.Jingles responds.<q>She is an evil and powerful witch.</q><br>
    <q>Some say she can not be defeated.</q></font>" 
    
;
//Mr.Jingles initiates Topics for certain areas
+ InitiateTopic, EventList @SouthGate
    [ 
        '<font color=\'#000088\'><q>Look at that beautiful gate!</q> Mr.Jingles declares. 
        <.p><q>I imagine the key is equally beautiful.</q>
        <.p><q>Someone took it years ago and hid it somewhere in town, so now we are stuck here.</q></font>'
    ] 
    
; 


//Random conversation for mrJingles 
+ HelloTopic, EventList 
    [
    '<font color=\'#000088\'>The rat climbs onto your pouch...<br>   
     He looks up at you. <q>Hello, I am
     <<mrJingles.makeProper('Mr.Jingles')>> .</q></font>',
        
    '<font color=\'#000088\'><q>I hope you don\'t mind if I tag along with you.</q></font>',
        
    '<font color=\'#000088\'><q>You can ask me about things. I know a lot about this town.</q></font>',
        
    '<font color=\'#000088\'><q>It is nice to finally have someone to talk to.</q></font>',
    
    '<font color=\'#000088\'><q>I\'ve been here in this old town my whole life.</q></font>',
                
    '<font color=\'#000088\'><q>There have been some very strange and, some would say "Magical" things that have happened here.</q></font>',
 
    '<font color=\'#000088\'><q>Be careful in this town, it can be very dangerous.</q></font>'
 
    ]
 
 ;





    


  
