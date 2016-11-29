// Draws the contents of menu 4, the Map
void menu4(float xBound, float yBound)
{
    // Displaye the map PNG
    Map.display(xBound+width*(.03), yBound+height*(.055))                                  ;
    //Sets the default position of the Zoom
    PVector Zoom = new PVector(width*(.5)+(width*(.025)), height*(.35)+height*(.035714285));
    float tempX, tempY;
    
    noFill()                                                                               ;
    strokeWeight(1)                                                                        ;
    stroke(40, 255, 40)                                                                    ;
    rect(xBound+width*(.03), yBound+height*(.055), (int)(width*(.6)), (int)(height*(.645)));
    
    // Checks if the mouse is over the Map
    if((mouseX > xBound+width*(.03) && mouseY > yBound+height*(.055) && mouseX < xBound+width*(.03)+width*(.6) && mouseY < yBound+height*(.055)+height*(.645)))
    {
        noCursor();
        //Changes the Zoom location to the mouse pointer
        Zoom.x = mouseX-(width*(.025))       ;
        Zoom.y = mouseY-(height*(.035714285));
        
        //Marks the currently zoomed location
        line(mouseX, yBound+height*(.055), mouseX, (yBound+height*(.055))+(height*(.644)));
        line(xBound+width*(.03), mouseY , (xBound+width*(.03))+(width*(.6)), mouseY)      ;
        
        //Takes a section of the screen and re-draws it larger in a different loactation
        //copy(cx, cy, cw, ch, rx, ry, rw, rh);
        copy((int)(Zoom.x)             , (int)(Zoom.y)             , (int)(width*(.05)), (int)(height*(.071428571)) ,
             (int)(xBound+width*(.642)), (int)(yBound+height*(.25)), (int)(width*(.1)) , (int)(height*(.142857142)));
        
        tempX = map(mouseX, xBound+width *(.03) , xBound+width *(.03) +width*(.6)   , 0, 100);
        tempY = map(mouseY, yBound+height*(.055), yBound+height*(.055)+height*(.645), 0, 100);
    }//end if
    else
    {
        cursor();
        //If the mouse is not on the screen it moves to a default location
        //Marks the currently zoomed location
        line(Zoom.x            , yBound+height*(.055), Zoom.x                           , (yBound+height*(.055))+(height*(.644)));
        line(xBound+width*(.03), Zoom.y              , (xBound+width*(.03))+(width*(.6)), Zoom.y)                                ;
        
        //Takes a section of the screen and re-draws it larger in a different loactation
        //copy(cx, cy, cw, ch, rx, ry, rw, rh);
        copy((int)(width*(.5))         , (int)(height*(.35))       , (int)(width*(.05)), (int)(height*(.071428571)) ,
             (int)(xBound+width*(.642)), (int)(yBound+height*(.25)), (int)(width*(.1)) , (int)(height*(.142857142)));
           
        tempX = map(width *(.5) +width *(.025)      , xBound+width*(.03)  , xBound+width *(.03) +width *(.6)  , 0, 100);
        tempY = map(height*(.35)+height*(.035714285), yBound+height*(.055), yBound+height*(.055)+height*(.645), 0, 100);
    }//end else

    textSize(((width+height)/2)*(.025))                          ;
    textAlign(LEFT, CENTER)                                      ;
    text("X: " + tempX, (int)(width*(.72)), (int)(height*(.5)))  ;
    text("Y: " + tempY, (int)(width*(.72)), (int)(height*(.535)));
    
    noFill()                                                                                     ;
    rect((int)(xBound+width*(.642)), (int)(yBound+height*(.25)), width*(.1), height*(.142857142));
    noStroke()                                                                                   ;
}//end menu4()