
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2022 KMS
// Product   DIN
// File      Adapter/Track.scad

use <C:\_VC\Base3D\Inch.scad>

Track2();

module Track()
{
    scale( [ 1, 1, SIZE_Z / 12.9 ] )
        import( "../Small.stl" );

    difference()
    {
        translate( [ 0, - 2, 0 ] )
            cube( [ TICK + TRACK_X, 2 * TICK + TRACK_Y, SIZE_Z ] );

        translate( [ 0, TICK - 2, - EPS ] )
            cube( [ TRACK_X, TRACK_Y, 2 * EPS + SIZE_Z ] );
    }
}

module Track2()
{
    scale( [ 1, 1, SIZE_Z / 12.9 ] )
        import( "../Small.stl" );

    difference()
    {
        translate( [ 0, - 2, 0 ] )
            cube( [ 2 * TICK + 2 * TRACK_X, 2 * TICK + TRACK_Y, SIZE_Z ] );

        for ( x = [ 0, TRACK_X + TICK ] )
        {
            translate( [ x, TICK - 2, - EPS ] )
                cube( [ TRACK_X, TRACK_Y, 2 * EPS + SIZE_Z ] );
        }
    }
}

// Private
// //////////////////////////////////////////////////////////////////////////

EPS = 0.1;

SIZE_Z = 12.9;

TICK = 2;

TRACK_X = 0.8 + Inch_to_mm( 1 / 8 );
TRACK_Y = 0.4 + Inch_to_mm( 3 / 4 );
