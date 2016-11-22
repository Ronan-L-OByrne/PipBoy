// Draws the contents of menu 2 sub-menu 1
void subMenu2_1(float xBound, float yBound)
{
    fill(40, 255, 40);
    text("WEAPONS", xBound + (width*(.84)/7)*2, yBound + height*(.07));
    fill(0, 170, 0);
    text("APPAREL", xBound + (width*(.84)/8)*3, yBound + height*(.07));
    fill(0, 100, 0);
    text("MISC"   , xBound + (width*(.88)/9)*4, yBound + height*(.07));
    
    // Displayes the names of various Weapons
    fill(40, 255, 40);
    textAlign(LEFT, CENTER);
    for(int i=0; i<Weapons.size(); i++)
    {
        text(Weapons.get(i).name +" ("+ Weapons.get(i).qty+")", xBound + width*(.075), yBound + height*(.175+(.05*i)));
        
        // Marks the currently equiped Weapon
        if(Weapons.get(i).equipped)
        {
            rect(xBound + width*(.04), yBound + height*(.16+(.05*i)), width*(.02), height*(.028571428));
        }//end if
    }//end for
    
    rect(width*(.14), height*(.225+(.05*(subNav-1))), width*(.2575), height*(.05));
    fill(0, 0, 0);
    text(Weapons.get(subNav-1).name +" ("+ Weapons.get(subNav-1).qty+")", xBound + width*(.075), yBound + height*(.175+(.05*(subNav-1))));
    
    //Displays the data associated with the currently selected Ranged weapon
    if(Weapons.get(subNav-1).type.equals("R"))
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
        text(Weapons.get(subNav-1).damage  , xBound+width*(.695), yBound+height*(.32));
        text("0"                           , xBound+width*(.695), yBound+height*(.37));
        text(Weapons.get(subNav-1).fireRate, xBound+width*(.695), yBound+height*(.42));
        text(Weapons.get(subNav-1).range   , xBound+width*(.695), yBound+height*(.47));
        text(Weapons.get(subNav-1).accuracy, xBound+width*(.695), yBound+height*(.52));
        text(Weapons.get(subNav-1).weight  , xBound+width*(.695), yBound+height*(.57));
        text(Weapons.get(subNav-1).value   , xBound+width*(.695), yBound+height*(.62));
        drawCrosshair(.715, .395);
    }//end if
    //Displays the data associated with the currently selected Melee weapon
    else if(Weapons.get(subNav-1).type.equals("M"))
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
        text(Weapons.get(subNav-1).damage   , xBound+width*(.695), yBound+height*(.47));
        text(Weapons.get(subNav-1).speed, xBound+width*(.695), yBound+height*(.52));
        text(Weapons.get(subNav-1).weight  , xBound+width*(.695), yBound+height*(.57));
        text(Weapons.get(subNav-1).value   , xBound+width*(.695), yBound+height*(.62));
        drawCrosshair(.715, .545);
    }//end else if
    
}//end subMenu2_1()

// Draws the contents of menu 2 sub-menu 2
void subMenu2_2(float xBound, float yBound)
{
    fill(40, 255, 40);
    text("APPAREL", xBound + (width*(.84)/7)*2, yBound + height*(.07));
    fill(0, 170, 0);
    text("MISC", xBound + (width*(.84)/8)*3, yBound + height*(.07));
    fill(0, 100, 0);
    text("WEAPONS"   , xBound + (width*(.88)/9)*4, yBound + height*(.07));
    
    // Displayes the names of various apparel items
    fill(40, 255, 40);
    textAlign(LEFT, CENTER);
    for(int i=0; i<Apparel.size(); i++)
    {
        text(Apparel.get(i).name + " (" + Apparel.get(i).qty + ")", xBound + width*(.075), yBound + height*(.175+(.05*i)));
        
        // Marks the currently equiped items of apparel
        if(Apparel.get(i).equipped)
        {
            rect(xBound + width*(.04), yBound + height*(.16+(.05*i)), width*(.02), height*(.028571428));
        }//end if
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
    
    //Displays the Data associated with the various items of apparel
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

// Draws the contents of menu 2 sub-menu 3
void subMenu2_3(float xBound, float yBound)
{
    fill(40, 255, 40);
    text("MISC", xBound + (width*(.84)/7)*2, yBound + height*(.07));
    fill(0, 170, 0);
    text("WEAPONS", xBound + (width*(.84)/8)*3, yBound + height*(.07));
    fill(0, 100, 0);
    text("APPAREL"   , xBound + (width*(.88)/9)*4, yBound + height*(.07));
    
    // Displayes the names of various Miscellaneous items
    fill(40, 255, 40);
    textAlign(LEFT, CENTER);
    for(int i=0; i<Miscellaneous.size(); i++)
    {
        text(Miscellaneous.get(i).name + " (" + Miscellaneous.get(i).qty + ")", xBound + width*(.075), yBound + height*(.175+(.05*i)));
    }//end for
    
    rect(width*(.14), height*(.225+(.05*(subNav-1))), width*(.2575), height*(.05));
    fill(0, 0, 0);
    text(Miscellaneous.get(subNav-1).name + " (" + Miscellaneous.get(subNav-1).qty + ")", xBound + width*(.075), yBound + height*(.175+(.05*(subNav-1))));
    
    fill(0, 75, 0);
    rect(xBound+width*(.45), yBound+height*(.55), width*(.25) , height*(.040714));
    rect(xBound+width*(.45), yBound+height*(.6 ), width*(.25) , height*(.040714));
    
    //Displays the Data associated with the various Miscellaneous items
    fill(40, 255, 40);
    textAlign(LEFT, CENTER);
    text("Weight"    , xBound+width*(.455), yBound+height*(.569));
    text("Value"     , xBound+width*(.455), yBound+height*(.619));
    
    textAlign(RIGHT, CENTER);
    text(Miscellaneous.get(subNav-1).weight, xBound+width*(.695), yBound+height*(.57));
    text(Miscellaneous.get(subNav-1).value , xBound+width*(.695), yBound+height*(.62));
}//end subMenu2_3