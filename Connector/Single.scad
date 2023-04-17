
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2022 KMS
// Product   DIN
// File      Connector/Single.scad

Single();

module Single()
{
    scale( [ 1, 1, SIZE_Z / 12.9 ] )
        import( "../Small.stl" );

    difference()
    {
        union()
        {
            translate( [ - 0.1, 0, 0 ] )
                cube( [ 10, 5, SIZE_Z ] );

            translate( [ - 0.1, 13, 0 ] )
                cube( [ 15, 12, SIZE_Z ] );

            translate( [ - 0.1, 25, 0 ] )
                cube( [ 15, 14, TICK ] );
        }

        lSizeZ = 2 * EPS + SIZE_Z;

        translate( [ 7, 2, - EPS ] )
            rotate( [ 0, 0, 45 ] )
                cube( [ CON_X, CON_Y, lSizeZ ] );

        translate( [ 5, 25, - EPS ] )
            cylinder( lSizeZ, 5, 5, $fn = 32 );

        translate( [ 2, 17, - EPS ] )
            cylinder( lSizeZ, 2, 2, $fn = 16 );

        translate( [ 2, 0, - EPS ] )
            cylinder( lSizeZ, 2, 2, $fn = 16 );

        translate( [ 10, 34, - EPS ] )
            cylinder( 2 * EPS + TICK, 2.5, 2.5, $fn = 16 );
           
    }
}

// Private
// //////////////////////////////////////////////////////////////////////////

CON_X = 18;
CON_Y = 10;

EPS = 0.1;

SIZE_Y = 20;
SIZE_Z = 30;

TICK = 2;
