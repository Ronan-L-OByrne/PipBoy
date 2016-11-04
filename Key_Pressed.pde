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
        subNav = 1;
        subNav = 1;
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
        subNav = 1;
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
        }//end else if
        else if(subM == 3 && menu == 1)
        {
            subNav--;
            if(subNav < 1)
            {
                subNav = 3;
            }//end if
        }//end else if
        else if(subM == 1 && menu == 2)
        {
            subNav--;
            if(subNav < 1)
            {
                subNav = inv;
            }//end if
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
        }//end else if
        else if(subM == 3 && menu == 1)
        {
            subNav++;
            if (subNav > 3) 
            {
                subNav = 1;
            }//end if
        }//end else if
        else if(subM == 1 && menu == 2)
        {
            subNav++;
            if (subNav > inv) 
            {
                subNav = 1;
            }//end if
        }//end else if
    }//end else if
    
}//end keyPressed()