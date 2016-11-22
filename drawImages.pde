// Holds the draw functions used to draw simple images that are used several times
// Draws a Gun
void drawGun(float x, float y, float scalar)
{
    // Draws a gun based off an x and y variable passed into the function
    fill    (40, 255, 40);
    rect    (width*(x)      *scalar, height*(y)     *scalar, width*(.04)   *scalar, height*(.01428)*scalar, (width+height)*(.001764705));
    triangle(width*(x+.01)  *scalar, height*(y)     *scalar, width*(x+.038)*scalar, height*(y+.045)*scalar, width*(x+.035)*scalar, height*(y)     *scalar);
    triangle(width*(x+.03)  *scalar, height*(y+.045)*scalar, width*(x+.038)*scalar, height*(y+.045)*scalar, width*(x+.018)*scalar, height*(y+.005)*scalar);
    rect    (width*(x+.016) *scalar, height*(y+.004)*scalar, width*(.007)  *scalar, height*(.02)   *scalar, (width+height)*(.002941176));
    fill    (0, 100, 0);
    rect    (width*(x+.0166)*scalar, height*(y+.014)*scalar, width*(.006)  *scalar, height*(.0085) *scalar, (width+height)*(.002941176));
}//end drawGun()

// Draws a Crosshair
void drawCrosshair(float x,float y)
{
    // Draws a Crosshair based off an x and y variable passed into the function
    fill   (40, 255, 40);
    ellipse(width*(x)      , height*(y)      , width*(.012) , height*(.017142));
    rect   (width*(x-.0015), height*(y-.0125), width*(.003) , height*(.025714));
    rect   (width*(x-.009) , height*(y-.0025), width*(.018) , height*(.004285));
    fill   (0, 100, 0);
    ellipse(width*(x) , height*(y), width*(.0075), height*(.0107142));
}//end drawCrosshair()