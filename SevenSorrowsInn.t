#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/* A room whose purpose is to house the gold key in the metal lock box. The gold key will unlock the Southern gate to freedom.
     
--Maintenance Log-------------
-- 9/20/2016 Created OldWoodenBar. It's function is to hold the MetalLockBox. MR
-- 9/20/2016 Created MetalLockBox. It will hold the goldKey. MR
-- 9/20/2016 Created goldKey. It's function is to unlock the SouthernGate. MR
-- 9/20/2016 Created silver key. It's function is to unlock MetalLockBox. MR 
    11/14/2016 Set silverKey to hidden and set location to BelowTheTomb. MR (Key should be made visible and given to player upon completion of quests)
	12/12/2016 changed image alignment to top to accomidate text at maximum screen size. MR
 */
SevenSorrowsInn: Room 
    roomName = '<font color="#008800">Seven Sorrows Inn</font>'
    destName = '<font color="#008800">Seven Sorrows Inn</font>'
    desc = "<table>
        <tr><td><img src=\"sevensorrowsinn.jpg\" height=\"150\" width=\"200\" align=\"top\"></td><td> 
        A run-down inn of questionable quality. You can order a beverage or a meal, if you desire. 
        You can even rent a room for the night ... if you have enough gold.</td></tr></table>"

    
    west = SouthMainStreet
    north = EastBroadway
    east = OldWoodenBar 

;

+OldWoodenBar: Surface 
    'old wooden bar/bar/wooden bar' 
    'bar' 
    desc = "An old wooden bar, stained and worn from centuries of use and abuse.There are equally worn wooden stools lined along the bar."
    inRoomDesc = "A wooden bar is at one end of the room."
;

+MetalLockBox: LockableWithKey, Openable, Booth
    'metal box' 'metal box'
    desc = "Just an old silver metal lock box. It doesn't appear to be anything special but it is locked and appears to be stuck to the bar."
    inRoomDesc = " An old metal box sits at the end of the bar."
    location = OldWoodenBar
    initiallyOpen = nil
    weight = 10000
    
       keyList = [silverKey]

    dobjFor(Unlock)
{
    action()
        {
        if (silverKey.location == me)
        {
        
        inherited;
        }
        else 
        {
            "The box is locked.";
        }
}
}
;


++goldKey: Key  
    'gold key' 'gold key'
    desc = "The key is made of gold. It is very heavy and seems to have an etching of some kind. It appears to be the letter S."
    location = MetalLockBox
;

++silverKey: Key, Hidden //Key to open the MetalLockBox @ SevenSorrowsInn
    'silver key' 'silver key'
    desc = "The key is made of silver. Other than that there seems to be nothing special about it.."
    location = BelowtheTomb
;
