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
    
    invWea=0;
    for(i=0; i<Weapons.size(); i++)
    {
        if(Weapons.get(i).qty != 0)
        {
            fill(40, 255, 40);
            textAlign(LEFT, CENTER);
            text(Weapons.get(i).name, xBound + width*(.075), yBound + height*(.175+(.05*invWea)));
            
            invWea++;
        }//end if
    }//end for
    
    skip = 0;
    highLight = checkVal(subNav-1, skip, invWea, "W");
    skip = 0;
    
    rect(width*(.14), height*(.225+(.05*(subNav-1))), width*(.2575), height*(.05));
    fill(0, 0, 0);
    text(Weapons.get(highLight).name, xBound + width*(.075), yBound + height*(.175+(.05*(subNav-1))));
    
    if(Weapons.get(highLight).type.equals("R"))
    {
        fill(0, 100, 0);
        rect(xBound+width*(.45) , yBound+height*(.3) , width*(.17) , height*(.040714));
        rect(xBound+width*(.625), yBound+height*(.3) , width*(.075), height*(.040714));
        rect(xBound+width*(.45) , yBound+height*(.35), width*(.25) , height*(.040714));
        fill(0, 75, 0);
        rect(xBound+width*(.45), yBound+height*(.4 ), width*(.25)  , height*(.040714));
        rect(xBound+width*(.45), yBound+height*(.45), width*(.25)  , height*(.040714));
        rect(xBound+width*(.45), yBound+height*(.5 ), width*(.25)  , height*(.040714));
        rect(xBound+width*(.45), yBound+height*(.55), width*(.25)  , height*(.040714));
        rect(xBound+width*(.45), yBound+height*(.6 ), width*(.25)  , height*(.040714));
        
        fill(40, 255, 40);
        textAlign(LEFT, CENTER);
        text("Damage"   , xBound+width*(.455), yBound+height*(.319));
        text("Ammo"     , xBound+width*(.455), yBound+height*(.369));
        text("Fire Rate", xBound+width*(.455), yBound+height*(.419));
        text("Range"    , xBound+width*(.455), yBound+height*(.469));
        text("Accuracy" , xBound+width*(.455), yBound+height*(.519));
        text("Weight"   , xBound+width*(.455), yBound+height*(.569));
        text("Value"    , xBound+width*(.455), yBound+height*(.619));
        
        textAlign(RIGHT, CENTER);
        text(Weapons.get(highLight).damage  , xBound+width*(.695), yBound+height*(.32));
        text(Weapons.get(highLight).damage  , xBound+width*(.695), yBound+height*(.37));
        text(Weapons.get(highLight).fireRate, xBound+width*(.695), yBound+height*(.42));
        text(Weapons.get(highLight).range   , xBound+width*(.695), yBound+height*(.47));
        text(Weapons.get(highLight).accuracy, xBound+width*(.695), yBound+height*(.52));
        text(Weapons.get(highLight).weight  , xBound+width*(.695), yBound+height*(.57));
        text(Weapons.get(highLight).value   , xBound+width*(.695), yBound+height*(.62));
        drawCrosshair(.715, .395);
    }//end if
    else if(Weapons.get(highLight).type.equals("M"))
    {
        fill(0, 100, 0);
        rect(xBound+width*(.45) , yBound+height*(.45 ), width*(.17) , height*(.040714));
        rect(xBound+width*(.625), yBound+height*(.45 ), width*(.075), height*(.040714));
        fill(0, 75, 0);
        rect(xBound+width*(.45), yBound+height*(.5 ), width*(.25) , height*(.040714));
        rect(xBound+width*(.45), yBound+height*(.55), width*(.25) , height*(.040714));
        rect(xBound+width*(.45), yBound+height*(.6 ), width*(.25) , height*(.040714));
        
        fill(40, 255, 40);
        textAlign(LEFT, CENTER);
        text("Damage", xBound+width*(.455), yBound+height*(.469));
        text("Speed" , xBound+width*(.455), yBound+height*(.519));
        text("Weight", xBound+width*(.455), yBound+height*(.569));
        text("Value" , xBound+width*(.455), yBound+height*(.619));
        
        textAlign(RIGHT, CENTER);
        text(Weapons.get(highLight).damage   , xBound+width*(.695), yBound+height*(.47));
        text(Weapons.get(highLight).speed, xBound+width*(.695), yBound+height*(.52));
        text(Weapons.get(highLight).weight  , xBound+width*(.695), yBound+height*(.57));
        text(Weapons.get(highLight).value   , xBound+width*(.695), yBound+height*(.62));
        drawCrosshair(.715, .545);
    }//end else if
    
}//end subMenu2_1()

int checkVal(int check, int skip, int inv, String type)
{
  
    if(check > inv)
    {
        return checkVal(0, skip, inv, type);
    }
    else if(type.equals("W"))
    {
        if(Weapons.get(check+skip).qty != 0)
        {
            
            return (check+skip);
        }//end else if
    }//end else if
    else if(type.equals("A"))
    {
        if(Apparel.get(check+skip).qty != 0)
        {
            
            return (check+skip);
        }//end else if
    }//end else if
        skip++;
        return checkVal(check+skip, skip, inv, type);
        
    
}//end checkVal()