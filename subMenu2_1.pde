// Draws the contents of menu 2 sub-menu 1
void subMenu2_1(float xBound, float yBound)
{
    int highLight = 0;
    int skip = 0;
    
    fill(40, 255, 40);
    text("WEAPONS", xBound + (width*(.84)/7)*2, yBound + height*(.07));
    fill(0, 170, 0);
    text("APPAREL", xBound + (width*(.84)/8)*3, yBound + height*(.07));
    fill(0, 100, 0);
    text("MISC"   , xBound + (width*(.88)/9)*4, yBound + height*(.07));
    
    fill(40, 255, 40);
    textAlign(LEFT, CENTER);
    
    inv=0;
    for(i=0; i<Weapons.size(); i++)
    {
        if(Weapons.get(i).qty != 0)
        {
            fill(40, 255, 40);
            textAlign(LEFT, CENTER);
            text(Weapons.get(i).name, xBound + width*(.075), yBound + height*(.175+(.05*inv)));
            
            inv++;
        }//end if
    }//end for
    
    skip = 0;
    highLight = checkVal(subNav-1, skip);
    skip = 0;
    
    rect(width*(.14), height*(.225+(.05*(subNav-1))), width*(.2575), height*(.05));
    fill(0, 0, 0);
    text(Weapons.get(highLight).name, xBound + width*(.075), yBound + height*(.175+(.05*(subNav-1))));
    
    fill(0, 100, 0);
    rect(xBound+width*(.5), yBound+height*(.5), 50, 50);
}//end subMenu2_1()

int checkVal(int check, int skip)
{
    if(check > inv)
    {
        return checkVal(0, skip);
    }
    else if(Weapons.get(check+skip).qty != 0)
    {
        return (check+skip);
    }//end else if
    else
    {
        skip++;
        return checkVal(check+skip, skip);
    }//end else
}//end checkVal