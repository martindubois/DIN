
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2024 KMS
// Product   DIN
// File      Cable/Wall.scad

Wall();

module Wall()
{
    scale( [ 1, 1, SIZE_Z / 12.9 ] )
        import( "../Small.stl" );

    linear_extrude( TICK )
        polygon( points = [ [ 0, 0 ], [ 0, 40 ], [ SIZE_X, 0 ], [ SIZE_X, - 5 ] ] );
}

// Private
// //////////////////////////////////////////////////////////////////////////

EPS = 0.1;

SIZE_X = 35;
SIZE_Z = 12.9;

TICK = 2;
