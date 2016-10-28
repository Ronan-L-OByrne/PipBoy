void drawGun(float x, float y)
{
    // Draws a gun based off an x and y variable passed into the function
    fill(40, 255, 40);
    rect(width*(x), height*(y), width*(.04), height*(.01428), 3);
    triangle(width*(x+.01), height*(y)     , width*(x+.038), height*(y+.045), width*(x+.035), height*(y)     );
    triangle(width*(x+.03), height*(y+.045), width*(x+.038), height*(y+.045), width*(x+.018), height*(y+.005));
    rect(width*(x+.016), height*(y+.015) , width*(.007), height*(.01), 5);
    fill(0, 100, 0);
    rect(width*(x+.0166), height*(y+.016), width*(.0065), height*(.009), 5);
}//end drawGun()=