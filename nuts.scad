// Honest nuts. A library of ISO standardized nuts , and only nuts. 
// From M2 -> M12 sizes

use <onestShapes/circlegon.scad>;

// Defined nuts sizes. Only whole nutnumbers are saved
flatWidth = [0.0,       // M0 - Not supported
             0.0,       // M1 - Not supported
             4.0,       // M2
             5.5,       // M3
             7.0,       // M4
             8.0,       // M5
             10.0,      // M6
             0.0,       // M7 - Does not exist
             13.0,      // M8
             0.0,       // M9 - Does not exist
             16.0,      // M10
             0.0,       // M11 - Does not exist
             18.0];     // M12

cornerWidth = [0.0,     // M0 - Not supported
               0.0,     // M1 - Not supported
               3.82,    // M2
               5.32,    // M3
               6.78,    // M4
               7.78,    // M5
               9.78,    // M6
               0.0,     // M7 - Does not exist
               12.73,   // M8
               0.0,     // M9 - Does not exist
               15.73,   // M10
               0.0,     // M11 - Does not exist
               17.73];  // M12

// thickness numbers are wrong. I need a better caliber to test it. 
thickness   = [0.0,     // M0 - Not supported
               0.0,     // M1 - Not supported
               1.6,     // M2
               2.4,     // M3
               3.2,     // M4
               4.0,     // M5
               5.0,     // M6
               0.0,     // M7 - Does not exist
               6.5,     // M8
               0.0,     // M9 - Does not exist
               8.0,     // M10
               0.0,     // M11 - Does not exist
               10.0];   // M12



// A baseNut is the basis of the nut without holes or anything else 
module baseNut(mSize)
{
    if (mSize > 0 && mSize <= 12)
    {
        linear_extrude(height = thickness[mSize]) {
            circlegon(numSides = 6, radius = cornerWidth[mSize]/2);
        } 
        
    }
}               

// A nutCutOut can be used to cut out material where the nut thicknes is cut out plus a cylinder 
// given by the depth parameter to be used in a difference command.
module nutCutOut(mSize, depth)
{
    // The base nut
    baseNut(mSize = mSize);

    // Create the cut out cylinder
    cylinder(h= depth, r=mSize / 2, $fn=50);
}