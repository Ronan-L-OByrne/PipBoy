// Draws the contents of menu 2 sub-menu 2
void subMenu2_2(float xBound, float yBound)
{
    int highLight = 0;
    int skip = 0;
    
    fill(40, 255, 40);
    text("APPAREL", xBound + (width*(.84)/7)*2, yBound + height*(.07));
    fill(0, 170, 0);
    text("MISC", xBound + (width*(.84)/8)*3, yBound + height*(.07));
    fill(0, 100, 0);
    text("Apparel"   , xBound + (width*(.88)/9)*4, yBound + height*(.07));
    fill(40, 255, 40);
    textAlign(LEFT, CENTER);
    
    invApp=0;
    for(i=0; i<Apparel.size(); i++)
    {
        if(Apparel.get(i).qty != 0)
        {
            fill(40, 255, 40);
            textAlign(LEFT, CENTER);
            text(Apparel.get(i).name, xBound + width*(.075), yBound + height*(.175+(.05*invApp)));
            
            invApp++;
        }//end if
    }//end for
    
    skip = 0;
    highLight = checkVal(subNav-1, skip, invApp, "A");
    skip = 0;
    
    rect(width*(.14), height*(.225+(.05*(subNav-1))), width*(.2575), height*(.05));
    fill(0, 0, 0);
    text(Apparel.get(highLight).name, xBound + width*(.075), yBound + height*(.175+(.05*(subNav-1))));
    
    if(Apparel.get(highLight).type.equals("A"))
    {
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
        text(Apparel.get(highLight).dmgRes, xBound+width*(.695), yBound+height*(.42));
        text(Apparel.get(highLight).radRes, xBound+width*(.695), yBound+height*(.47));
        text(Apparel.get(highLight).engRes, xBound+width*(.695), yBound+height*(.52));
        text(Apparel.get(highLight).weight, xBound+width*(.695), yBound+height*(.57));
        text(Apparel.get(highLight).value , xBound+width*(.695), yBound+height*(.62));
    }//end else if
    
}//end subMenu2_1()