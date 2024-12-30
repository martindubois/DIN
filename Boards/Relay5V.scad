
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2024 KMS
// Product   DIN
// File      Boards/Relay5V.scad

use <C:\_VC\Base3D\Cylinder.scad>
use <C:\_VC\Base3D\Metric\M3.scad>

Relay5V();

module Relay5V()
{
    difference()
    {
        union()
        {
            scale( [ 1, 1, SIZE_Z / 12.9 ] )
                import( "../Small.stl" );

            translate( [ - 1, - 16, 0 ] )
                cube( [ TICK, SIZE_Y, SIZE_Z ] );

            for ( y = [ 0, HOLE_DY ] )
            {
                translate( [ 1, HOLE_FIRST_Y + y, SIZE_Z / 2 ] )
                    Cylinder_X( POLE_X, POLE_R, 32 );
            }
        }

        for ( y = [ 0, HOLE_DY ] )
        {
            translate( [ - 3 - EPS, HOLE_FIRST_Y + y, SIZE_Z / 2 ] )
                M3_Thread_X( 2 * EPS + POLE_X + TICK + 2 );
        }
    }
}

EPS = 0.1;

HOLE_DY      = 46.0;
HOLE_FIRST_Y = - 13;

POLE_R = 3;
POLE_X = 3;

SIZE_Y = 52.0;
SIZE_Z = 16.0;

TICK = 2;

