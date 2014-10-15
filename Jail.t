#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/* 
 *   The Jail 
 *   Author: Barry Eichelberger
 *   Date: 10-05-2013 
 *   Desc: the Jail is the entrance to
 *   the underground maze, beneath the city.
 *      Maintenance Log:
 * 10/07/2014 Changed Description. 
 *      Merged in room description from Jail Cellar written by Grayson Leigh. BE
 */

Jail: Room
    name = '<font color="#008800">Jail</font>'
    desc = "<hr/> A small, dank room with an unavoidable musk permeating the air.
        The only light comes from a single, guttering torch. 
        A wall of iron bars separate the northern half of the room from the rest, serving as a cramped cell."

    up = TownHall
    north = CellDoor
;

+ CellDoor: LockableWithKey, Door  
	'<font color="#00ff00">Cell Door</font>'
        '<font color="#00ff00">Cell Door</font>'
    "<hr/>The Cell Door is made of sturdy iron bars. There is a rusty-looking lock which secures the cell."
    keyList = [rustyKey]
    dobjFor(Unlock)
    {
             action() 
             { 
                if (rustyKey.location == me)
                    {
                       achievement.awardPointsOnce(); 
                       
                    }
                 inherited; 
             } 
    }   
   achievement : Achievement { +3 "unlocking the Cell Door" } 

 ;

