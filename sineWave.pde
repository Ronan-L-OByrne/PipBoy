class sineWave
{  
    float xSpace   = .2;                           // How far apart should each horizontal location be spaced
    float wid      = (width*(.9));                 // Width of entire wave
    
    float theta  = 0.0;                            // Start angle at 0
    float Hei    = 75.0;                           // Height of wave
    float period = 50.0;                           // How many pixels before the wave repeats
    float dx     = (TWO_PI/period)*xSpace;         // Value for incrementing X, a function of period and xspacing
    float[] yVal = new float[(int)(wid/xSpace)*3]; // Using an array to store height values for the wave
}//end class sineWave