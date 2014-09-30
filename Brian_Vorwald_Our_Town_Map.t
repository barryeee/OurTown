#charset "us-ascii"

#include <adv3.h>
#include <en_us.h>

versionInfo : GameID
    name = 'Brian_Vorwald_Our_Town_Map'
    byline = 'By A Trizbort User'
    version = '1'
    desc = ''
;

NorthMainStreet: Room 'North Main Street'

    north = EastBridge
    south = TownSquare
    west = TownHall
    northeast = CathedralGate
;

TownHall: Room 'Town Hall'

    east = NorthMainStreet
;

CathedralGate: Room 'Cathedral Gate'

    east = TheTownCemetary
    southwest = NorthMainStreet
;

EastBridge: Room 'East Bridge'

    south = NorthMainStreet
;

TownSquare: Room 'Town Square'

    north = NorthMainStreet
    south = NewCharacterLounge
;

TheTownCemetary: Room 'The Town Cemetary'

    south = TheTomb
    east = TheTownCathedral
    west = CathedralGate
;

TheTomb: Room 'The Tomb'

    north = TheTownCemetary
    south = BelowtheTomb
    down = BelowtheTomb
;

BelowtheTomb: Room 'Below the Tomb'
    "You land in a dark cave, with the only light coming from the torches above. Dimly lit, there does not appear to be a path. Instead, the flickering light casts shadows against rotted, dirt covered, wooden caskets. A total of six caskets line the walls in front of you. Three caskets on each side, they lay on stone slabs cut out from the walls. Spiders and worms wiggle their way between the boards and onto the floor. One of the lids appears to be loose."

    north = TheTomb
    up = TheTomb
;

TheTownCathedral: Room 'The Town Cathedral'

    east = BehindtheAltar
    west = TheTownCemetary
;

BehindtheAltar: Room 'Behind the Altar'

    north = BellTower
    west = TheTownCathedral
;

BellTower: Room 'Bell Tower'

    south = BehindtheAltar
;

NewCharacterLounge: Room 'NewCharacterLounge'

    north = TownSquare
;

me: Actor
    location = NorthMainStreet
;

gameMain: GameMainDef
    initialPlayerChar = me
;

