// Draws the contents of menu 5, the Radio
void subMenu5(float xBound, float yBound)
{
    // Displays the radio options and draws a Sine wave
    waveCal();
    drawWave();
    
    fill(40,255,40);
    stroke(40,255,40);
    strokeWeight(5);
    rect(xBound+width*(.695), yBound+height*(.091), width*(.001), height*(.375));
    rect(xBound+width*(.43) , yBound+height*(.465), width*(.26), height*(.001));
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
}//end subMenu5

// Calculates the current status of the wave
void waveCal() 
{
  
    // Increment theta (try different values for 'angular velocity' here
    Sine.theta += 0.5;
    // For every x value, calculate a y value with sine function
    float x = Sine.theta;
    
    for (i=0; i < Sine.yVal.length; i++) 
    {
        Sine.Hei = Sine.Hei+random(-.2, .2);
        if(Sine.Hei > 100)
        {
            Sine.Hei = Sine.Hei+random(-.2,0);
        }//end if
        else if(Sine.Hei < 50)
        {
            Sine.Hei = Sine.Hei+random(0 , .2);
        }//end else if
        Sine.yVal[i] = sin(x)*Sine.Hei;
        x+=Sine.dx;
    }//end for
    
}//end waveCal()

//Draws the wave using a series of Ellipses
void drawWave()
{
    noStroke();
    fill(40, 255, 40);
    // A simple way to draw the wave with an ellipse at each location
    for (j=0; j < Sine.yVal.length; j++)
    {
      ellipse((width*(.5))+j*Sine.xSpace, height*(.35)+Sine.yVal[j], 5, 5);
    }//end for
}//end draw wave