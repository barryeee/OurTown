#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/* 
 *   Higth Cathedral 
 Author: Barry Eichelberger 
 Date: 10/01/2013 
 Desc: High Cathedral, spiritual center of Our Town. 
 Maintenance 
 12/01/2014 Added north direction/link to Scriptorium. BE
 12/03/2014 Added weight to angel statue to prevent taking it. BE
 12/08/2014 change Notice from readable object to decoration. Added custom message to object incase player attempts to take notice. BE
 01/28/2015 Added image to ornate key description. BE
 02/24/2015 BE Changed Notice font face and color.
 */
HighCathedral: Room 
    roomName = '<font color="#880000">High Cathedral</font>'
    destName = '<font color="#880000">High Cathedral</font>'
    desc = "<table><tr><td><img src=\"cathedral2.jpg\" width=\"145\" height=\"200\" ></td>
        <td>As your eyes adjust to the dim lighting, you notice that you are in a temple of very modest interior proportions. 
        Before you lies the gilded High Altar. 
        You are surrounded by stone statues of all kinds, some beautiful, some hideous.
        There is a notice attached to the wall.</td></tr></table>"
    
    /*east = BehindtheAltar*/
    west = NorthMainStreet
    north = Scriptorium
;

 +AngelStatue: Thing 
    name = 'Angel Statue'
    vocabWords = 'angel/statue'
    desc = "<table><tr><td><img src=\"angel.jpg\"width=\"150\" height=\"200\"></td>
        <td>You see a large statue, apparently carved from granite. It appears to be ancient, showing signs of severe weathering.</td></tr></table>"
    location = HighCathedral
    weight = 1000
     actionDobjFeel
        {
        "<bold>That was an incredibly stupid thing to do!</bold><br />";
        "Having touched the statue, you fall to your knees as an oily, black cloud fills the room.<br />
        A huge, foreboding, angelic figure, wrapped in a cloak of darkness, stands before you.
        At least 10 feet in height, he peers down at you as if you were a tiny bug.
        Without saying a word, he touches you with his massive finger and you both disappear in a cloud of smoke which smells faintly of lavender. <br />";
        totheAbyss();
        }
;

+Decoration
    name = 'Notice on Cathedral Wall' 
    vocabWords = 'Notice'
    
   desc = "You see an ancient piece of parchment hanging on the wall beside the doors. 	Although nearly illegible, you can just barely make out the writing...<br>
       <table background=\"parchment.jpg\">
       <tr><td>
       <ul><font face=\"Old English Text MT\"color=\"#000033\" size=7>Welcome to the High Cathedral!</font>
    
        <li><font face=\"Old English Text MT\" color=\"#000033\" size=5>Services of Worship occur at irregular intervals.</font></li>
        <li><font face=\"Old English Text MT\" color=\"#000033\" size=5>Please observe proper decorum at all times while inside the Cathedral.</font></li>
        <li><font face=\"Old English Text MT\" color=\"#000033\" size=5>A final word of caution ... <br>
       You may look at, but <font color=\"#880000\"><b> DO NOT TOUCH</b></font>,  the Angel Statue!</font></li></ul>
   <p><font face=\"Old English Text MT\" color=\"#000033\" size=5>Thank you and enjoy your time here.</font></p> </td></tr></table>"
   
    notImportantMsg = 'Please do not deface the Cathedral by removing or in any other way disturbing this notice.'
    
   
;
+ ornateKey: Key 'ornate key' 'ornate key'
    desc = "<table><tr><td><img src=\"cemeterykey.jpg\" width=\"100\" height=\"66\"></td><td>The key is made of brass, old and tarnished. 
    It is quite ornate in its design, reflecting a level of craftsmanship no longer seen in this day and age.
    A closer inspection reveals a gruesome pattern of skeletons covering the the enire surface of the key.</td></tr></table>"
    bulk = 1
;
