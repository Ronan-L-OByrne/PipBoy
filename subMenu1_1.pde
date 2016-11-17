// Draws the contents of menu 1 sub-menu 1
void subMenu1_1(float xBound, float yBound)
{
    // Draws the animated walking Vault-Boy
    walkCycle.display(xBound+width*(.17), yBound+height*(.08571));
    
    fill(40, 255, 40);
    text("STATUS" ,  xBound + (width*(.84)/7)*1, yBound + height*(.07));
    fill(0, 170, 0);
    text("SPECIAL",  xBound + (width*(.84)/8)*2, yBound + height*(.07));
    fill(0, 100, 0);
    text("PERKS"  ,  xBound + (width*(.84)/9)*3, yBound + height*(.07));
    
    rect(xBound + width*(.25 ),  yBound + height*(.55), width*(.05) , height*(.07142));
    rect(xBound + width*(.305),  yBound + height*(.55), width*(.035), height*(.07142));
    rect(xBound + width*(.36 ),  yBound + height*(.55), width*(.05) , height*(.07142));
    rect(xBound + width*(.415),  yBound + height*(.55), width*(.025), height*(.07142));
    rect(xBound + width*(.445),  yBound + height*(.55), width*(.025), height*(.07142));
    
    // Crosshair
    drawCrosshair(.3983, .6425);
    
    // Lightning Bolt
    fill(40, 255, 40);
    triangle(xBound+width*(.426), yBound+height*(.552), xBound+width*(.434), yBound+height*(.552), xBound+width*(.424), yBound+height*(.568 ));
    rect    (xBound+width*(.425), yBound+height*(.563), width*(.01), height*(.00571));
    triangle(xBound+width*(.425), yBound+height*(.58) , xBound+width*(.435), yBound+height*(.5675), xBound+width*(.43), yBound+height*(.5675));
    
    // Radiation Symbol
    arc(xBound + width*(.4575), yBound + height*(.5675),   width*(.1)/5,   height*(.142857142)/5, HALF_PI*3.275, HALF_PI*4    );
    arc(xBound + width*(.4575), yBound + height*(.5675),   width*(.1)/5,   height*(.142857142)/5, HALF_PI*2    , HALF_PI*2.725);
    arc(xBound + width*(.4575), yBound + height*(.5675),   width*(.1)/5,   height*(.142857142)/5, HALF_PI*.65  , HALF_PI*1.35 );
    
    // Damage/Resistence Values
    fill(40, 255, 40);
    if(curEquipW == -1)
    {
        text("0", xBound + width*(.32375), yBound + height*(.602));  
    }//end if
    else
    {
        text(Weapons.get(curEquipW).damage, xBound + width*(.32375), yBound + height*(.602));
    }//end else
    text(curEngRes, xBound + width*(.4275), yBound + height*(.602));
    text(curRadRes, xBound + width*(.4575), yBound + height*(.602));
    
    //Gun
    drawGun(.33, .6375, 1);
    
    //Helmet
    fill(40, 255, 40);
    arc    (xBound + width*(.3855), yBound + height*(.59), width*(.0345),   height*(.052), HALF_PI*2, HALF_PI*4);
    ellipse(xBound + width*(.385) , yBound + height*(.59), width*(.041) ,   height*(.01) );
    rect   (xBound + width*(.385) , yBound + height*(.59), width*(.016) ,   height*(.01)  , 10);
    rect   (xBound + width*(.3725), yBound + height*(.56), width*(.0285),   height*(.0325), 20);
    
    //Status Bars
    rect(xBound + (width*(.35)), yBound + height*(.5) , width*(.05), height*(.01428));
    rect(xBound + (width*(.25)), yBound + height*(.45), width*(.05), height*(.01428));
    rect(xBound + (width*(.25)), yBound + height*(.25), width*(.05), height*(.01428));
    rect(xBound + (width*(.35)), yBound + height*(.12), width*(.05), height*(.01428));
    rect(xBound + (width*(.45)), yBound + height*(.45), width*(.05), height*(.01428));
    rect(xBound + (width*(.45)), yBound + height*(.25), width*(.05), height*(.01428));
}//end submenu()