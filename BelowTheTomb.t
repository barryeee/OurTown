#charset "us-ascii"

#include <adv3.h>
#include <en_us.h>
/* Dig a Room  called "Below the Tomb", located down of "The Tomb".
-- Dig in down, creating exits in both directions.
--Created by Brian Vorwald
--Created on September 28. 2013
--Maintenance Log-------------
--11/15/2013 BV
--Rearranged the positions of the arrive and leave messages
--Added the cyan color to the arrive and leave messages
--Added the color yellow to the key  object
--11/13/2013 
-- Added Header Comments
-- 10/23/2014 BE
-- changed the description. Stone crypts have replaced the wooden caskets.
    -------------------------------*/


BelowtheTomb: Room '<font color="#008800">Below the Tomb</font>'
    "<font color=\"00ffff\">You land in a dark cave, with the only light coming from the torches above.
    Dimly lit, there does not appear to be a path. Instead, the flickering light
    casts shadows against six stone crypts, which line the walls in front of you. Three crypts on each side, they lay
    silent and ominous before you. One of the lids appears to be loose.</font>"

    north = Tomb
    up = Tomb
;


