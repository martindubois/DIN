
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2024 KMS
// Product   DIN
// File      Other/MiniScrewDriver.scad

MiniScrewDriver();

module MiniScrewDriver()
{
    difference()
    {
        union()
        {
            scale( [ 1, 1, SIZE_Z / 12.9 ] )
                import( "../Small.stl" );

            translate( [ 3, 20, SIZE_Z / 2 ] )
                rotate( [ 90, 0, 0 ] )
                    cylinder( 20, SIZE_R, SIZE_R, $fn = 32 );
        }

        translate( [ 3, 8 - EPS, SIZE_Z / 2 ] )
            rotate( [ 90, 0, 0 ] )
                cylinder( EPS + 8.5, 3, 3, $fn = 32 );

        translate( [ 3, 42, SIZE_Z / 2 ] )
            rotate( [ 90, 0, 0 ] )
                cylinder( 60, 1.5, 1.5, $fn = 16 );

        translate( [ 7, 0, 0 ] )
            cylinder( SIZE_Z, 7, 7, $fn = 32 );
    }
}

EPS = 0.1;

SIZE_Z = 10;
SIZE_R = SIZE_Z / 2;