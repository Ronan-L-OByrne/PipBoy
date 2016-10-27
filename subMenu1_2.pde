void subMenu1_2(float xBound, float yBound)
{
    fill(40, 255, 40);
    text("SPECIAL" ,  xBound + (width*(.84)/7)*1, yBound + height*(.07));
    fill(0, 170, 0);
    text("PERKS",  xBound + (width*(.84)/8)*2, yBound + height*(.07));
    fill(0, 100, 0);
    text("STATUS"  ,  xBound + (width*(.84)/9)*3, yBound + height*(.07));
    
    fill(40, 255, 40);
    textAlign(LEFT, CENTER);
    text("Strength"     ,  xBound + width*(.075), yBound + height*(.175));  text("10", xBound + width*(.3), yBound + height*(.175));
    text("Perception"   ,  xBound + width*(.075), yBound + height*(.25) );  text("10", xBound + width*(.3), yBound + height*(.25) );
    text("Endurance"    ,  xBound + width*(.075), yBound + height*(.325));  text("10", xBound + width*(.3), yBound + height*(.325));
    text("Charisma"     ,  xBound + width*(.075), yBound + height*(.4)  );  text("10", xBound + width*(.3), yBound + height*(.4)  );
    text("Intelligence" ,  xBound + width*(.075), yBound + height*(.475));  text("10", xBound + width*(.3), yBound + height*(.475));
    text("Agility"      ,  xBound + width*(.075), yBound + height*(.55) );  text("10", xBound + width*(.3), yBound + height*(.55) );
    text("Luck"         ,  xBound + width*(.075), yBound + height*(.625));  text("10", xBound + width*(.3), yBound + height*(.625));
    
    Thumb.display(xBound+width*(.45), yBound+height*(.115));
    
    switch(subNav)
    {
        case 1:
        {
            rect(width*(.14), height*(.225), width*(.2575), height*(.05));
            fill(0, 0, 0);
            textAlign(LEFT, CENTER);
            text("Strength", xBound + width*(.075), yBound + height*(.175));
            text("10", xBound + width*(.3), yBound + height*(.175));
            fill(40, 255, 40);
            textAlign(LEFT, TOP);
            text("Strength is a measure of your raw \nphysical power. it afftects how much you \ncan carry, and the damage of all melee \nattacks."
            , xBound + width*(.365), yBound + height*(.5));
            break;
        }//end case 1
        case 2:
        {
            rect(width*(.14), height*(.3), width*(.2575), height*(.05));
            fill(0, 0, 0);
            textAlign(LEFT, CENTER);
            text("Perception", xBound + width*(.075), yBound + height*(.25));   
            text("10", xBound + width*(.3), yBound + height*(.25));
            fill(40, 255, 40);
            textAlign(LEFT, TOP);
            text("Perception is your environmental \nawareness and \"sixth sense,\" and affects \naccuract in V.A.T.S."
            , xBound + width*(.365), yBound + height*(.5));
            break;
        }//end case 2
        case 3:
        {
            rect(width*(.14), height*(.375), width*(.2575), height*(.05));
            fill(0, 0, 0);
            textAlign(LEFT, CENTER);
            text("Endurance", xBound + width*(.075), yBound + height*(.325));   
            text("10", xBound + width*(.3), yBound + height*(.325));
            fill(40, 255, 40);
            textAlign(LEFT, TOP);
            text("Endurance is a measure of your overall \nphysical fitness. It affects your total \nHealth and the Action Point drain from \nsprinting."
            , xBound + width*(.365), yBound + height*(.5));
            break;
        }//end case 3
        case 4:
        {  
            rect(width*(.14), height*(.45), width*(.2575), height*(.05));
            fill(0, 0, 0);
            textAlign(LEFT, CENTER);
            text("Charisma", xBound + width*(.075), yBound + height*(.4));     
            text("10", xBound + width*(.3), yBound + height*(.4));
            fill(40, 255, 40);
            textAlign(LEFT, TOP);
            text("Charisma is your ability to charm and \nconvince others. It affects your success \nto persuade in dialogue and prices when \nyou barter."
            , xBound + width*(.365), yBound + height*(.5));
            break;
        }//end case 4
        case 5:
        {
            rect(width*(.14), height*(.525), width*(.2575), height*(.05));
            fill(0, 0, 0);
            textAlign(LEFT, CENTER);
            text("Intelligence", xBound + width*(.075), yBound + height*(.475)); 
            text("10", xBound + width*(.3), yBound + height*(.475));
            fill(40, 255, 40);
            textAlign(LEFT, TOP);
            text("Intelligence is a measure of your overall \nmental acuity, and affects the number of \nExperience Points earned."
            , xBound + width*(.365), yBound + height*(.5));
            break;
        }//end case 5
        case 6:
        {
            rect(width*(.14), height*(.6), width*(.2575), height*(.05));
            fill(0, 0, 0);
            textAlign(LEFT, CENTER);
            text("Agility", xBound + width*(.075), yBound + height*(.55));     
            text("10", xBound + width*(.3), yBound + height*(.55));
            fill(40, 255, 40);
            textAlign(LEFT, TOP);
            text("Agility is a measure of your overall \nfinesse and reflexes. It affects the \nnumber of Action Points in V.A.T.S and \nyour ability to sneak."
            , xBound + width*(.365), yBound + height*(.5));
            break;
        }//end case 6
        case 7:
        {
            rect(width*(.14), height*(.675), width*(.2575), height*(.05));
            fill(0, 0, 0);
            textAlign(LEFT, CENTER);
            text("Luck", xBound + width*(.075), yBound + height*(.625));
            text("10", xBound + width*(.3), yBound + height*(.625));
            fill(40, 255, 40);
            textAlign(LEFT, TOP);
            text("Luck is a measure of your general good \nfortune, and affects the recharge rate of \nCritical Hits."
            , xBound + width*(.365), yBound + height*(.5));
            break;
        }//end case 7
    }//end switch
    
}//end subMenu1_2