
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2022 KMS
// Product   DIN
// File      Cable/Medium.scad

Double( 3.5, 4 );

module Double( aR, aSlot )
{
    scale( [ 1, 1, SIZE_Z / 12.9 ] )
        import( "../Small.stl" );

    difference()
    {
        translate( [ 0, - TICK, 0 ] )
            cube( [ SIZE_X, TICK, SIZE_Z ] );

        for ( x = [ 8, 27 ] )
        {
            translate( [ x, - EPS - TICK, SIZE_Z - aR - 1 ] )
            {
                rotate( [ - 90, 0, 0 ] )
                    cylinder( 2 * EPS + TICK, aR, aR, $fn = 32 );
            }

            translate( [ x - ( aSlot / 2 ), - EPS - TICK, SIZE_Z - aR ] )
                cube( [ aSlot, 2 * EPS + TICK, aR + EPS ] );
        }
    }

    linear_extrude( TICK )
        polygon( points = [ [ 0, 0 ], [ 0, 40 ], [ SIZE_X, 0 ] ] );
}

// Private
// //////////////////////////////////////////////////////////////////////////

EPS = 0.1;

SIZE_X = 35;
SIZE_Z = 12.9;

TICK = 2;
