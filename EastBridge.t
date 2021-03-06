#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

/*
 *   EastBridge.t 
 Author: Barry Eichelberger 
 Date: 10/15/2013 
 Maintenance Log:
    11/10/2014 Added Fake Connector to North exit. BE
 */
EastBridge: OutdoorRoom 
    name = '<font color="#00ff00">East Bridge</font>'
    desc = "<hr/>A rickety, wooden bridge leading over the Volta River. It is barely wide enough for one person use."

    south = NorthMainStreet
    north: FakeConnector {"The bridge is closed for repairs. The next person who tires to cross will likely fall into the river and drown. 
        At least, that\'s what happened to the last person that tried to use the bridge."}
;
