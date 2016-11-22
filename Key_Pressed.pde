// Checks what to do if certain keys have been pressed
void keyPressed()
{
    /*
    Effects[0] =  new SoundFile(this, "Equip.mp3");
    Effects[1] =  new SoundFile(this, "Unequip.mp3");
    Effects[2] =  new SoundFile(this, "HumStatic.mp3");
    Effects[3] =  new SoundFile(this, "RadioOn.mp3");
    Effects[3] =  new SoundFile(this, "Move.mp3");
    */
    
    //Navigating the sub tabs
    if(keyCode == LEFT)
    {
        if(menu != 5 && menu != 4)
        {
            Effects[3].play();
            if(subM > 1)
            {
                subM--;
            }//end if
            else if(subM == 1)
            {
                subM = 3;
            }//end else if
            
            subNav = 1;
        }//end if
        else
        {
            subM = 1;
        }//end else
        return;
    }//end if
    else if(keyCode == RIGHT)
    {
        if(menu != 5 && menu != 4)
        {
            Effects[3].play();
            if(subM < 3)
            {
                subM++;
            }//end if
            else if(subM == 3)
            {
                subM = 1;
            }//end else if
            
            subNav = 1;
        }//end if
        else
        {
            subNav = 1;
        }//end else
        return;
    }//end else if
    
    // Navigating the Main tabs
    else if(key == 'z' || key == 'Z')
    {
        Effects[3].play();
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
        Effects[3].play();
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
            Effects[3].play();
            subNav--;
            if(subNav < 1)
            {
                subNav = 7;
            }//end if
            return;
        }//end else if
        else if(subM == 3 && menu == 1)
        {
            Effects[3].play();
            subNav--;
            if(subNav < 1)
            {
                subNav = 3;
            }//end if
            return;
        }//end else if
        else if(subM == 1 && menu == 2)
        {
            Effects[3].play();
            subNav--;
            if(subNav < 1)
            {
                subNav = Weapons.size();
            }//end if
            return;
        }//end else if
        else if(subM == 2 && menu == 2)
        {
            Effects[3].play();
            subNav--;
            if(subNav < 1)
            {
                subNav = Apparel.size();
            }//end if
            return;
        }//end else if
        else if(subM == 3 && menu == 2)
        {
            Effects[3].play();
            subNav--;
            if(subNav < 1)
            {
                subNav = Miscellaneous.size();
            }//end if
            return;
        }//end else if
        else if(subM == 2 && menu == 3)
        {
            Effects[3].play();
            subNav--;
            if (subNav < 1) 
            {
                subNav = 5;
            }//end if
            return;
        }//end else if
        else if(menu == 5)
        {
            Effects[3].play();
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
            Effects[3].play();
            subNav++;
            if (subNav > 7) 
            {
                subNav = 1;
            }//end if
            return;
        }//end else if
        else if(subM == 3 && menu == 1)
        {
            Effects[3].play();
            subNav++;
            if (subNav > 3) 
            {
                subNav = 1;
            }//end if
            return;
        }//end else if
        else if(subM == 1 && menu == 2)
        {
            Effects[3].play();
            subNav++;
            if (subNav > Weapons.size()) 
            {
                subNav = 1;
            }//end if
            return;
        }//end else if
        else if(subM == 2 && menu == 2)
        {
            Effects[3].play();
            subNav++;
            if (subNav > Apparel.size()) 
            {
                subNav = 1;
            }//end if
            return;
        }//end else if
        else if(subM == 3 && menu == 2)
        {
            Effects[3].play();
            subNav++;
            if (subNav > Miscellaneous.size()) 
            {
                subNav = 1;
            }//end if
            return;
        }//end else if
        else if(subM == 2 && menu == 3)
        {
            Effects[3].play();
            subNav++;
            if (subNav > 5) 
            {
                subNav = 1;
            }//end if
            return;
        }//end else if
        else if(menu == 5)
        {
            Effects[3].play();
            subNav++;
            if (subNav > 2) 
            {
                subNav = 1;
            }//end if
            return;
        }//end else if
    }//end else if
    
    // Interacts with certain thing in the program
    if(keyCode == ENTER)
    {
        // Allows the user to exit the Splash screen
        if(Splash)
        {
            Splash=false;
        }//end else if
        // Allows the user to play music through the RADIO menu
        else if(menu == 5 && subNav == 1)
        {
            Effects[2].play();
            if(DiamondB && !ClassicB)
            {
                Diamond.stop();
                Classic.play();
                DiamondB = false;
                ClassicB = true;
            }
            else if(!DiamondB && !ClassicB)
            {
                Classic.play();
                ClassicB = true;
            }//end else if
            else if(!DiamondB && ClassicB)
            {
                Classic.stop();
                ClassicB = false;
            }//end else if
        }//end if
        else if(menu == 5 && subNav == 2)
        {
            Effects[2].play();
            if(DiamondB && !ClassicB)
            {
                Diamond.stop();
                DiamondB = false;
            }
            else if(!DiamondB && !ClassicB)
            {
                Diamond.play();
                DiamondB = true;
            }//end else if
            else if(!DiamondB && ClassicB)
            {
                Classic.stop();
                Diamond.play();
                DiamondB = true;
                ClassicB = false;
            }//end else if
        }//end if
        // Allows the user to equip weapons
        else if(menu == 2 && subM == 1)
        {
            if(curEquipW != subNav-1)
            {
                Weapons.get(subNav-1).equipped = true;
                Effects[0].play();
                
                if(curEquipW >= 0)
                {
                    Weapons.get(curEquipW).equipped = false;
                    Effects[1].play();
                }//end if
                
                curEquipW = subNav-1;
            }//end if
            else if(curEquipW == subNav-1)
            {
                Weapons.get(subNav-1).equipped = false;
                Effects[1].play();
                curEquipW = -1;
            }//end else if
        }//end else if
        // Allows the user to equip Apparel
        else if(menu == 2 && subM == 2)
        {
            if(Apparel.get(subNav-1).equipped == false)
            {
                Apparel.get(subNav-1).equipped = true;
                Effects[0].play();
                player.dmgRes += Apparel.get(subNav-1).dmgRes;
                player.engRes += Apparel.get(subNav-1).engRes;
                player.radRes += Apparel.get(subNav-1).radRes;
            }//end if
            else if(Apparel.get(subNav-1).equipped == true)
            {
                Apparel.get(subNav-1).equipped = false;
                Effects[1].play();
                player.dmgRes -= Apparel.get(subNav-1).dmgRes;
                player.engRes -= Apparel.get(subNav-1).engRes;
                player.radRes -= Apparel.get(subNav-1).radRes;
            }//end else if
        }//end else if
    }//end if
    
    return;
}//end keyPressed()