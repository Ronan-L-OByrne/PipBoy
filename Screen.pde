// Draws the contents of the screen (ie. the different menues and contents)
void Screen(float xBound, float yBound)
{
    noStroke();
    
    fill(0, 0, 0)                                                                          ;
    rect(xBound, yBound, width*(.75), height*(.785714285), ((width+height)/2)*(.058823529));
    
    fill(40, 255, 40)                                                                                                                           ;
    rect(xBound + (width*(.2)/6), yBound + height*(.042), width*(.67), 1)                                                                       ;
    rect(xBound + ((width*(.84)/7)*menu)-width*(.0275), yBound + height*(.005), width*(.055), height*(.044285), ((width+height)/2)*(.011764705));
    fill(0, 0, 0)                                                                                                                               ;
    rect(xBound + ((width*(.84)/7)*menu)-width*(.0255), yBound + height*(.004), width*(.051), height*(.044285), ((width+height)/2)*(.011764705));
    
    fill(40, 255, 40)                                                                                               ;
    textAlign(CENTER,CENTER)                                                                                        ;
    textFont(globalFont, ((width+height)/2)*(.03))                                                                  ;
    text("STAT" , xBound + (width*(.84)/7)*1, yBound + height*(.0259))                                              ;
    text("INV"  , xBound + (width*(.84)/7)*2, yBound + height*(.0259))                                              ;
    text("DATA" , xBound + (width*(.84)/7)*3, yBound + height*(.0259))                                              ;
    text("MAP"  , xBound + (width*(.84)/7)*4, yBound + height*(.0259))                                              ;
    text("RADIO", xBound + (width*(.84)/7)*5, yBound + height*(.0259))                                              ;
    rect(xBound + (width*(.2)/6), height*(.075928571) + height*(.047), width*(.67), ((width+height)/2)*(.003529411));
    
    // Checks what menu the user is currently in
    if(Splash) // Displays the splash screen at the start of the program
    {
        SplashScrn(xBound, yBound);
    }//end if
    else
    {
        // Displays STAT screen
        if(menu == 1)
        {
            // Displays the STATUS screen
            if(subM == 1)
            {
                subMenu1_1(xBound, yBound);
            }//end if(subM)
            // Displays the SPECIAL screen
            else if(subM == 2)
            {
                subMenu1_2(xBound, yBound);
            }//end else if(subM)
            // Displays the PERKS screen
            else if(subM == 3)
            {
                subMenu1_3(xBound, yBound);
            }//end else if(subM)
            
            // Constant throughout all sub menus
            // Hp/Level/AP
            fill(0, 100, 0);
            rect(xBound + width*(.02), yBound + height*(.7),  width*(.175), height*(.040714));
            rect(xBound + width*(.2) , yBound + height*(.7),  width*(.355), height*(.040714));
            rect(xBound + width*(.56), yBound + height*(.7),  width*(.175), height*(.040714));
            
            textAlign(LEFT, CENTER)                                                                      ;
            fill(40, 255, 40)                                                                            ;
            text("HP " + player.Hp[1] + "/" + player.Hp[0], xBound + width*(.025), yBound + height*(.72));
            
            text("LEVEL " + player.Level,    xBound + width*(.205), yBound + height*(.72))      ;
            stroke(40, 255, 40)                                                                 ;
            fill(0, 75, 0)                                                                      ;
            rect(xBound + width*(.28),  yBound + height*(.7075), width*(.265), height*(.027585));
            fill(40, 255, 40)                                                                   ;
            rect(xBound + width*(.28),  yBound + height*(.7075), width*(.05) , height*(.027585));
            
            textAlign(RIGHT, CENTER)                                                                      ;
            fill(40, 255, 40)                                                                             ;
            text("AP " + player.Ap[1] + "/" + player.Ap[0],   xBound + width*(.73), yBound + height*(.72));
        }//end if(menu)
        // Displays INV (Inventory) sceen
        else if(menu == 2)
        {
            // Displays the WEAPONS screen
            if(subM == 1)
            {
                subMenu2_1(xBound, yBound);
            }//end if(subM)
            // Displays the APPAREL screen
            else if(subM == 2)
            {
                subMenu2_2(xBound, yBound);
            }//end else if(subM)
            // Displays the MISC screen
            else if(subM == 3)
            {
                subMenu2_3(xBound, yBound);
            }//end else if(subM)
            
            // Constant throughout all sub menus
            // Weight/Caps/Damage
            textAlign(LEFT, CENTER)                                                          ;
            fill(0, 100, 0)                                                                  ;
            rect(xBound + width*(.02), yBound + height*(.7),  width*(.175), height*(.040714));
            rect(xBound + width*(.2) , yBound + height*(.7),  width*(.355), height*(.040714));
            rect(xBound + width*(.56), yBound + height*(.7),  width*(.175), height*(.040714));
            
            fill(40, 255, 40)                                                                                      ;
            text("WEIGHT " + player.Weight + "/" + player.MaxWeight, xBound + width*(.0275), yBound + height*(.72));
            
            text("CAPS " + player.Caps,    xBound + width*(.23), yBound + height*(.72))          ;
            ellipse(xBound + width*(.215), yBound + height*(.72), width*(.02), height*(.0285714));
            fill(0, 100, 0)                                                                      ;
            textFont(PipBoy, ((width+height)/2)*(.025))                                          ;
            textAlign(CENTER,CENTER)                                                             ;
            text("C  ", xBound + width*(.218), yBound + height*(.72))                            ;
            
            textFont(globalFont, ((width+height)/2)*(.03));
            drawGun(.845, .913, .85)                      ;
            drawCrosshair(.765, .795)                     ;
            fill(40, 255, 40)                             ;
            if(curEquipW != -1)
            {
                if(curEquipW < Ranged_Weapons.size())
                {
                    text(Ranged_Weapons.get(curEquipW).damage                     , xBound + width*(.718), yBound + height*(.72));
                }//end if
                else
                {
                    text(Melee_Weapons.get(curEquipW-Ranged_Weapons.size()).damage, xBound + width*(.718), yBound + height*(.72));
                }//end if
            }//end if
            else
            {
                text("0",   xBound + width*(.718), yBound + height*(.72));
            }//end else
        }//end else if
        // Display the DATA or MAP screen
        else if(menu == 3 || menu == 4)
        {
            // Displays the DATA screen
            if(menu == 3)
            {
                // Displays the QUESTS screen
                if(subM == 1)
                {
                    subMenu3_1(xBound, yBound);
                }//end if
                // Displays the STATS screen
                if(subM == 2)
                {
                    subMenu3_2(xBound, yBound);
                }//end if
                // Displays the WORKSHOP screen
                if(subM == 3)
                {
                    subMenu3_3(xBound, yBound);
                }//end if
            }//end if
            //Displays the MAP screen
            else if(menu == 4)
            {
                menu4(xBound, yBound)                         ;
                textFont(globalFont, ((width+height)/2)*(.03));
            }//end else if
            
            // Constant throughout all sub menus
            // Date/Time
            textAlign(LEFT, CENTER)                                                          ;
            fill(0, 100, 0)                                                                  ;
            rect(xBound + width*(.02), yBound + height*(.7),  width*(.175), height*(.040714));
            rect(xBound + width*(.2) , yBound + height*(.7),  width*(.155), height*(.040714));
            rect(xBound + width*(.36), yBound + height*(.7),  width*(.375), height*(.040714));
            
            String period;
            if(hour()>=12)
            {
                period = "PM";
            }//end if
            else
            {
                period = "AM";
            }//end else
            
            fill(40, 255, 40)                                                                                          ;
            text(nf(month(), 2) +"."+ nf(day(),2 ) +"."+ (year()+271), xBound + width*(.028), yBound + height*(.72))   ;
            
            text(nf((hour()%12), 2) +":"+ nf(minute(),2) +" "+ period,    xBound + width*(.205), yBound + height*(.72));
        }//end else if
        // Displays the RADIO Screen
        else if(menu == 5)
        {
            menu5(xBound, yBound)                                                            ;
            fill(0, 100, 0)                                                                  ;
            rect(xBound + width*(.02), yBound + height*(.7),  width*(.715), height*(.040714));
        }//end else if
    }//end else
}//end Screen()

// The splash screen at the begining of the program
void SplashScrn(float xBound, float yBound)
{
    //Displays the Instructions for how to use the program
    fill(0, 0, 0)                                                                          ;
    rect(xBound, yBound, width*(.75), height*(.785714285), ((width+height)/2)*(.058823529));
    
    fill(40, 255, 40)                                                                                   ;
    textFont(globalFont, ((width+height)/2)*(.05))                                                      ;
    textAlign(CENTER,CENTER)                                                                            ;
    text("Welcome to your very own PipBoy 4000!", xBound+width*(.75)/2, yBound+height*(.1))             ;
    rect(xBound+width*(.05), yBound+height*(.135), width*(.65), height*(.005))                          ;
    fill(0, 215, 0)                                                                                     ;
    rect(xBound+width*(.06), yBound+height*(.145), width*(.63), height*(.0025))                         ;
    
    fill(40, 255, 40)                                                                                   ;
    textSize(((width+height)/2)*(.04))                                                                  ;
    text("Press Z and X to navigate the menus", xBound+width*(.75)/2, yBound+height*(.25))              ;
    text("Press LEFT and RIGHT to navigate the submenus", xBound+width*(.75)/2, yBound+height*(.35))    ;
    text("Press UP and DOWN to navigate within the submenus", xBound+width*(.75)/2, yBound+height*(.45));
    text("Press ENTER to interact with certain things", xBound+width*(.75)/2, yBound+height*(.55))      ;
    
    text("Press ENTER to continue", xBound+width*(.75)/2, yBound+height*(.7))                           ;

}//end Splash()

// Holds the draw functions used to draw simple images that are used several times
// Draws a Gun
void drawGun(float x, float y, float scalar)
{
    // Draws a gun based off an x and y variable passed into the function
    fill    (40, 255, 40)                                                                                                                                 ;
    rect    (width*(x)      *scalar, height*(y)     *scalar, width*(.04)   *scalar, height*(.01428)*scalar, (width+height)*(.001764705))                  ;
    triangle(width*(x+.01)  *scalar, height*(y)     *scalar, width*(x+.038)*scalar, height*(y+.045)*scalar, width*(x+.035)*scalar, height*(y)     *scalar);
    triangle(width*(x+.03)  *scalar, height*(y+.045)*scalar, width*(x+.038)*scalar, height*(y+.045)*scalar, width*(x+.018)*scalar, height*(y+.005)*scalar);
    rect    (width*(x+.016) *scalar, height*(y+.004)*scalar, width*(.007)  *scalar, height*(.02)   *scalar, (width+height)*(.002941176))                  ;
    fill    (0, 100, 0)                                                                                                                                   ;
    rect    (width*(x+.0166)*scalar, height*(y+.014)*scalar, width*(.006)  *scalar, height*(.0085) *scalar, (width+height)*(.002941176))                  ;
}//end drawGun()

// Draws a Crosshair
void drawCrosshair(float x,float y)
{
    // Draws a Crosshair based off an x and y variable passed into the function
    fill   (40, 255, 40)                                                       ;
    ellipse(width*(x)      , height*(y)      , width*(.012) , height*(.017142));
    rect   (width*(x-.0015), height*(y-.0125), width*(.003) , height*(.025714));
    rect   (width*(x-.009) , height*(y-.0025), width*(.018) , height*(.004285));
    fill   (0, 100, 0)                                                         ;
    ellipse(width*(x) , height*(y), width*(.0075), height*(.0107142))          ;
}//end drawCrsshair()