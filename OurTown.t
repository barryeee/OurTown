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
 *   11/04/2014 - Set weightCapacity property for player to 150. BE
 *   11/19/2014 Added combat atributes to player character. BE
 */
versionInfo: GameID
    IFID = '69462502-a9b7-4112-9ce0-6b300d602969'
    name = 'Our Town'
    byline = 'by Barry Eichelberger, et al.'
    htmlByline = 'by <a href="mailto:eichelbergerb@nicc.edu">
                  Barry Eichelberger</a>'
    version = '1'
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
        "<br>BE - Barry Eichelberger, Instructor, Fall 2013 - 2014";
        "<br>BV - Brian Vorwald, Fall 2013";
        "<br>GL - Grayson Leigh, Fall 2013";
        "<br>LS - Laurie Starr, Fall 2014";
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
/* totheAbyss - a function which allows the player to be relocated to the Abyss, where he/she dies immediately*/
function totheAbyss ( )
{
    me.moveIntoForTravel(theAbyss);
    say (theAbyss.roomName); 
    say (theAbyss.desc);
    finishGameMsg(ftDeath, finishOptionFullScore);
}

gameMain: GameMainDef
    initialPlayerChar = me
    //max score must be upddated by hand with total number of points available.
   // maxScore = 46
    showIntro()
    {
        "<p><br/><br/><br/><br/><br/><br/><br/>
        <h1><font color=\"yellow\">Welcome to...<br /><br />";
        "<center>Our Town</center><br /><br /></h1>";


        "It's a quirky little place, with unexpected characters showing up all the time.<br/>";
        "Although it appears to nothing more than a quaint, oudated little rual town in the Midwest, apperances can be deceiving. 
        Take nothing for granted as you wander the streets. 
        Be careful when entering a building. 
        Most residents don't care much for unexpected visitors.<br /><br /></font></p>";
        
       
    }
;



me: Actor
//   location = BelowtheTomb //test location.
    location = TownSquare
    weightCapacity = 100
    accuracy = 5
    strength = 5
    dexterity = 2
    health = 20
     
;
