
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2023 KMS
// Product   DIN
// File      Cap/Cap.scad

Cap( 30.0, 10.0 );

module Cap( aSizeX, aSizeZ )
{
    for ( y = [ - TICK, DIN_Y - TICK ] )
    {
        translate( [ 0, y, 0 ] )
            cube( [ TICK, 2 * TICK, aSizeZ ] );
    }

    translate( [ 5, DIN_Y - 2, 0 ] )
        cube( [ aSizeX, 5, aSizeZ ] );

    difference()
    {
        translate( [ 5, - TICK, 0 ] )
            cube( [ aSizeX - 2, 5, aSizeZ ] );

        translate( [ aSizeX / 2 + 1, - TICK - 4, - EPS ] )
            cylinder( 2 * EPS + aSizeZ, 6, 6, $fn = 32 );
    }

    for ( y = [ - TICK, DIN_Y ] )
    {
        translate( [ TICK, y, 0 ] )
            cube( [ 2, TICK, aSizeZ ] );
    }

    difference()
    {
        for ( y = [ - 3, DIN_Y + 3 - 5 ] )
        {
            translate( [ aSizeX + 5, y, 0 ] )
                cylinder( aSizeZ, CORNER_R, CORNER_R, $fn = 32 );
        }

        translate( [ aSizeX + 0.5, DIN_Y - 9, - EPS ] )
            cylinder( 2 * EPS + aSizeZ, 7, 7, $fn = 32 );

        translate( [ aSizeX + 5, - TICK, - EPS ] )
            cylinder( 2 * EPS + aSizeZ, 2, 2, $fn = 16 );

        translate( [ aSizeX + 5 - 2, - TICK, - EPS ] )
            cube( [ 4, 5, 2 * EPS + aSizeZ ] );
    }

    translate( [ aSizeX + 7, - TICK, 0 ] )
        cube( [ TICK, DIN_Y + 1, aSizeZ ] );

    translate( [ 2, - 10, 0 ] )
        cube( [ TICK, 7, aSizeZ ] );

    translate( [ 2, - 10 - TICK, 0 ] )
        cube( [ aSizeX / 2, TICK, aSizeZ ] );

    translate( [ aSizeX / 2, - 10, 0 ] )
        cube( [ 2, 3, aSizeZ ] );
}

// Private
// //////////////////////////////////////////////////////////////////////////

CORNER_R = 5.0;

DIN_Y = 35;

EPS = 0.1;

TICK = 3.0;
