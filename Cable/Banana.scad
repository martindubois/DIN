
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2025 KMS
// Product   DIN
// File      Cable/Banana.scad

use <C:\_VC\Base3D\Cylinder.scad>

Banana();

module Banana()
{
    difference()
    {
        union()
        {
            scale( [ 1, 1, SIZE_Z / 12.9 ] )
                import( "../Small.stl" );

            for ( y = [ 0, BA_DX, 2 * BA_DX, 3 * BA_DX ] )
            {
                translate( [ 0, - TICK + y, 0 ] )
                    cube( [ BA_X - TICK, TICK, SIZE_Z ] );
            }

            translate( [ BA_X - TICK, - TICK, 0 ] )
                cube( [ TICK, 3 * BA_DX + TICK, SIZE_Z ] );
        }

        // Holes
        translate( [ 0, 0, SIZE_Z / 2 ] )
        {
            translate( [ BA_R + 0.5, - TICK - EPS, 0 ] )
                Cylinder_Y( 2 * EPS + TICK, BA_R, 32 );

            translate( [ BA_R + 0.5, 0, 0 ] )
                Cylinder_Y( BA_DX - TICK, BA_R + 1, 32 );

            for ( y = [ BA_R + 0.5, BA_R + 0.5 + BA_DX, BA_R + 0.5 + 2 * BA_DX ] )
            {
                translate( [ BA_X - TICK - EPS, y, 0 ] )
                    Cylinder_X( 2 * EPS + TICK, BA_R, 32 );

                translate( [ 0, y, 0 ] )
                    Cylinder_X( BA_X - TICK, BA_R + 1, 32 );
            }
        }
    }
}

// Private
// //////////////////////////////////////////////////////////////////////////

BA_DX = 13;
BA_R  =  2.3;
BA_X  = 15;

EPS = 0.1;

SIZE_Z = 12.9;

TICK = 2;
