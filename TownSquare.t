#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>


TownSquare: OutdoorRoom 
    name = '<br><font color="#00ff00">Town Square</font>'

    roomDesc { "<h1><img src=\"townsquare.jpg\" width=\"200\" height=\"100\" align=\"left\"></h1>
        
       <br>
        You are located in the heart of Our Town, surrounded by the Town Hall, the High Cathedral, 
        and a dry goods store which specializes in outfitting people for the crazy adventures which some groups embark upon around here. 
        The local tavern/hotel, where visitors can find a room for the night, also borders on the Square. 
        Main Street runs north and south from the square, while Broadway runs east and west. ";
        "<br />";       
    } 
    
    //desc = "The heart of Our Town."  
    
    north = NorthMainStreet
    south = SouthMainStreet
    west = WestBroadway 
    east = EastBroadway
     

;
