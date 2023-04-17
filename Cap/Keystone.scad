
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2023 KMS
// Product   DIN
// File      Cap/Keystone.scad

use <Cap.scad>

Keystone();

module Keystone()
{
    difference()
    {
        union()
        {
            Cap( SIZE_X, SIZE_Z );

            translate( [ SIZE_X + 5, 10 - TICK, 0 ] )
                cube( [ 2, KEYSTONE_Y, SIZE_Z ] );

            translate( [ SIZE_X + 2, 11, 0 ] )
                cube( [ 3, 13, SIZE_Z ] );

            translate( [ SIZE_X + 2, 30, 0 ] )
                cube( [ 2, 3, SIZE_Z ] );
        }

        translate( [ SIZE_X, 10, ( SIZE_Z - KEYSTONE_Z ) / 2 ] )
            cube( [ 11, KEYSTONE_Y, KEYSTONE_Z ] );
    }
}

// Private
// //////////////////////////////////////////////////////////////////////////

KEYSTONE_Y = 16.5;
KEYSTONE_Z = 15.0;

SIZE_X = 35.0;
SIZE_Z = 25.0;

TICK = 3;
