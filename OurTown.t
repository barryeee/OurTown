#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

/*
 *   Our game credits and version information.  This object isn't required
 *   by the system, but our GameInfo initialization above needs this for
 *   some of its information.
 *   
 *   IMPORTANT - You should customize some of the text below, as marked:
 *   the name of your game, your byline, and so on.  
 *
 **   Maintenance   **
 *   11/04/2014 - Set weightCapacity property for player to 150. BE
 *   11/19/2014 Added combat atributes to player character. BE
 *   02/23/2015 BE Added Our Town graphic.
 *   09/28/2016 Added image to TouristGuide. MR
 *   09/29/2016 Created LeatherPouch. MR
 *   11/08/2017 Added magic cyrstal to leather pouch. BE
 *   11/08/2017 Added matchbook to leather pouch. BE
 */
versionInfo: GameID
    IFID = '69462502-a9b7-4112-9ce0-6b300d602969'
    name = 'Our Town'
    byline = 'by Barry Eichelberger, et al.'
    htmlByline = 'by <a href="mailto:eichelbergerb@nicc.edu">
                  Barry Eichelberger</a>'
    version = '3'
    authorEmail = 'Barry Eichelberger <eichelbergerb@nicc.edu>'
    desc = 'Demonstration Project for Progamming Support class.'
    htmlDesc = 'Demonstration Project for Progamming Support class.'
    headline = 'An Interactive Sample' 
    /* 
     *   other bibliographic tags you might want to set include:
     *
     *.    headline = 'An Interactive Sample'
     *.    seriesName = 'The Sample Trilogy'
     *.    seriesNumber = '1'
     *.    genreName = 'Sample Games'
     *.    forgivenessLevel = 'Polite'
     *.    gameUrl = 'http://mysite.com/mygame.htm'
     *.    firstPublished = '2006'
     *.    languageCode = 'en-US'
     *.    licenseType = 'Freeware'
     *.    copyingRules = 'Nominal cost only; compilations allowed'
     *.    presentationProfile = 'Default'
     */

    showCredit()
    {
        /* show our credits */
        "Created by the Programming Support Class at Northeast Iowa Community College.";
        "<br>BE - Barry Eichelberger, Instructor, Fall 2013 - 2017";
        "<br>BV - Brian Vorwald, Fall 2013";
        "<br>GL - Grayson Leigh, Fall 2013";
        "<br>LS - Laurie Starr, Fall 2014";
        "<br>MR - Mitch Roberts, Fall 2016";
        "<br>AW - Andy Wichell, Fall 2016";
        /* 
         *   The game credits are displayed first, but the library will
         *   display additional credits for library modules.  It's a good
         *   idea to show a blank line after the game credits to separate
         *   them visually from the (usually one-liner) library credits
         *   that follow.  
         */
        "\b";
    }
    showAbout()
    {
        "This game was created as an exercise for the Programming Support Class at Northeast Iowa Community College. ";
        "It is similar in design and format to one of the earliest interactive fiction creations titled Zork. ";
        "Commands are fairly straight forward. The plot and goal of this game is anything but straight forward! ";
        "It is a work in progress. Nothing is ever truly finished here. Take everything with a grain of salt.";
    }
    
;


gameMain: GameMainDef
    initialPlayerChar = me
    //max score must be upddated by hand with total number of points available.
   // maxScore = 46
    showIntro()
    {
        "<p><br><br><br><br><br><br><br>
        <h1><font color=\"yellow\">Welcome to...<br><br></font></h1>";
   
          
        "<center><img src=\"OurTown.png\"></center><br>";
        
        "It's a quirky little place, with unexpected characters showing up all the time.<br>";
        "Although it appears to be nothing more than a quaint, oudated, little rual town, apperances can be deceiving. <br>
        <ul>
            <li>Take nothing for granted as you wander the streets. </li>
            <li>Look at everything.</li>
            <li>Be careful when entering a building.
                Most residents don't care much for unexpected visitors.</li>
        </ul>
        <br><br></p>";
        
       
    }
;



me: Actor
location = BelowtheTomb //test location.
//    location = TownSquare
    weightCapacity = 100
    bulkCapacity = 2
    accuracy = 5
    strength = 5
    dexterity = 2
    health = 20
   ;

;
// Increases ability for holding objects
+LeatherPouch: BagOfHolding, Container, Wearable  //A pouch for holding items
    'leather pouch'
    'leather pouch'
    
    "<table><tr><td><img src=\"Leather_Pouch.jpg\" align=\"top\" width=\"200\" height=\"133\" align=\"top\">
    You have a leather pouch draped over your shoulder. </td></tr></table>"
    bulkCapacity = 3000 
    minBulk = 1 

    dobjFor(PutIn)
    {
    }
           isWornBy(me) 
        { 
            return bulk; 
        } 
; 

//A guide to act as a players manual?
+TouristGuide: Readable
    'tourist guide'
    'leather bound guide'
    
    weight = 1
    bulk = 1
    desc = "A small leather bound book with fadded printing on the cover..."
    readDesc = "<table><tr><td><img src=\"Leather_Bound_Guide_Book.jpg\" align=\"top\" width=\"200\" height=\"133\"></td>
        <td><font face=\"Old English Text MT\" color=\"#666666\" size=5><center>A Tourist\'s Guide<br>To<br>Our Town
        <br><br><font size=4>Everything you need to know
        <br>in order to survive...almost!</font></center>  
        <br><font size=4><center>Feel free to wander around and get to know the town. 
        <br>Keep an eye out for Mr. Jingles. He can be quite helpful!</font></center> 
        <br><br><font face=\"Old English Text MT\" color=\"#666666\" size=3><center>Your goal<br>should you accept it<br>is to complete a series of dangerous quests<br> 
        that will reward you with treasures and tokens.<br>These items will allow you to unlock new quests. Once the quests are complete<br>
        you will be given a special gift to unlock your freedom.</font></center>
        <br><br><font face=\"Old English Text MT\" color=\"#666666\" size=5><center>*Happy Hunting*</font></center></font>
    
        <br><br><br><font size=5><center><br><br>Basic Instructions</center><br><br>
         <font size=4>You (the main character) are located in the Town Square at the onset of the game. Your current location appears in the uppermost left corner of the screen, underneath are the available exits. 
        The prompt (>) is waiting for your instruction in the form of a direction to move or a verbal command. Press the Enter key after entering your instruction<br><br>
         A. Moving Around<br><br>
        Moving around in the game involves entering very basic directions (Cardinal Directions) North, South, East, West and Up or Down at the command prompt. Acronyms may be used in place of the direction name as follows:
        <br><br>North:  N
        <br>South:  S
        <br>East:   E
        <br>West:   W
        <br><br>Northeast, Southeast, Southwest and Northwest (Primary InterCardinal Directions) may possibly be used.
        <br><br>B. Basic Commands<br><br>
        Basic commands involve the use of a verb in order to act upon an object, for example:
          <br>\"take the ornate key\". 
        <br>Examples of some basic command verbs are:  take, drop, look, read, unlock, open…
        As the player you can take it a step further by acting upon an object with an object, for example:
          <br>\"unlock the gate with the ornate key\".
        <br>The \"Quit\" command allows you to leave the game.
        Use your imagination; try anything, however, pay close attention to your surroundings.
        <br><br>C. Interaction with NPCs (Non Playing Characters)
        <br><br>Some NPC's are conversational and can be spoken to and respond back. To speak to NPCs you can use: 
        <br>talk to, hello, ask about, give to, show to, or even, yes or no.
        <br>Other NPCs are invoked by the use of special verbs or spells. These are usually learned as game play progresses.
        <font> </td></tr></table>"
    location = LeatherPouch
 ;
magicCrystal: LightSource 'magic glowing eerie light/crystal*crystals' 'magic crystal'
    "The crystal glows with a pure but eerie light. "
    brightness = 0
    location = LeatherPouch
    
    
    dobjFor (Take)
    {
        verify() { }
        check() { }
        action()
        {
            gDobj.brightness = 3;
            inherited;
        }
    }
    
    dobjFor (PutIn)
    {
        verify() { }
        check() { }
        action()
        {
            gDobj.brightness = 0;
            inherited;
        }
    }
     dobjFor (Drop)
    {
        verify() { }
        check() { }
        action()
        {
            gDobj.brightness = 0;
            inherited;
        }
    }
;
+MatchBox: Matchbook 'matchbook*matchsticks' 'matchbook'
    location = LeatherPouch
;
++ Matchstick  'match' 'match';
++ Matchstick  'match' 'match';
++ Matchstick  'match' 'match';
++ Matchstick  'match' 'match';
++ Matchstick  'match' 'match';