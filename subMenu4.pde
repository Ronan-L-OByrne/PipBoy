// Draws the contents of menu 4, the Map
void subMenu4(float xBound, float yBound)
{
    Map.display(xBound+width*(.03), yBound+height*(.055));
    
    PVector Zoom = new PVector(width*(.5)+(width*(.025)), height*(.35)+height*(.035714285));
    
    //Map = new Animation("Map_", 1 , (int)(width*(.6) ), (int)(height*(.645)));
    noFill();
    strokeWeight(1);
    stroke(40, 255, 40);
    rect(xBound+width*(.03), yBound+height*(.055), (int)(width*(.6) ), (int)(height*(.645)));
    
    if((mouseX > xBound+width*(.03) && mouseY > yBound+height*(.055) && mouseX < xBound+width*(.03)+width*(.6) && mouseY < yBound+height*(.055)+height*(.645)))
    {
        Zoom.x = mouseX-(width*(.025));
        Zoom.y = mouseY-(height*(.035714285));
        
        line(mouseX, yBound+height*(.055), mouseX, (yBound+height*(.055))+(height*(.644)));
        line(xBound+width*(.03), mouseY , (xBound+width*(.03))+(width*(.6)), mouseY);
        
        //copy(cx, cy, cw, ch, rx, ry, rw, rh);
        copy((int)(Zoom.x), (int)(Zoom.y), (int)(width*(.05))  , (int)(height*(.071428571)),
             (int)(xBound+width*(.642)), (int)(yBound+height*(.25)), (int)(width*(.1)), (int)(height*(.142857142)));
    }//end if
    else
    {
        line(Zoom.x, yBound+height*(.055), Zoom.x, (yBound+height*(.055))+(height*(.644)));
        line(xBound+width*(.03), Zoom.y, (xBound+width*(.03))+(width*(.6)), Zoom.y);
        
        //copy(cx, cy, cw, ch, rx, ry, rw, rh);
        copy((int)(width*(.5)), (int)(height*(.35)), (int)(width*(.05))  , (int)(height*(.071428571)),
             (int)(xBound+width*(.642)), (int)(yBound+height*(.25)), (int)(width*(.1)), (int)(height*(.142857142)));
    }//end else
    noFill();
    rect((int)(xBound+width*(.642)), (int)(yBound+height*(.25)), width*(.1), height*(.142857142));
    noStroke();
}//end subMenu4()