// Function to load data from a table
void loadData(String table)
{
    Table t = loadTable(table);
    
    for(i=0; i<t.getRowCount(); i++)
    {
        TableRow row = t.getRow(i);
        
        inventory_List cur = new inventory_List(row);
        
        if(cur.type.equals("R"))
        {
            if(row.getInt(8) > 0)
            {
                Weapons.add(cur);
            }//end if
        }//end if
        else if(cur.type.equals("M"))
        {
            if(row.getInt(6) > 0)
            {
                Weapons.add(cur);
            }//end if
        }//end else if
        else if(cur.type.equals("A"))
        {
            if(row.getInt(7)>0)
            {
                Apparel.add(cur);
            }//end if
        }//end else if
        else if(cur.type.equals("O"))
        {
            if(row.getInt(4)>0)
            {
                Miscellaneous.add(cur);
            }//end if
        }//end else if
    }//end for
}//end loadData()