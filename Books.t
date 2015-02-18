#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/* 
 *   Books.t 
 Author: Barry Eichelberger 
 Date: 12-04-2014 
 Desc: A basic model for all things readable which end up in the Scriptorium. 
    All books, scrolls, tomes, grimoires, ect. should be instances of this object. 
    Their souce code should be contained in this file, below the book object definition.
Maintenance:
12/15/2014 added 3 properties to the black and white scrolls to make them invisible. BE
12/16/2014 LS Added Book of Shadows

 */

Book: Readable
    'book*books'
    'book'
    "A generic book with writing, etc."
    weight = 5
    destination = 'history shelf'
    readDesc = "There is nothing special about this book. I reaaly do not understand your fascination with it!"
    // these books can only be read in the Sciptorium.
    dobjFor(Read)
    {
        action()
        {
            if (me.location == Scriptorium)
            {
            inherited();
            }
            else
            {
                "The writing is indecipherable! You can not read it.<br/>";
            }
        }
    }
;

blackScroll: Book
    'black scroll*scrolls'
    'black scroll'
   @graniteCrypt
   "<p>An ancient work, written on parchment and covered with black silk. There appears to be something written on it ...</p>"
   
    destination = 'history shelf'
  
    sightPresence = nil
    isListed = (sightPresence) 
    isListedInContents = (sightPresence) 
    bulk = 1
   
    readDesc = "<p> <center><color=\"#FFD700\"> <h1>The War of
    Conquest</h1><br><br> <h2>Being a History of the conflict<br> between
    the Four Elemental Knights<br> and<br> The Witch
    Endora</h2></color></center> </p>"
    
   
;

whiteScroll: Book
    'white scroll*scrolls'
    'white scroll'
    
    @marbleCrypt
    "An ancient work, written on parchment and covered with white brocade. There appears to be something written on it ..."
    destination = 'history shelf'
    sightPresence = nil
    isListed = (sightPresence)
    isListedInContents = (sightPresence)
    readDesc = "<center><font face=\"Segoe Script\" color=\"#FFD700\"><h1><br>Victory At The Bridge</h1><br><br>
    <h2>A Continuation of the History of the conflict<br>
    between the Four Elemental Knights<br>
    and<br>
    The Witch Endora</h2></font></center>"      
        bulk = 1
;
BookofShadows: Book
    'Book of Shadows'
    'Book of Shadows'
    @Merrick
    "<p>Bound in worn, black leather a golden pentacle appears glowing on the cover.</p>"
    destination = 'spells shelf'
    readDesc = "<center><font face=\"Old English Text MT\" color=\"#FFD700\">
    <h1><img src=\"star.png\"></h1>
    <p>Book of Shadows
    <br>Forbidden Secrets<br/>
    <br>Betwixt Endora, Merrick<br/>
    <br>and<br/>
    <br>The Four Elemental Knights<br/></p>
    <p><br>I. Endora<br/>
    <br>In the beginning Endora was pristine of heart and had beauty to match...<br/></p>
    <p>II. Merrick</p>
    <p>III. The Black Knight</p>
    <p>IV. The White Knight</p>
    <p>V. The Green Knight</p>
    <p>VI. The Red Knight</p>
    </font></center>"
    bulk = 1
;



testBook: Book
    'Test Book'
    'Test Book'
    
    @TownSquare

    "<body background=\"parchment.jpg\"><p>Bound in worn, black leather a golden pentacle appears glowing on the cover.</p>"
    destination = 'spells shelf'
    readDesc = "<center><font face=\"Segoe Script\" color=\"#663300\">
        <p><font size=7>Test Book</font></p>
        <p>Book of Shadows
        <br>Forbidden Secrets<br/>
        <br>Betwixt Endora, Merrick<br/>
        <br>and<br/>
        <br>The Four Elemental Knights<br/></p>
        <p><br>I. Endora<br/>
        <br>In the beginning Endora was pristine of heart and had beauty to match...<br/></p>
        <p>II. Merrick</p>        
        <p>III. The Black Knight</p>
        <p>IV. The White Knight</p>
        <p>V. The Green Knight</p>        
        <p>VI. The Red Knight</p>
        
        </font></center></body>" 
     bulk = 1
;


