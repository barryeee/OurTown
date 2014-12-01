#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>
/* 
 *   The Sciptorium 
 *   Author: Barry Eichelberger
 *   Date: 12-01-2014
 *   Desc: The Sciptorium is a small room located of the main sancturary in the High Cathedral.
 *              Its only purpose is to be a repository for various book and scrolls....
 *      Maintenance Log:
 *
 */

Scriptorium: Room
    roomName = '<font color="#008800">Scriptorium</font>'
    destName = '<font color="#008800">Scriptorium</font>'
    desc = "<hr/> A windowless library, filled with shelves from floor to ceiling, containing various book and scrolls."

    south = HighCathedral
    
;

+ReadingDesk:  Surface
    'reading desk/oak desk/desk'
    'reading desk'
    "It's a small oak desk, just big enough for a single book or scroll."
    inRoomDesc = " A small, oak desk sits in the center of the room, to be used by anyone who wishes to do a little light reading!"
;
++ CrystalGlobe: LightSource
    'crystal globe/globe'
    'crystal globe'
    "A tiny globe, made of crystal and attached to the desk, shines with a faint, silver light. 
    The eerie, pearlescent glow is just bright enought to illuminate the room."
    isLit = true
    brightness = 3
    
;