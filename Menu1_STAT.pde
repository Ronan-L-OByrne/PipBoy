// Draws the contents of menu 1 sub-menu 1
void subMenu1_1(float xBound, float yBound)
{
    // Draws the animated walking Vault-Boy
    walkCycle.display(xBound+width*(.17), yBound+height*(.08571))      ;
    
    fill(40, 255, 40);
    text("STATUS" ,  xBound + (width*(.84)/7)*1, yBound + height*(.07));
    fill(0, 170, 0);
    text("SPECIAL",  xBound + (width*(.84)/8)*2, yBound + height*(.07));
    fill(0, 100, 0);
    text("PERKS"  ,  xBound + (width*(.84)/9)*3, yBound + height*(.07));
    
    rect(xBound + width*(.25 ),  yBound + height*(.55), width*(.05) , height*(.07142));
    rect(xBound + width*(.305),  yBound + height*(.55), width*(.035), height*(.07142));
    rect(xBound + width*(.36 ),  yBound + height*(.55), width*(.05) , height*(.07142));
    rect(xBound + width*(.415),  yBound + height*(.55), width*(.025), height*(.07142));
    rect(xBound + width*(.445),  yBound + height*(.55), width*(.025), height*(.07142));
    
    // Crosshair
    drawCrosshair(.3983, .6425);
    
    // Lightning Bolt
    fill(40, 255, 40)                                                                                                                         ;
    triangle(xBound+width*(.426), yBound+height*(.552), xBound+width*(.434), yBound+height*(.552), xBound+width*(.424), yBound+height*(.568 ));
    rect    (xBound+width*(.425), yBound+height*(.563), width*(.01), height*(.00571))                                                         ;
    triangle(xBound+width*(.425), yBound+height*(.58) , xBound+width*(.435), yBound+height*(.5675), xBound+width*(.43), yBound+height*(.5675));
    
    // Radiation Symbol
    arc(xBound + width*(.4575), yBound + height*(.5675),   width*(.1)/5,   height*(.142857142)/5, HALF_PI*3.275, HALF_PI*4    );
    arc(xBound + width*(.4575), yBound + height*(.5675),   width*(.1)/5,   height*(.142857142)/5, HALF_PI*2    , HALF_PI*2.725);
    arc(xBound + width*(.4575), yBound + height*(.5675),   width*(.1)/5,   height*(.142857142)/5, HALF_PI*.65  , HALF_PI*1.35 );
    
    // Damage/Resistence Values
    fill(40, 255, 40);
    if(curEquipW == -1)
    {
        text("0", xBound + width*(.32375), yBound + height*(.602));  
    }//end if
    else if(curEquipW < Ranged_Weapons.size())
    {
        text(Ranged_Weapons.get(curEquipW).damage, xBound + width*(.32375), yBound + height*(.602));
    }//end else
    else
    {
        text(Melee_Weapons.get(curEquipW-Ranged_Weapons.size()).damage, xBound + width*(.32375), yBound + height*(.602));
    }//end else
    text(player.engRes, xBound + width*(.4275), yBound + height*(.602));
    text(player.radRes, xBound + width*(.4575), yBound + height*(.602));
    
    //Gun
    drawGun(.33, .6375, 1);
    
    //Helmet
    fill   (40, 255, 40);
    arc    (xBound + width*(.3855), yBound + height*(.59), width*(.0345),   height*(.052), HALF_PI*2, HALF_PI*4);
    ellipse(xBound + width*(.385) , yBound + height*(.59), width*(.041) ,   height*(.01))                       ;
    rect   (xBound + width*(.385) , yBound + height*(.59), width*(.016) ,   height*(.01)  , 10)                 ;
    rect   (xBound + width*(.3725), yBound + height*(.56), width*(.0285),   height*(.0325), 20)                 ;
    
    //Status Bars
    rect(xBound + (width*(.35)), yBound + height*(.5) , width*(.05), height*(.01428));
    rect(xBound + (width*(.25)), yBound + height*(.45), width*(.05), height*(.01428));
    rect(xBound + (width*(.25)), yBound + height*(.25), width*(.05), height*(.01428));
    rect(xBound + (width*(.35)), yBound + height*(.12), width*(.05), height*(.01428));
    rect(xBound + (width*(.45)), yBound + height*(.45), width*(.05), height*(.01428));
    rect(xBound + (width*(.45)), yBound + height*(.25), width*(.05), height*(.01428));
}//end submenu()

// Draws the contents of menu 1 sub-menu 2
void subMenu1_2(float xBound, float yBound)
{
    fill(40, 255, 40);
    text("SPECIAL" , xBound + (width*(.84)/7)*1, yBound + height*(.07));
    fill(0, 170, 0)                                                    ;
    text("PERKS"   , xBound + (width*(.84)/8)*2, yBound + height*(.07));
    fill(0, 100, 0)                                                    ;
    text("STATUS"  , xBound + (width*(.84)/9)*3, yBound + height*(.07));
    
    // Displays the users S.P.E.C.I.A.L stats
    fill(40, 255, 40);
    textAlign(LEFT, CENTER);
    text("Strength"     ,  xBound + width*(.075), yBound + height*(.175));
    text("Perception"   ,  xBound + width*(.075), yBound + height*(.25)) ;
    text("Endurance"    ,  xBound + width*(.075), yBound + height*(.325));
    text("Charisma"     ,  xBound + width*(.075), yBound + height*(.4))  ;
    text("Intelligence" ,  xBound + width*(.075), yBound + height*(.475));
    text("Agility"      ,  xBound + width*(.075), yBound + height*(.55)) ;
    text("Luck"         ,  xBound + width*(.075), yBound + height*(.625));
    
    for(int i=0; i<7; i++)
    {
        text(player.SPECIAL[i], xBound + width*(.3), yBound + height*(.175)+i*(height*(.075)));
    }//end for
    
    //Displays the image of Vault Boy giving the thumbs up
    Thumb.display(xBound+width*(.45), yBound+height*(.115));
    
    rect(width*(.14), height*(.22)+(height*(.075)*(subNav-1)), width*(.2575), height*(.06));
    
    //Displays info associated with each of the Special Stats
    switch(subNav)
    {
        case 1:
        {
            fill(0, 0, 0)                                                              ;
            textAlign(LEFT, CENTER)                                                    ;
            text("Strength", xBound + width*(.075), yBound + height*(.175))            ;
            text(player.SPECIAL[subNav-1], xBound + width*(.3), yBound + height*(.175));
            fill(40, 255, 40)                                                          ;
            textAlign(LEFT, TOP)                                                       ;
            text("Strength is a measure of your raw \nphysical power. it afftects how much you \ncan carry, and the damage of all melee \nattacks."
            , xBound + width*(.365), yBound + height*(.5))                             ;
            break;
        }//end case 1
        case 2:
        {
            fill(0, 0, 0)                                                             ;
            textAlign(LEFT, CENTER)                                                   ;
            text("Perception", xBound + width*(.075), yBound + height*(.25))          ;
            text(player.SPECIAL[subNav-1], xBound + width*(.3), yBound + height*(.25));
            fill(40, 255, 40)                                                         ;
            textAlign(LEFT, TOP)                                                      ;
            text("Perception is your environmental \nawareness and \"sixth sense,\" and affects \naccuract in V.A.T.S."
            , xBound + width*(.365), yBound + height*(.5))                            ;
            break;
        }//end case 2
        case 3:
        {
            fill(0, 0, 0)                                                              ;
            textAlign(LEFT, CENTER)                                                    ;
            text("Endurance", xBound + width*(.075), yBound + height*(.325))           ;
            text(player.SPECIAL[subNav-1], xBound + width*(.3), yBound + height*(.325));
            fill(40, 255, 40)                                                          ;
            textAlign(LEFT, TOP)                                                       ;
            text("Endurance is a measure of your overall \nphysical fitness. It affects your total \nHealth and the Action Point drain from \nsprinting."
            , xBound + width*(.365), yBound + height*(.5))                             ;
            break;
        }//end case 3
        case 4:
        {
            fill(0, 0, 0)                                                            ;
            textAlign(LEFT, CENTER)                                                  ;
            text("Charisma", xBound + width*(.075), yBound + height*(.4))            ;
            text(player.SPECIAL[subNav-1], xBound + width*(.3), yBound + height*(.4));
            fill(40, 255, 40)                                                        ;
            textAlign(LEFT, TOP)                                                     ;
            text("Charisma is your ability to charm and \nconvince others. It affects your success \nto persuade in dialogue and prices when \nyou barter."
            , xBound + width*(.365), yBound + height*(.5))                           ;
            break;
        }//end case 4
        case 5:
        {
            fill(0, 0, 0)                                                              ;
            textAlign(LEFT, CENTER)                                                    ;
            text("Intelligence", xBound + width*(.075), yBound + height*(.475))        ; 
            text(player.SPECIAL[subNav-1], xBound + width*(.3), yBound + height*(.475));
            fill(40, 255, 40)                                                          ;
            textAlign(LEFT, TOP)                                                       ;
            text("Intelligence is a measure of your overall \nmental acuity, and affects the number of \nExperience Points earned."
            , xBound + width*(.365), yBound + height*(.5))                             ;
            break;
        }//end case 5
        case 6:
        {
            fill(0, 0, 0)                                                             ;
            textAlign(LEFT, CENTER)                                                   ;
            text("Agility", xBound + width*(.075), yBound + height*(.55))             ;
            text(player.SPECIAL[subNav-1], xBound + width*(.3), yBound + height*(.55));
            fill(40, 255, 40)                                                         ;
            textAlign(LEFT, TOP)                                                      ;
            text("Agility is a measure of your overall \nfinesse and reflexes. It affects the \nnumber of Action Points in V.A.T.S and \nyour ability to sneak."
            , xBound + width*(.365), yBound + height*(.5))                            ;
            break;
        }//end case 6
        case 7:
        {
            rect(width*(.14), height*(.675), width*(.2575), height*(.05))              ;
            fill(0, 0, 0)                                                              ;
            textAlign(LEFT, CENTER)                                                    ;
            text("Luck", xBound + width*(.075), yBound + height*(.625))                ;
            text(player.SPECIAL[subNav-1], xBound + width*(.3), yBound + height*(.625));
            fill(40, 255, 40)                                                          ;
            textAlign(LEFT, TOP)                                                       ;
            text("Luck is a measure of your general good \nfortune, and affects the recharge rate of \nCritical Hits."
            , xBound + width*(.365), yBound + height*(.5))                             ;
            break;
        }//end case 7
    }//end switch
}//end subMenu1_2()

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
    text("Hacker"  ,  xBound + width*(.075), yBound + height*(.175));
    text("Killshot",  xBound + width*(.075), yBound + height*(.25)) ;
    text("Berserk" ,  xBound + width*(.075), yBound + height*(.325));
    
    rect(width*(.14), height*(.22)+(height*(.075)*(subNav-1)), width*(.2575), height*(.06));
    
    // Displays the description of the currently selected Perk
    switch(subNav)
    {
        case 1:
        {
            fill(0, 0, 0)                                                ;
            textAlign(LEFT, CENTER)                                      ;
            text("Hacker", xBound + width*(.075), yBound + height*(.175));
            Hacker.display(xBound+width*(.4), yBound+height*(.175))      ;
            fill(40, 255, 40)                                            ;
            text("Knowledge of cutting-edge computer \nencryption allows you to hack\n Advanced terminals"
            , xBound + width*(.365), yBound + height*(.55))              ;
            break;
            
        }//end case 1
        case 2:
        {
            fill(0, 0, 0)                                                 ;
            textAlign(LEFT, CENTER)                                       ;
            text("Killshot", xBound + width*(.075), yBound + height*(.25));
            killS.display(xBound+width*(.35), yBound+height*(.125))       ;
            fill(40, 255, 40)                                             ;
            text("Due to your close friendship with Robert \nMacCready you now get a 20% greater \nchance to hit enemy's heads in V.A.T.S."
            , xBound + width*(.365), yBound + height*(.55))               ;
            break;
        }//end case 2
        case 3:
        {
            fill(0, 0, 0)                                                 ;
            textAlign(LEFT, CENTER)                                       ;
            text("Berserk", xBound + width*(.075), yBound + height*(.325));
            Berserk.display(xBound+width*(.4), yBound+height*(.095))      ;
            fill(40, 255, 40)                                             ;
            text("You have reached maximum affinity with \nStrong and some of his FEV seems to \nhave rubbed off, +20% Melee Damage."
            , xBound + width*(.365), yBound + height*(.55))               ;
            break;
        }//end case 3
    }//end switch
}//end subMenu1_3()