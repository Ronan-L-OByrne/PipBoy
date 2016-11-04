void loadData(String table)
{
    Table t = loadTable(table);
    
    for(i=0; i<t.getRowCount(); i++)
    {
        TableRow row = t.getRow(i);
        
        inventory_List cur = new inventory_List(row);
        
        if(cur.type.equals("R") || cur.type.equals("M"))
        {
            Weapons.add(cur);
        }//end if
        else if(cur.type.equals("A"))
        {
            Apparel.add(cur);
        }//end else
    }//end for
}//end loadData()