#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/*    Ollie's Outfitters
*     Author: Barry Eichelberger
*     Date:   11/19/2014
*       Maintenance Log
*       09/13/2016 Fix minor problem with jar not appearing in room description. BE

*/     
Outfitters: Room 
    name = '<font color="#008800">Ollie\'s Outfitters</font>'
    desc = "<hr/>You see an empty building, excepte for a few odds and ends left lying about.
        It is obvious that this place has been unused for quite some time."
    
    east = SouthMainStreet
    north = WestBroadway
; 
 +KnickKnackShelf: Surface, Fixture
    'knickknack shelf'
    'knickknack shelf'
    "This shelf is mounted on the wall by the north door. "
    
    
    
;

++Jar: Thing
    'Glass Jar/jar/Jar'
    'jar'
    desc = "A dirty glass jar containing a murky liquid with a film on the surface."
    
    weight = 1000
;
    
 ++OldLantern: LightSource
    'old lantern/lantern'
    'old lantern'
    "An old brass lantern shines its flickering light into the shop."
    isLit = true
    brightness = 3
    weight = 1000 //it is too heavy to carry - we don't want anyone walking off with the lamp!      
  
   
;