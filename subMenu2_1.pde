// Draws the contents of menu 1 sub-menu 2
void subMenu2_1(float xBound, float yBound)
{
    fill(40, 255, 40);
    text("WEAPONS", xBound + (width*(.84)/7)*1, yBound + height*(.07));
    fill(0, 170, 0);
    text("APPAREL", xBound + (width*(.84)/8)*2, yBound + height*(.07));
    fill(0, 100, 0);
    text("MISC"   , xBound + (width*(.84)/9)*3, yBound + height*(.07));
    
    fill(40, 255, 40);
    textAlign(LEFT, CENTER);
    text("Baseball Bat",  xBound + width*(.075), yBound + height*(.175));
    text("Fatman"      ,  xBound + width*(.075), yBound + height*(.225) );
    
    switch(subNav)
    {
        case 1:
        {
            rect(width*(.14), height*(.225), width*(.2575), height*(.05));
            fill(0, 0, 0);
            textAlign(LEFT, CENTER);
            weaponData(1);
            break;
            
        }//end case 1
        case 2:
        {
            rect(width*(.14), height*(.275), width*(.2575), height*(.05));
            fill(0, 0, 0);
            textAlign(LEFT, CENTER);
            text("Fatmat", xBound + width*(.075), yBound + height*(.225));
            killS.display(xBound+width*(.35), yBound+height*(.125));
            fill(40, 255, 40);
            text("Due to your close friendship with Robert \nMacCready you now get a 20% greater \nchance to hit enemy's heads in V.A.T.S."
            , xBound + width*(.365), yBound + height*(.55));
            break;
        }//end case 2
    }//end switch subNav
}//end subMenu2_1()