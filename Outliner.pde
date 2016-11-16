// Function to draw the graphical outliner of the program
void Outliner()
{
    
    // Background
    background(135, 92, 42);
    
    // Pip-Boy Screen
    stroke(0, 0, 0);
    fill(0, 0, 0);
    rect(width*(.84),   height*(.355857142), width*(.06),  height*(.178428571));
    rect(width*(.0415), height*(.071428571), width*(.815), height*(.829), 50);
    rect(width*(.06),   height*(.025428571), width*(.821), height*(.900142857), ((width+height)/2)*(.058823529));
    fill(135, 92, 42);
    rect(width*(.06),  height*(.021428571), width*(.82), height*(.897142857), ((width+height)/2)*(.058823529));
    fill(0, 0, 0);
    rect(width*(.045), height*(.071428571), width*(.8165), height*(.825), ((width+height)/2)*(.058823529));
    fill(135, 92, 42);
    rect(width*(.04),  height*(.051428571), width*(.82), height*(.84), ((width+height)/2)*(.058823529));
    
    fill(30, 30, 30); 
    rect(width*(.05),  height*(.007142857), width*(.8),  height*(.2), ((width+height)/2)*(.058823529));
    fill(50, 50, 50);
    rect(width*(.06),  height*(.05),        width*(.78),  height*(.828571428), ((width+height)/2)*(.058823529));
    fill(255, 255, 255);
    rect(width*(.075),  height*(.0714285714), width*(.753), height*(.790857142), ((width+height)/2)*(.058823529));
    
    // Actual Screen
    fill(0, 0, 0);
    rect(width*(.075), height*(.071428571), width*(.75), height*(.785714285), ((width+height)/2)*(.058823529));
    
    fill(20, 20, 20);
    rect((width*(.06)+width*(.74))/2,  height*(.007142857), width*(.105),  height*(.043));
    fill(50, 50, 50);
    textFont(PipBoy, ((width+height)/2)*(.038));
    textAlign(LEFT,LEFT);
    text("Pip-Boy", (width*(.06)+width*(.78))/2, height*(.04));
    
    fill(10, 10, 10);
    // Vents Right of Geiger Counter//
    Ventx = width*(.96);
    Venty = height*(.385714285);
    for(int i=0; i<2; i++)
    {
        for(int j=0; j<6; j++)
        {
            rect(Ventx+(i*(width*(.03))), Venty+ ((j+1)*(height*(.028571428))), width*(.025), height*(.004285714));
        }//end for
    }//end for
    
    
    // Bottom Right Dial
    fill(0, 0, 0);
    arc(width*(.97), height*(.857142857), width*(.15), height*(.214285714), Radian+.1, (Radian*2)+.1);
    fill(135, 92, 42);
    noStroke();
    arc(width*(.975), height*(.85), width*(.1), height*(.142857132), Radian+.1, (Radian*2)+.1);
    
    stroke(0, 0, 0);
    fill(0, 0, 0);
    ellipse(width*(.985), height*(.847857142), width*(.08), height*(.114285714));
    fill(50, 50, 50);
    ellipse(width*(.98), height*(.842857142), width*(.08), height*(.114285714));
    fill(25, 25, 25);
    ellipse(width*(.98), height*(.842857142), width*(.05), height*(.071428571));
    fill(40, 40, 40);
    ellipse(width*(.98), height*(.842857142), width*(.03), height*(.042857142));
    fill(60, 60, 60);
    ellipse(width*(.98), height*(.842857142), width*(.02), height*(.028571428));
    
    fill(190, 235, 0);
    textSize(((width+height)/2)*(.0175));
    text("Power", width*(.725), height*(.964285714));
    
    // Bottom Vent
    fill(0, 0, 0);
    rect(width*(.155) , height-(height*(.056142857)), width*(.5), height*(.678571428), ((width+height)/2)*(.117647058));
    
    fill(115, 72, 22);
    rect(width*(.15) , height-(height*(.058142857)), width*(.5), height*(.678571428), ((width+height)/2)*(.117647058));
    
    fill(10, 10, 10);
      
    Ventx = width*(.19);
    for(int i = 0; i < 9; i++)
    {
        rect(Ventx+((i+1)*width*(.04)), height-(height*(.042857142)), width*(.015), height*(.071428571), ((width+height)/2)*(.023529411));
    }//end for
    
    // Screws
    //ellipse();
}//end Outliner()

void Light()
{
    noStroke();
    fill(135, 92, 42);
    rect(width*(.675), height*(.931), width*(.05), height*(.065));
    
    stroke(0);
    // Red Light
    fill(70, 70, 70);
    ellipse(width*(.7), height*(.964285714), width*(.04), height*(.057142857));
    fill(Light, 0, 0);
    if(Grad == true)
    {
        Light++;
        
        if(Light == 254)
        {
            Grad = false;
        }// end if
    }//end if
    else
    {
        Light--;
        
        if(Light == 150)
        {
            Grad = true;
        }//end else if
    }//end else
    ellipse(width*(.7), height*(.964285714), width*(.032), height*(.045714285));
    
}//end Light()

void GeigerCount()
{
    // Geigher Counter
    
    fill(0, 0, 0);
    rect(width*(.84), height*(.352857142), width*(.06),  height*(.178428571));
    fill(135, 92, 42);
    rect(width*(.84), height*(.352857142), width*(.06),  height*(.171428571));
    noStroke();
    rect(width*(.841), height*(.252857142), width*(.019),  height*(.371428571));
    stroke(0,0,0);
        
    fill(0, 0, 0);
    arc(width*(.9), height*(.448571428),   width*(.12),  height*(.171428571), Radian*3, Radian*5);
    
    fill(135, 92, 42);
    //rect(width*(.84), height*(.352857142), width*(.06),  height*(.178428571));
    fill(135, 92, 42);
    arc(width*(.9), height*(.438571428),   width*(.12),  height*(.171428571), Radian*3, Radian*5);
    fill(255, 255, 255);
    stroke(135, 92, 42);
    arc(width*(.9), height*(.438571428),   width*(.1),   height*(.142857142), Radian*3, Radian*5);
    fill(255, 0, 0);
    stroke(255, 0, 0);
    arc(width*(.9), height*(.438571428),   width*(.075), height*(.107142857), Radian*3, Radian*5);
    fill(255, 255, 255);
    arc(width*(.9), height*(.438571428),   width*(.075), height*(.107142857), 5.9,      Radian*5);
    fill(255, 255, 255);
    arc(width*(.9), height*(.438571428),   width*(.06),  height*(.085714285), Radian*3, Radian*5);
    
    stroke(0, 0, 0);
    fill(115, 72, 22);
    ellipse(width*(.88), height*(.485714285), width*(.007), height*(.01));
    ellipse(width*(.88), height*(.392857142), width*(.007), height*(.01));
    
    fill(190, 235, 0);
    textAlign(LEFT, CENTER);
    textFont(globalFont, ((width+height)/2)*(.0235));
    text("RADS", width*(.8575), height*(.438571428));
    // Geiger pointer
    fill(0, 0, 0);
    ellipse( width*(.905), height*(.438571428), width*(.005), height*(.007142857));
    triangle(width*(.903), height*(.44),        width*(.906), height*(.437142857), width*(.905), height*(.49));
}//end GeigerCount()