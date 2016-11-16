// Draws the contents of the screen (ie. the different menues and contents)
void Screen()
{
    float xBound = width *(.075);
    float yBound = height*(.075928571);
    
    noStroke();
    
    fill(0, 0, 0);
    rect(xBound, yBound, width*(.75), height*(.785714285), ((width+height)/2)*(.058823529));
    
    fill(40, 255, 40);
    rect(xBound + (width*(.2)/6), yBound + height*(.042), width*(.67), 1);
    rect(xBound + ((width*(.84)/7)*menu)-width*(.0275), yBound + height*(.005), width*(.055), height*(.044285), ((width+height)/2)*(.011764705));
    fill(0, 0, 0);
    rect(xBound + ((width*(.84)/7)*menu)-width*(.0255), yBound + height*(.004), width*(.051), height*(.044285), ((width+height)/2)*(.011764705));
    
    fill(40, 255, 40);
    textAlign(CENTER,CENTER);
    textFont(globalFont, width*(.025));
    text("STAT" , xBound + (width*(.84)/7)*1, yBound + height*(.0259));
    text("INV"  , xBound + (width*(.84)/7)*2, yBound + height*(.0259));
    text("DATA" , xBound + (width*(.84)/7)*3, yBound + height*(.0259));
    text("MAP"  , xBound + (width*(.84)/7)*4, yBound + height*(.0259));
    text("RADIO", xBound + (width*(.84)/7)*5, yBound + height*(.0259));
    rect(xBound + (width*(.2)/6), height*(.075928571) + height*(.047), width*(.67), ((width+height)/2)*(.003529411));
    
    // Checks what menu the user is currently in
    // Displays Status screen
    if(Splash)
    {
        SplashScrn(xBound, yBound);
    }//end if
    else
    {
        if(menu == 1)
        {
            if(subM == 1)
            {
                subMenu1_1(xBound, yBound);
            }//end if(subM)
            else if(subM == 2)
            {
                subMenu1_2(xBound, yBound);
            }//end else if(subM)
            else if(subM == 3)
            {
                subMenu1_3(xBound, yBound);
            }//end else if(subM)
            
            // Constant throughout all sub menus
            // Hp/Level/AP/Name
            textAlign(CENTER, CENTER);
            fill(0, 100, 0);
            rect(xBound + width*(.02), yBound + height*(.7),  width*(.175), height*(.040714));
            rect(xBound + width*(.2) , yBound + height*(.7),  width*(.355), height*(.040714));
            rect(xBound + width*(.56), yBound + height*(.7),  width*(.175), height*(.040714));
            
            fill(40, 255, 40);
            text("HP " + player.Hp[1] + "/" + player.Hp[0], xBound + width*(.07), yBound + height*(.72));
            
            text("LEVEL " + player.Level,    xBound + width*(.23), yBound + height*(.72));
            stroke(40, 255, 40);
            fill(0, 75, 0);
            rect(xBound + width*(.27),  yBound + height*(.7075), width*(.275), height*(.027585));
            fill(40, 255, 40);
            rect(xBound + width*(.27),  yBound + height*(.7075), width*(.06) , height*(.027585));
            
            fill(40, 255, 40);
            text("AP 90/90",   xBound + width*(.69), yBound + height*(.72));
        }//end if(menu)
        // Displays Inventory sceen
        else if(menu == 2)
        {
            if(subM == 1)
            {
                subMenu2_1(xBound, yBound);
            }//end if(subM)
            else if(subM == 2)
            {
                subMenu2_2(xBound, yBound);
            }//end else if(subM)
            else if(subM == 3)
            {
                subMenu2_3(xBound, yBound);
            }//end else if(subM)
            
            // Constant throughout all sub menus
            // Weight/Caps/Damage
            textAlign(CENTER, CENTER);
            fill(0, 100, 0);
            rect(xBound + width*(.02), yBound + height*(.7),  width*(.175), height*(.040714));
            rect(xBound + width*(.2) , yBound + height*(.7),  width*(.355), height*(.040714));
            rect(xBound + width*(.56), yBound + height*(.7),  width*(.175), height*(.040714));
            
            fill(40, 255, 40);
            text("WEIGHT 100/125", xBound + width*(.0875), yBound + height*(.72));
            
            text("CAPS 1000",    xBound + width*(.27), yBound + height*(.72));
            ellipse(xBound + width*(.215), yBound + height*(.72), width*(.02), height*(.0285714));
            fill(0, 100, 0);
            textFont(PipBoy, height*(.035));
            textAlign(CENTER,CENTER);
            text("C  ", xBound + width*(.218), yBound + height*(.72));
            
            textFont(globalFont, width*(.025));
            drawGun(.855, .913, .85);
            drawCrosshair(.775, .795);
            fill(40, 255, 40);
            text("20",   xBound + width*(.722), yBound + height*(.72));
        }//end else if
        // Display the Data subMenus
        else if(menu == 3)
        {
            if(subM == 1)
            {
                subMenu3_1(xBound, yBound);
            }//end if
            if(subM == 2)
            {
                subMenu3_2(xBound, yBound);
            }//end if
            if(subM == 3)
            {
                subMenu3_3(xBound, yBound);
            }//end if
            
            // Constant throughout all sub menus
            // Date/Time
            textAlign(LEFT, CENTER);
            fill(0, 100, 0);
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
            
            fill(40, 255, 40);
            text(nf(month(), 2) +"."+ nf(day(),2 ) +"."+ (year()+271), xBound + width*(.028), yBound + height*(.72));
            
            text(nf((hour()%12), 2) +":"+ nf(minute(),2) +" "+ period,    xBound + width*(.205), yBound + height*(.72));
            fill(0, 100, 0);
        }//end else if
        else if(menu == 4)
        {
            subMenu4(xBound, yBound);
            
            // Date/Time
            textAlign(LEFT, CENTER);
            fill(0, 100, 0);
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
            
            fill(40, 255, 40);
            text(nf(month(), 2) +"."+ nf(day(),2 ) +"."+ (year()+271), xBound + width*(.028), yBound + height*(.72));
            
            text(nf((hour()%12), 2) +":"+ nf(minute(),2) +" "+ period,    xBound + width*(.205), yBound + height*(.72));
            fill(0, 100, 0);
        }//end else if
        
        // Displays the Radio Screen
        else if(menu == 5)
        {
            subMenu5(xBound, yBound);
        }//end else if
    }//end else
}//end Screen()