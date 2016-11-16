// Draws the contents of menu 2 sub-menu 3
void subMenu2_3(float xBound, float yBound)
{
    fill(40, 255, 40);
    text("MISC", xBound + (width*(.84)/7)*2, yBound + height*(.07));
    fill(0, 170, 0);
    text("WEAPONS", xBound + (width*(.84)/8)*3, yBound + height*(.07));
    fill(0, 100, 0);
    text("APPAREL"   , xBound + (width*(.88)/9)*4, yBound + height*(.07));
    
    // Displays the users Miscilaneous items
    fill(40, 255, 40);
    textAlign(LEFT, CENTER);
    
    invMisc=0;
    for(int i=0; i<Miscellaneous.size(); i++)
    {
        text(Miscellaneous.get(i).name + " (" + Miscellaneous.get(i).qty + ")", xBound + width*(.075), yBound + height*(.175+(.05*invMisc)));
        
        invMisc++;
    }//end for
    
    rect(width*(.14), height*(.225+(.05*(subNav-1))), width*(.2575), height*(.05));
    fill(0, 0, 0);
    text(Miscellaneous.get(subNav-1).name + " (" + Miscellaneous.get(subNav-1).qty + ")", xBound + width*(.075), yBound + height*(.175+(.05*(subNav-1))));
    
    fill(0, 75, 0);
    rect(xBound+width*(.45), yBound+height*(.55), width*(.25) , height*(.040714));
    rect(xBound+width*(.45), yBound+height*(.6 ), width*(.25) , height*(.040714));
    
    fill(40, 255, 40);
    textAlign(LEFT, CENTER);
    text("Weight"    , xBound+width*(.455), yBound+height*(.569));
    text("Value"     , xBound+width*(.455), yBound+height*(.619));
    
    textAlign(RIGHT, CENTER);
    text(Miscellaneous.get(subNav-1).weight, xBound+width*(.695), yBound+height*(.57));
    text(Miscellaneous.get(subNav-1).value , xBound+width*(.695), yBound+height*(.62));
}//end subMenu2_3