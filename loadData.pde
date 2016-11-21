// Function to load data from a table
void loadData(String file)
{
    Table t = loadTable(file); // Holds the loaded table while in use
    
    //Checks if the file is a table
    if(file.endsWith(".csv"))
    {
        for(int i=0; i<t.getRowCount(); i++)
        {
            TableRow row = t.getRow(i); // Variable to temporaraly hold the current row
            
            //Variable to temporeraly hold the data before it goes into an array list
            inventory_List cur = new inventory_List(row);
            
            //Checks to see the type of item it has loaded
            if(cur.type.equals("R"))// Ranged Weapons
            {
                // Checks if the quantity is greater than 0
                if(row.getInt(8) > 0)
                {
                    //Loads the current row into Weapons
                    Weapons.add(cur);
                }//end if
            }//end if
            else if(cur.type.equals("M"))// Melee Weapons
            {
                // Checks if the quantity is greater than 0
                if(row.getInt(6) > 0)
                {
                    //Loads the current row into Weapons
                    Weapons.add(cur);
                }//end if
            }//end else if
            else if(cur.type.equals("A")) // Apparel
            {
                // Checks if the quantity is greater than 0
                if(row.getInt(7)>0)
                {
                    //Loads the current row into Apparel
                    Apparel.add(cur);
                }//end if
            }//end else if
            else if(cur.type.equals("O"))
            {
                // Checks if the quantity is greater than 0
                if(row.getInt(4)>0)
                {
                    //Loads the current row into Miscellaneous
                    Miscellaneous.add(cur);
                }//end if
            }//end else if
        }//end for
    }//end if
}//end loadData()