
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2022 KMS
// Product   DIN
// File      Cable/Large.scad

Single( 7, 9 );

module Single( aR, aSlot )
{
    scale( [ 1, 1, SIZE_Z / 12.9 ] )
        import( "../Small.stl" );

    difference()
    {
        translate( [ 0, - TICK, 0 ] )
            cube( [ SIZE_X, TICK, SIZE_Z ] );

        translate( [ SIZE_X - aR - TICK, - EPS - TICK, SIZE_Z / 2 ] )
        {
            rotate( [ - 90, 0, 0 ] )
                cylinder( 2 * EPS + TICK, aR, aR, $fn = 32 );
        }

        translate( [ SIZE_X - aR - TICK, - EPS - TICK, SIZE_Z / 2 - aSlot / 2 ] )
            cube( [ aR + TICK + EPS, 2 * EPS + TICK, aSlot + EPS ] );
    }

    linear_extrude( TICK )
        polygon( points = [ [ 0, 0 ], [ 0, 40 ], [ SIZE_X, 0 ] ] );
}

// Private
// //////////////////////////////////////////////////////////////////////////

EPS = 0.1;

SIZE_X = 30;
SIZE_Z = 32;

TICK = 2;
