
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2022 KMS
// Product   DIN
// File      Small.scad

Small( 12.9 );

module Small( aSizeZ )
{
    difference()
    {
        translate( [ - 8.1, 0, 21 ] )
        {
            scale( [ 1, 1, aSizeZ / 12.9 ] )
                import( "ImportedSTL/Wago_DIN_triple.stl" );
        }

        translate( [ 0, - 6, - EPS ] )
            cube( [ 11, 45, 2 * EPS + aSizeZ ] );

        translate( [ - 3, 44.4, - EPS ] )
            cube( [ 14, 24, 2 * EPS + aSizeZ ] );

        translate( [ 5.5, 39, - EPS ] )
            cube( [ 8, 8, 2 * EPS + aSizeZ ] );
    }
}

// Private
// //////////////////////////////////////////////////////////////////////////

EPS = 0.1;
