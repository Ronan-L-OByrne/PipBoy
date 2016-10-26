void keyPressed()
{
    if(     keyCode == LEFT  && subM > 1  && menu == 1)
    {
        subM--;
    }//end if
    else if(keyCode == RIGHT && subM < 3  && menu == 1)
    {
        subM++;
    }//end else if
    else if(keyCode == RIGHT && subM == 3 && menu == 1)
    {
        subM = 1;
    }//end else if
    else if(keyCode == LEFT  && subM == 1 && menu == 1)
    {
        subM = 3;
    }//end else if
    else if(keyCode == UP)
    {
        if(menu > 1)
        {
            menu--;
        }//end else if
        else
        {
            menu = 5;
        }//end else
    }//end else if
    else if(keyCode == DOWN)
    {
        if(menu < 5)
        {
            menu++;
        }//end else if
        else
        {
            menu = 1;
        }//end else
    }//end else if
}//end keyPressed()