
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2024 KMS
// Product   DIN
// File      Box/Power.scad

Power();

module Power()
{
    for ( z = [ 0, SIZE_Z - 12.9 ] )
    {
        translate( [ 0, 0, z ] )
        {
            import( "../Small.stl" );
        }
    }

    difference()
    {
        translate( [ - 1, OFFSET_X, 0 ] )
            cube( [ SIZE_X, SIZE_Y, SIZE_Z ] );

        translate( [ - 1 + TICK, OFFSET_X - EPS, TICK ] )
            cube( [ POWER_X, SIZE_Y - TICK + EPS, POWER_Z ] );

        translate( [ 10, OFFSET_X - EPS, ( SIZE_Z - CABLE_Z ) / 2 ] )
            cube( [ SIZE_X - 10 + EPS, 2 * EPS + SIZE_Y, CABLE_Z ] );

        translate( [ SIZE_X / 2, OFFSET_X + SIZE_Y / 2 - 5, - EPS ] )
        {
            scale( [ 1, 1.5, 1 ] )
                cylinder( 2 * EPS + SIZE_Z, 16, 16, $fn = 64 );
        }
    }
}

CABLE_Z = 30;

EPS = 0.1;

OFFSET_X = - 34;

POWER_X = 32;
POWER_Z = 52;

TICK = 2;

SIZE_X = POWER_X + 2 * TICK;
SIZE_Y = 75;
SIZE_Z = POWER_Z + 2 * TICK;