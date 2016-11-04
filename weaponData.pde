// Function to find and display the data associated with a certain weapon
void weaponData(weapon_List Data)
{
    if(Data.type.equals("M"))
    {
        fill(0, 100, 0);
        rect(width*(.5), height*(.5), 50, 50);
    }//end if
    else if(Data.type.equals("R"))
    {
        
    }//end else if
    else
    {
        return;
    }//end else
}//end meleeData()