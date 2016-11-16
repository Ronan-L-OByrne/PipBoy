// The splash screen at the begining of the program
void SplashScrn(float xBound, float yBound)
{
    fill(0, 0, 0);
    rect(xBound, yBound, width*(.75), height*(.785714285), ((width+height)/2)*(.058823529));
    
    fill(40, 255, 40);
    textFont(globalFont, ((width+height)/2)*(.06));
    textAlign(CENTER,CENTER);
    text("Welcome to your very own PipBoy 4000!", xBound+width*(.75)/2, yBound+height*(.1));
    rect(xBound+width*(.05), yBound+height*(.135), width*(.65), height*(.005));
    fill(0, 215, 0);
    rect(xBound+width*(.06), yBound+height*(.145), width*(.63), height*(.0025));
    
    fill(40, 255, 40);
    textSize(((width+height)/2)*(.04));
    text("Press Z and X to navigate the menus", xBound+width*(.75)/2, yBound+height*(.25));
    text("Press LEFT and RIGHT to navigate the submenus", xBound+width*(.75)/2, yBound+height*(.35));
    text("Press UP and DOWN to navigate within the submenus", xBound+width*(.75)/2, yBound+height*(.45));
    text("Press ENTER to interact with certain things", xBound+width*(.75)/2, yBound+height*(.55));
    
    text("Press ENTER to continue", xBound+width*(.75)/2, yBound+height*(.7));

}//end Splash()