void drawGun(float x, float y)
{
    // Draws a gun based off an x and y variable passed into the function
    fill(40, 255, 40);
    rect(width*(x), height*(y), width*(.04), height*(.01428), 3);
    triangle(width*(x+.01), height*(y)     , width*(x+.038), height*(y+.045), width*(x+.035), height*(y)     );
    triangle(width*(x+.03), height*(y+.045), width*(x+.038), height*(y+.045), width*(x+.018), height*(y+.005));
    rect(width*(x+.016), height*(y+.004) , width*(.007), height*(.02), 5);
    fill(0, 100, 0);
    rect(width*(x+.0166), height*(y+.014), width*(.006), height*(.0085), 5);
}//end drawGun()

void drawCrosshair(float x,float y)
{
    // Draws a Crosshair based off an x and y variable passed into the function
    fill(40, 255, 40);
    ellipse(width*(x)     , height*(y)      , width*(.012) , height*(.017142) );
    rect   (width*(x-.0015), height*(y-.0125), width*(.003) , height*(.025714) );
    rect   (width*(x-.009), height*(y-.0025), width*(.018) , height*(.004285) );
    fill(0, 100, 0);
    ellipse(width*(x) , height*(y), width*(.0075), height*(.0107142));
}//end drawCrosshair()

/*
    fill(40, 255, 40);
    ellipse(xBound + width*(.3175), yBound + height*(.5675), width*(.012) , height*(.017142) );
    rect   (xBound + width*(.316) , yBound + height*(.555) , width*(.003) , height*(.025714) );
    rect   (xBound + width*(.3085), yBound + height*(.565) , width*(.018) , height*(.004285) );
    fill(0, 100, 0);
    ellipse(xBound + width*(.3175), yBound + height*(.5675), width*(.0075), height*(.0107142));
 */