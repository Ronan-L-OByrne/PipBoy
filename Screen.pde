void Screen()
{
    float xBound = width *(.075);
    float yBound = height*(.075928571);
    
    noStroke();
    
    fill(0, 0, 0);
    rect(width*(.075), height*(.071428571), width*(.75), height*(.785714285), 50);
    
    fill(40, 255, 40);
    rect(xBound + (width*(.2)/6), yBound + height*(.042), width*(.67), 1);
    rect(xBound + ((width*(.84)/7)*menu)-width*(.0275), yBound + height*(.005), width*(.055), height*(.044285), 10);
    fill(0, 0, 0);
    rect(xBound + ((width*(.84)/7)*menu)-width*(.0255), yBound + height*(.004), width*(.051), height*(.044285), 10);
    
    fill(40, 255, 40);
    textAlign(CENTER,CENTER);
    textFont(globalFont, width*(.025));
    text("STAT" , xBound + (width*(.84)/7)*1, yBound + height*(.0259));
    text("INV"  , xBound + (width*(.84)/7)*2, yBound + height*(.0259));
    text("DATA" , xBound + (width*(.84)/7)*3, yBound + height*(.0259));
    text("MAP"  , xBound + (width*(.84)/7)*4, yBound + height*(.0259));
    text("RADIO", xBound + (width*(.84)/7)*5, yBound + height*(.0259));
    rect(xBound + (width*(.2)/6), height*(.075928571) + height*(.047), width*(.67), 3);
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
        
        
        // Hp/Level/AP/Name
        textAlign(CENTER, CENTER);
        fill(0, 100, 0);
        rect(xBound + width*(.02), yBound + height*(.7),  width*(.175), height*(.040714));
        rect(xBound + width*(.2) , yBound + height*(.7),  width*(.355), height*(.040714));
        rect(xBound + width*(.56), yBound + height*(.7),  width*(.175), height*(.040714));
        
        fill(40, 255, 40);
        text("HP 100/125", xBound + width*(.07), yBound + height*(.72));
        
        text("LEVEL 3",    xBound + width*(.23), yBound + height*(.72));
        stroke(40, 255, 40);
        fill(0, 75, 0);
        rect(xBound + width*(.27),  yBound + height*(.7075), width*(.275), height*(.027585));
        fill(40, 255, 40);
        rect(xBound + width*(.27),  yBound + height*(.7075), width*(.06) , height*(.027585));
        
        fill(40, 255, 40);
        text("AP 90/90",   xBound + width*(.69), yBound + height*(.72));
    }//end if(menu)
    else if(menu == 2)
    {
        if(subM == 1)
        {
            subMenu2_1(xBound, yBound);
        }//end if(subM)
        else if(subM == 2)
        {
            //subMenu2_2(xBound, yBound);
        }//end else if(subM)
        else if(subM == 3)
        {
            //subMenu2_3(xBound, yBound);
        }//end else if(subM)
        
        // Hp/Level/AP/Name
        textAlign(CENTER, CENTER);
        fill(0, 100, 0);
        rect(xBound + width*(.02), yBound + height*(.7),  width*(.175), height*(.040714));
        rect(xBound + width*(.2) , yBound + height*(.7),  width*(.355), height*(.040714));
        rect(xBound + width*(.56), yBound + height*(.7),  width*(.175), height*(.040714));
        
        fill(40, 255, 40);
        text("WEIGHT 100/125", xBound + width*(.0875), yBound + height*(.72));
        
        text("CAPS 1000",    xBound + width*(.27), yBound + height*(.72));
        ellipse(xBound + width*(.215), yBound + height*(.72), 20, 20);
        fill(0, 100, 0);
        textFont(PipBoy, height*(.035));
        textAlign(CENTER,CENTER);
        text("C  ", xBound + width*(.218), yBound + height*(.72));
        
        textFont(globalFont, width*(.025));
        fill(40, 255, 40);
        text("AP 90/90",   xBound + width*(.69), yBound + height*(.72));
    }//end else if
}//end Screen()