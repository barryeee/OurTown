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
    
    "An ancient work, written on parchment and covered with black silk. There appears to be something written on it ..."
    destination = 'history shelf'
    sightPresence = nil
    isListed = (sightPresence)
    isListedInContents = (sightPresence)
     readDesc = "<center><font face=\"Segoe Script\" color=\"gold\"><h1><br/>The War of Conquest</h1><br/><br/>
        <h2>Being a History of the conflict<br>
        between the Four Elemental Knights<br/>
        and<br/>
        The Witch Endora</h2></font></center>"      
;

whiteScroll: Book
    'white scroll*scrolls'
    'white scroll'
    
    @marbleCrypt
    "An ancient work, written on parchment and covered with white brocade. There appears to be something written on it ..."
    destination = 'history shelf'
    readDesc = "<center><font face=\"Segoe Script\" color=\"gold\"><h1><br/>Victory At The Bridge</h1><br/><br/>
        <h2>A Continuation of the History of the conflict<br>
        between the Four Elemental Knights<br/>
        and<br/>
        The Witch Endora</h2></font></center>"      
;