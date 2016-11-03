void loadData(String table)
{
    Table t = loadTable(table);
    
    for(i=0; i<t.getRowCount(); i++)
    {
        TableRow row = t.getRow(i);
        
        if(table.equals("WeaponsFile.csv"))
        {
            weapon_List cur = new weapon_List(row);
            Weapons.add(cur);
        }//end if
    }//end for
}//end loadData()