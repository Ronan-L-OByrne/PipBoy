// Class to store the data associated with drawing a sine wave
class sineWave
{
    //Varialbes used in the sine wave class
    float xSpace   = ((width+height)/2)*(.0005); // How far apart should each horizontal location be spaced
    float wid      = ((width)*(.27))           ; // Width of entire wave
    
    float theta  = 0                           ; // Start angle at 0
    float Hei    = 0                           ; // Height of wave
    float period = width*(.05)                 ; // How many pixels before the wave repeats
    float dx     = (TWO_PI/period)*xSpace      ; // Value for incrementing X, a function of period and xspacing
    float yVal[] = new float[(int)(wid/xSpace)]; // Holds the y position of each ellipse in the sine wave
   
    // Calculates the current status of the wave
    void waveCal() 
    {
      
        // Increment theta (try different values for 'angular velocity' here
        theta += ((width+height)/2)*(.000294117);
        // For every x value, calculate a y value with sine function
        float x = theta                         ;
        
        //Loop to calculate the position of each ellipse in the sine wave
        for (int i=0; i < yVal.length; i++) 
        {
            // If no music is playing
            if(!DiamondB && !ClassicB)
            {
                Hei = 0;
            }//end if
            
            //Sets the height of the sine wave
            Hei = Hei+random(-(height*(.0005)), (height*(.0005)));
            if(Hei > height*(.142857142))
            {
                Hei = Hei+random(-(height*(.0005)),0);
            }//end if
            else if(Hei < height*(.071428571))
            {
                Hei = Hei+random(0 , (height*(.0005)));
            }//end else if
                
            // Sets the y Value of each ellipse
            yVal[i] = sin(x)*Hei;
            x+=dx               ;
        }//end for
        
    }//end waveCal()
    
    //Draws the wave using a series of Ellipses
    void drawWave()
    {
        noStroke()       ;
        fill(40, 255, 40);
        
        // Draws the sine wave using many ellipse
        for (int j=0; j < yVal.length; j++)
        {
            ellipse((width*(.5))+j*xSpace, height*(.35)+yVal[j], ((width+height)/2)*(.005882352), ((width+height)/2)*(.005882352));
        }//end for
    }//end draw wave
}//end class sineWave