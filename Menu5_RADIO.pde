// Draws the contents of menu 5, the Radio
void menu5(float xBound, float yBound)
{
    // Displays the radio options and draws a Sine wave
    waveCal();
    drawWave();
    
    fill(40,255,40);
    stroke(40,255,40);
    strokeWeight(5);
    rect(xBound+width*(.695), yBound+height*(.091), width*(.001) , height*(.375));
    rect(xBound+width*(.43) , yBound+height*(.465), width*(.2625), height*(.001));
    strokeWeight(1);
    
    noStroke();
    fill(40,255,40);
    textAlign(LEFT, CENTER);
    text("Classic Radio", xBound + width*(.075), yBound + height*(.175));
    text("Diamond City Radio", xBound + width*(.075), yBound + height*(.225));
    rect(width*(.14), height*(.225+(.05*(subNav-1))), width*(.2575), height*(.05));
    fill(0, 0, 0);
    
    if(subNav == 1)
    {
        text("Classic Radio", xBound + width*(.075), yBound + height*(.175));
    }//end if
    else
    {
        text("Diamond City Radio", xBound + width*(.075), yBound + height*(.225));
    }//end else
}//end menu5()

// Calculates the current status of the wave
void waveCal() 
{
  
    // Increment theta (try different values for 'angular velocity' here
    Sine.theta += ((width+height)/2)*(.000294117);
    // For every x value, calculate a y value with sine function
    float x = Sine.theta;
    
    //Loop to calculate the position of each ellipse in the sine wave
    for (int i=0; i < Sine.yVal.length; i++) 
    {
        // If no music is playing
        if(!DiamondB && !ClassicB)
        {
            Sine.Hei = 2;
        }//end if
        
        //Sets the height of the sine wave
        Sine.Hei = Sine.Hei+random(-(height*(.0005)), (height*(.0005)));
        if(Sine.Hei > height*(.142857142))
        {
            Sine.Hei = Sine.Hei+random(-(height*(.0005)),0);
        }//end if
        else if(Sine.Hei < height*(.071428571))
        {
            Sine.Hei = Sine.Hei+random(0 , (height*(.0005)));
        }//end else if
            
        // Sets the y Value of each ellipse
        Sine.yVal[i] = sin(x)*Sine.Hei;
        x+=Sine.dx;
    }//end for
    
}//end waveCal()

//Draws the wave using a series of Ellipses
void drawWave()
{
    noStroke();
    fill(40, 255, 40);
    
    // Draws the sine wave using many ellipse
    for (int j=0; j < Sine.yVal.length; j++)
    {
        ellipse((width*(.5))+j*Sine.xSpace, height*(.35)+Sine.yVal[j], ((width+height)/2)*(.005882352), ((width+height)/2)*(.005882352));
    }//end for
}//end draw wave