// Calculates if the mouse is in a given area of the screen
boolean Button(float x1, float y1, float x2, float y2)
{
    //If the mouse is pressed in the given region return true
    if(mouseX > x1 && mouseY > y1 && mouseX < x2 && mouseY < y2)
    {
        return true;
    }//end if
    else
    {
        return false;
    }//end else
}//end Button