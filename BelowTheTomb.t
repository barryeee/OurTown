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
-- 9/26/2016 Added silver key to jasperCrypt
    -------------------------------*/


BelowtheTomb: Room '<font color="#880000">Below the Tomb</font>'
    "<hr/>You land in a dark cave, with the only light coming from the torches above.
    Dimly lit, there does not appear to be a path. Instead, the flickering light
    casts shadows against four stone crypts, which line the walls in front of you. The crypts lay
    silent and ominous before you, aligned in a row against the south wall. One of the crypts lies open, with its lid laying on the floor ."

   
    up = Tomb
;

+graniteCrypt: Openable, Booth 'granite crypt' 'granite crypt'
    "It is an ancient crypt, carved out of a single piece of black granite. "
   initiallyOpen = true
    weight = 10000
    material = adventium
;


;
+marbleCrypt: Openable, Booth 'marble crypt' 'marble crypt'
    "It is an ancient crypt, carved out of a single piece of white marble. "
   initiallyOpen = nil
    weight = 10000
        material = adventium
    
;

+jasperCrypt: Openable, Booth 'jasper crypt' 'jasper crypt'
    "It is an ancient crypt, carved out of a single piece of red jasper. "
   initiallyOpen = nil
    weight = 10000
        material = adventium
;

+malachiteCrypt: Openable, Booth 'malachite crypt' 'malachite crypt'
    "It is an ancient crypt, carved out of a single piece of green malachite. "
   initiallyOpen = nil
    weight = 10000
        material = adventium
;

++silverKey: Key  //Key to open the MetalLockBox @ SevenSorrowsInn
    'silver key' 'silver key'
    desc = "The key is made of silver. Other than that there seems to be nothing special about it.."
    location = jasperCrypt
;