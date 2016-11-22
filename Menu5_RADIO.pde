// Draws the contents of menu 5, the Radio
void menu5(float xBound, float yBound)
{
    // Displays the radio options and draws a Sine wave
    Sine.waveCal() ;
    Sine.drawWave();
    
    fill(40,255,40)                                                               ;
    stroke(40,255,40)                                                             ;
    strokeWeight(5)                                                               ;
    rect(xBound+width*(.695), yBound+height*(.091), width*(.001) , height*(.375)) ;
    rect(xBound+width*(.43) , yBound+height*(.465), width*(.2625), height*(.001)) ;
    strokeWeight(1)                                                               ;
    
    noStroke()                                                                    ;
    fill(40,255,40)                                                               ;
    textAlign(LEFT, CENTER)                                                       ;
    text("Classic Radio", xBound + width*(.075), yBound + height*(.175))          ;
    text("Diamond City Radio", xBound + width*(.075), yBound + height*(.225))     ;
    rect(width*(.14), height*(.225+(.05*(subNav-1))), width*(.2575), height*(.05));
    
    fill(40,255,40);
    if(ClassicB)
    {
        rect(width*(.115), height*(.235), width*(.02), height*(.028571428));
    }//end if
    else if(DiamondB)
    {
        rect(width*(.115), height*(.285), width*(.02), height*(.028571428));
    }//end else if
    
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

//Checks to see if the music needs to begin playback
void musicCheck()
{
    if(ClassicB && (playback) <= frameCount)
    {
        Classic.play()                                  ;
        playback = frameCount+(int)Classic.duration()*60;
    }//end if
    if(DiamondB && (playback) <= frameCount)
    {
        Diamond.play()                                  ;
        playback = frameCount+(int)Diamond.duration()*60;
    }//end if
}//end musicCheck()