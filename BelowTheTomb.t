#charset "us-ascii"

#include <adv3.h>
#include <en_us.h>
/*"Below the Tomb", located down from "The Tomb".
--Created by Brian Vorwald
--Created on September 28. 2013
--Maintenance Log-------------
--11/15/2013 BV
--Rearranged the positions of the arrive and leave messages
--Added the cyan color to the arrive and leave messages
--Added the color yellow to the key  object
--11/13/2013 
-- Added Header Comments
-- 10/23/2014 Changed the description. Stone crypts have replaced the wooden caskets. BE
-- 11/03/2014 Added individual crpyts. BE
*       09/29/2016 Added apertu verb to and disabled the open and close verb for each crypt. BE

    -------------------------------*/


BelowtheTomb: Room '<font color="#880000">Below the Tomb</font>'
    "<hr/>You land in a dark cave, with the only light coming from the torches above.
    Dimly lit, there does not appear to be a path. Instead, the flickering light
    casts shadows against four stone crypts, which line the walls in front of you. The crypts lay
    silent and ominous before you, aligned in a row against the south wall. One of the crypts lies open, with its lid laying on the floor ."

   
    up = Tomb
;

+graniteCrypt: Crypt 'granite crypt' 'granite crypt'
    "It is an ancient crypt, carved out of a single piece of black granite. "
   initiallyOpen = true
    
;

+marbleCrypt: Crypt 'marble crypt' 'marble crypt'
    "It is an ancient crypt, carved out of a single piece of white marble. "

;

+jasperCrypt: Crypt 'jasper crypt' 'jasper crypt'
    "It is an ancient crypt, carved out of a single piece of red jasper. "

;


+malachiteCrypt: Crypt 'malachite crypt' 'malachite crypt'
    "It is an ancient crypt, carved out of a single piece of green malachite. "
;

Crypt: Openable, Booth 'generic crypt' 'generic crypt'
    "It is an ancient crypt, carved out of a single piece of gernic stone. "
   initiallyOpen = nil
    weight = 10000
    material = adventium
    
    actionDobjApertu
    {
        isOpen = true;
        "The lid to the crypt slowly slides open, making a low, grinding noise.";
    }

       
    dobjFor (Open)
    {
        action ()
        {
            "The lid rattles noisily but does not open. Perhaps, another command...or a spell?";
        }
    }
    dobjFor (Close)
    {
        action()
        {
            isOpen= nil;
            "With a great deal of effort, you drag the lid on to the crypt.";
        }
    }
;

