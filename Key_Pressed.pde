// Checks what to do if certain keys have been pressed
void keyPressed()
{
    //Navigating the sub tabs
    if(keyCode == LEFT)
    {
        if     (subM > 1)//  && menu == 1)
        {
            subM--;
        }//end if
        else if(subM == 1)// && menu == 1)
        {
            subM = 3;
        }//end else if
        
        if(menu != 5)
        {
            subNav = 1;
        }//end if
        
        return;
    }//end if
    else if(keyCode == RIGHT)
    {
        if     (subM < 3)//  && menu == 1)
        {
            subM++;
        }//end if
        else if(subM == 3)// && menu == 1)
        {
            subM = 1;
        }//end else if
        
        if(menu != 5)
        {
            subNav = 1;
        }//end if
        
        return;
    }//end else if
    
    // Navigating the Main tabs
    else if(key == 'z' || key == 'Z')
    {
        if(menu > 1)
        {
            menu--;
        }//end else if
        else
        {
            menu = 5;
        }//end else
        subNav = 1;
        subM = 1;
        topRightMenu();
        
        return;
    }//end else if
    else if(key == 'x' || key == 'X')
    {
        if(menu < 5)
        {
            menu++;
        }//end else if
        else
        {
            menu = 1;
        }//end else
        subNav = 1;
        subM = 1;
        topRightMenu();
        
        
        return;
    }//end else if
    
    //Navigating within the sub tabs
    else if(keyCode == UP)
    {
        if(subM == 1 && menu == 1)
        {
            return;
        }//end if
        else if(subM == 2 && menu == 1)
        {
            subNav--;
            if(subNav < 1)
            {
                subNav = 7;
            }//end if
            
            return;
        }//end else if
        else if(subM == 3 && menu == 1)
        {
            subNav--;
            if(subNav < 1)
            {
                subNav = 3;
            }//end if
            
            return;
        }//end else if
        else if(subM == 1 && menu == 2)
        {
            subNav--;
            if(subNav < 1)
            {
                subNav = invWea;
            }//end if
            
            return;
        }//end else if
        else if(subM == 2 && menu == 2)
        {
            subNav--;
            if(subNav < 1)
            {
                subNav = invApp;
            }//end if
            
            return;
        }//end else if
        else if(subM == 3 && menu == 2)
        {
            subNav--;
            if(subNav < 1)
            {
                subNav = invMisc;
            }//end if
            
            return;
        }//end else if
        else if(menu == 5)
        {
            subNav--;
            if (subNav < 1) 
            {
                subNav = 2;
            }//end if
            
            return;
        }//end else if
    }//end else if
    
    else if(keyCode == DOWN)
    {
        if(subM == 1 && menu == 1)
        {
            return;
        }//end if
        else if(subM == 2 && menu == 1)
        {
            subNav++;
            if (subNav > 7) 
            {
                subNav = 1;
            }//end if
            
            return;
        }//end else if
        else if(subM == 3 && menu == 1)
        {
            subNav++;
            if (subNav > 3) 
            {
                subNav = 1;
            }//end if
            
            return;
        }//end else if
        else if(subM == 1 && menu == 2)
        {
            subNav++;
            if (subNav > invWea) 
            {
                subNav = 1;
            }//end if
            
            return;
        }//end else if
        else if(subM == 2 && menu == 2)
        {
            subNav++;
            if (subNav > invApp) 
            {
                subNav = 1;
            }//end if
            
            return;
        }//end else if
        else if(subM == 3 && menu == 2)
        {
            subNav++;
            if (subNav > invMisc) 
            {
                subNav = 1;
            }//end if
            
            return;
        }//end else if
        else if(menu == 5)
        {
            subNav++;
            if (subNav > 2) 
            {
                subNav = 1;
            }//end if
            
            return;
        }//end else if
    }//end else if
    
    if(keyCode == ENTER)
    {
        if(menu == 5 && subNav == 1)
        {
            if(DiamondB && !ClassicB)
            {
                Diamond.get(0).stop();
                Classic.get(0).play();
                DiamondB = false;
                ClassicB = true;
            }
            else if(!DiamondB && !ClassicB)
            {
                Classic.get(0).play();
                ClassicB = true;
            }//end else if
            else if(!DiamondB && ClassicB)
            {
                Classic.get(0).stop();
                ClassicB = false;
            }//end else if
        }//end if
        else if(menu == 5 && subNav == 2)
        {
            if(DiamondB && !ClassicB)
            {
                Diamond.get(0).stop();
                DiamondB = false;
            }
            else if(!DiamondB && !ClassicB)
            {
                Diamond.get(0).play();
                DiamondB = true;
            }//end else if
            else if(!DiamondB && ClassicB)
            {
                Classic.get(0).stop();
                Diamond.get(0).play();
                DiamondB = true;
                ClassicB = false;
            }//end else if
        }//end if
        else if(Splash)
        {
            Splash=false;
        }//end else if
    }//end if
    
    return;
}//end keyPressed()