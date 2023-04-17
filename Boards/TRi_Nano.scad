
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2023 KMS
// Product   DIN
// File      Boards/TRi_Nano.scad

use <C:\_VC\Base3D\Cylinder.scad>
use <C:\_VC\Base3D\Metric\M3.scad>

TRi_Nano();

module TRi_Nano()
{
    difference()
    {
        union()
        {
            scale( [ 1, 1, SIZE_Z / 12.9 ] )
                import( "../Small.stl" );

            translate( [ - 1, - 28, 0 ] )
                cube( [ TICK, SIZE_Y, SIZE_Z ] );

            for ( y = [ - 25, - 25 + DIST_Y ] )
            {
                translate( [ 1, y, SIZE_Z / 2 ] )
                    Cylinder_X( 3, 2.1, 32 );
            }
        }

        for ( y = [ - 25, - 25 + DIST_Y ] )
        {
            translate( [ - 3 - EPS, y, SIZE_Z / 2 ] )
                M3_Thread_X(2 * EPS + 7 );
        }
    }
}

DIST_Y = 62.0;

EPS = 0.1;

SIZE_Y = 68.0;
SIZE_Z = 16.0;

TICK = 2;
