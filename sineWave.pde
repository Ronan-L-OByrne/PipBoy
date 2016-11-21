// Class to store the data associated with drawing a sine wave
class sineWave
{
    //Varialbes used in the sine wave class
    float xSpace   = ((width+height)/2)*(.000117647); // How far apart should each horizontal location be spaced
    float wid      = ((width)*(.27))                ; // Width of entire wave
    
    float theta  = 0                                ; // Start angle at 0
    float Hei    = 0                                ; // Height of wave
    float period = width*(.05)                      ; // How many pixels before the wave repeats
    float dx     = (TWO_PI/period)*xSpace           ; // Value for incrementing X, a function of period and xspacing
    float yVal[] = new float[(int)(wid/xSpace)]     ; // Holds the y position of each ellipse in the sine wave
}//end class sineWave