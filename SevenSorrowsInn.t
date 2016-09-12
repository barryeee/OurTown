#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>


SevenSorrowsInn: Room 
    roomName = '<font color="#008800">Seven Sorrows Inn</font>'
    destName = '<font color="#008800">Seven Sorrows Inn</font>'
    desc = "<table>
        <tr><td><img src=\"sevensorrowsinn.jpg\" height=\"150\" width=\"200\" align=\"left\"></td><td>A run-down inn of questionable quality. You can order a beverage or a meal, if you desire. 
        You can even rent a room for the night ... if you have enough gold</td></tr></table>"

    
    west = SouthMainStreet
    north = EastBroadway
     

;

+OldWoodenBar: Surface 
    name = 'Old Wooden Bar' 
    vocabWords = 'bar' 
    desc = "An old wooden bar, stained and worn from centuries of use and abuse.There are equally worn wooden stools lined along the bar"
    inRoomDesc = "a wooden bar is at one end of the room."
;