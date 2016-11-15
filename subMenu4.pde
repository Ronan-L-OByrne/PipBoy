// Draws the contents of menu 4, the Map
void subMenu4(float xBound, float yBound)
{
    Map.display(xBound+width*(.075), yBound+height*(.055));
    
    //Map = new Animation("Map_", 1 , (int)(width*(.6) ), (int)(height*(.645)));
    if(mouseX > xBound+width*(.085) && mouseY > yBound+height*(.077) && mouseX < xBound+width*(.065)+width*(.6) && mouseY < yBound+height*(.037)+height*(.645))
    {
        //copy(cx, cy, cw, ch, rx, ry, rw, rh);
        copy((int)(mouseX-(width*(.025))), (int)(mouseY-(height*(.035714285))), (int)(width*(.05)), (int)(height*(.071428571))
           , (int)(mouseX-(width*(.05))), (int)(mouseY -(height*(.071428571))), (int)(width*(.05))*2 , (int)(height*(.071428571))*2);
           
        strokeWeight(1);
        stroke(40, 255, 40);
        noFill();
        rect((int)(mouseX-(width*(.05))), (int)(mouseY-(height*(.071428571))), (int)(width*(.05)*2), (int)(height*(.071428571)*2));
        line(mouseX, yBound+height*(.055), mouseX, (yBound+height*(.055))+(height*(.645)));
        line(xBound+width*(.075), mouseY , (xBound+width*(.075))+(width*(.6)), mouseY);
        noStroke();
    }//end if
}//end subMenu4()