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
    text("Fatman"      ,  xBound + width*(.075), yBound + height*(.25) );
}//end subMenu2_1()