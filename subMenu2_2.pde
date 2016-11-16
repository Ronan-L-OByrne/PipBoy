// Draws the contents of menu 2 sub-menu 2
void subMenu2_2(float xBound, float yBound)
{
    fill(40, 255, 40);
    text("APPAREL", xBound + (width*(.84)/7)*2, yBound + height*(.07));
    fill(0, 170, 0);
    text("MISC", xBound + (width*(.84)/8)*3, yBound + height*(.07));
    fill(0, 100, 0);
    text("WEAPONS"   , xBound + (width*(.88)/9)*4, yBound + height*(.07));
    
    // Displays the users Apparel
    fill(40, 255, 40);
    textAlign(LEFT, CENTER);
    
    invApp=0;
    for(int i=0; i<Apparel.size(); i++)
    {
        text(Apparel.get(i).name + " (" + Apparel.get(i).qty + ")", xBound + width*(.075), yBound + height*(.175+(.05*invApp)));
        
        if(Apparel.get(i).equipped)
        {
            rect(xBound + width*(.04), yBound + height*(.165+(.05*i)), 15, 15);
        }//end if
        
        invApp++;
    }//end for
    
    rect(width*(.14), height*(.225+(.05*(subNav-1))), width*(.2575), height*(.05));
    fill(0, 0, 0);
    text(Apparel.get(subNav-1).name + " (" + Apparel.get(subNav-1).qty + ")", xBound + width*(.075), yBound + height*(.175+(.05*(subNav-1))));
    
    fill(0, 100, 0);
    rect(xBound+width*(.45) , yBound+height*(.4 ), width*(.17) , height*(.040714));
    rect(xBound+width*(.625), yBound+height*(.4 ), width*(.075), height*(.040714));
    rect(xBound+width*(.45) , yBound+height*(.45), width*(.17) , height*(.040714));
    rect(xBound+width*(.625), yBound+height*(.45), width*(.075), height*(.040714));
    rect(xBound+width*(.45) , yBound+height*(.5 ), width*(.17) , height*(.040714));
    rect(xBound+width*(.625), yBound+height*(.5 ), width*(.075), height*(.040714));
    fill(0, 75, 0);
    rect(xBound+width*(.45), yBound+height*(.55), width*(.25) , height*(.040714));
    rect(xBound+width*(.45), yBound+height*(.6 ), width*(.25) , height*(.040714));
    
    fill(40, 255, 40);
    textAlign(LEFT, CENTER);
    text("DMG Resist", xBound+width*(.455), yBound+height*(.419));
    text("RAD Resist", xBound+width*(.455), yBound+height*(.469));
    text("ENG Resist", xBound+width*(.455), yBound+height*(.519));
    text("Weight"    , xBound+width*(.455), yBound+height*(.569));
    text("Value"     , xBound+width*(.455), yBound+height*(.619));
    
    textAlign(RIGHT, CENTER);
    text(Apparel.get(subNav-1).dmgRes, xBound+width*(.695), yBound+height*(.42));
    text(Apparel.get(subNav-1).radRes, xBound+width*(.695), yBound+height*(.47));
    text(Apparel.get(subNav-1).engRes, xBound+width*(.695), yBound+height*(.52));
    text(Apparel.get(subNav-1).weight, xBound+width*(.695), yBound+height*(.57));
    text(Apparel.get(subNav-1).value , xBound+width*(.695), yBound+height*(.62));
    
}//end subMenu2_1()