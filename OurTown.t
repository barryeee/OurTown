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
 */
versionInfo: GameID
    IFID = '69462502-a9b7-4112-9ce0-6b300d602969'
    name = 'Our Town'
    byline = 'by Barry Eichelberger'
    htmlByline = 'by <a href="mailto:eichelbergerb@nicc.edu">
                  Barry Eichelberger</a>'
    version = '1'
    authorEmail = 'Barry Eichelberger <eichelbergerb@nicc.edu>'
    desc = 'Demonstration Project for Fall 2013 Progamming Support class.'
    htmlDesc = 'Demonstration Project for Fall 2013 Progamming Support class.'

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
        "Put credits for the game here. ";

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
        "Put information for players here.  Many authors like to mention
        any unusual commands here, along with background information on
        the game (for example, the author might mention that the game
        was created as an entry for a particular competition). ";
    }
    
;

function totheAbyss ( )
{
    me.moveIntoForTravel(theAbyss);
    say (theAbyss.roomName); 
    say (theAbyss.desc);
    finishGameMsg(ftDeath, finishOptionFullScore);
}

gameMain: GameMainDef
    initialPlayerChar = me
    showIntro()
    {
        "<font color=\"yellow\">Welcome to Our Town. It's a quirky little place, with unexpected characters showing up all the time.<br>";
        "Although it appears to nothing more than a quaint, oudated little rual town in the Midwest, apperances can be deceiving. Take nothing for granted as you wander the streets. Be careful when entering a building. Most residents don't care much for unexpected visitors.<br><br></font>";
    }
;



me: Actor
    location = TownSquare
;
