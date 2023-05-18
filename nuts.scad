// Honest nuts. A library of ISO standardized nuts , and only nuts. 
// From M2 -> M12 sizes

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
               4.62,    // M2
               6.35,    // M3
               8.08,    // M4
               9.24,    // M5
               11.55,   // M6
               0.0,     // M7 - Does not exist
               15.01,   // M8
               0.0,     // M9 - Does not exist
               18.48,   // M10
               0.0,     // M11 - Does not exist
               20.78];  // M12

n = 6;
radius = 20;
function point(r, a) = [r*cos(a), r*sin(a)];
function reg_poly_points(n) = 
[for (i = [0:360/n:360-1]) point(radius, i)];
echo(reg_poly_points(n));
polygon(reg_poly_points(n));

module baseNut(mSize)
{
    if (mSize > 0 && mSize <= 12)
    {
        /*
        function point(r, a) = [r*cos(a), r*sin(a)];
        n = 6;
        radius = 20; // /cornerWidth[mSize] / 2;
        
        function reg_poly_points(n) = [for (i = [0:360/n:360-1]) point(radius, i)];
        echo(reg_poly_points(n));
        polygon(reg_poly_points(n));
        //circle(r = cornerWidth[mSize] / 2);
        */
    }
}               

baseNut(12);