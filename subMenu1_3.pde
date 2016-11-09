// Draws the contents of menu 1 sub-menu 3
void subMenu1_3(float xBound, float yBound)
{
    fill(40, 255, 40);
    text("PERKS" ,  xBound + (width*(.84)/7)*1, yBound + height*(.07));
    fill(0, 170, 0);
    text("STATUS",  xBound + (width*(.84)/8)*2, yBound + height*(.07));
    fill(0, 100, 0);
    text("SPECIAL", xBound + (width*(.84)/9)*3, yBound + height*(.07));
    
    // Dispalys the users Perks
    fill(40, 255, 40);
    textAlign(LEFT, CENTER);
    text("Hacker"     ,  xBound + width*(.075), yBound + height*(.175));
    text("Killshot"   ,  xBound + width*(.075), yBound + height*(.25) );
    text("Berserk"    ,  xBound + width*(.075), yBound + height*(.325));
    
    
    switch(subNav)
    {
        case 1:
        {
            rect(width*(.14), height*(.225), width*(.2575), height*(.05));
            fill(0, 0, 0);
            textAlign(LEFT, CENTER);
            text("Hacker", xBound + width*(.075), yBound + height*(.175));
            Hacker.display(xBound+width*(.4), yBound+height*(.175));
            fill(40, 255, 40);
            text("Knowledge of cutting-edge computer \nencryption allows you to hack\n Advanced terminals"
            , xBound + width*(.365), yBound + height*(.55));
            break;
            
        }//end case 1
        case 2:
        {
            rect(width*(.14), height*(.3), width*(.2575), height*(.05));
            fill(0, 0, 0);
            textAlign(LEFT, CENTER);
            text("Killshot", xBound + width*(.075), yBound + height*(.25));
            killS.display(xBound+width*(.35), yBound+height*(.125));
            fill(40, 255, 40);
            text("Due to your close friendship with Robert \nMacCready you now get a 20% greater \nchance to hit enemy's heads in V.A.T.S."
            , xBound + width*(.365), yBound + height*(.55));
            break;
        }//end case 2
        case 3:
        {
            rect(width*(.14), height*(.375), width*(.2575), height*(.05));
            fill(0, 0, 0);
            textAlign(LEFT, CENTER);
            text("Berserk", xBound + width*(.075), yBound + height*(.325));
            Berserk.display(xBound+width*(.4), yBound+height*(.095));
            fill(40, 255, 40);
            text("You have reached maximum affinity with \nStrong and some of his FEV seems to \nhave rubbed off, +20% Melee Damage."
            , xBound + width*(.365), yBound + height*(.55));
            break;
        }//end case 3
    }//end switch
    
}//end subMenu1_2