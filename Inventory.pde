// Contains weapon_List class, This will read and store data on all weapons from a file
class weapon_List
{
    String type    ;
    String name    ;
    int    damage  ;
    int    fireRate;
    String speed   ;
    int    range   ;
    int    accuracy;
    float  weight  ;
    int    value   ;
    int    qty     ;
    
    weapon_List(TableRow row)
    {
        type = row.getString(0);
        
        if(type.equals("R"))
        {
            name     = row.getString(1);
            damage   = row.getInt(2)   ;
            fireRate = row.getInt(3)   ;
            range    = row.getInt(4)   ;
            accuracy = row.getInt(5)   ;
            weight   = row.getFloat(6) ;
            value    = row.getInt(7)   ;
            qty      = row.getInt(8)   ;
        }//end if
        else if(type.equals("M"))
        {
            name     = row.getString(1);
            damage   = row.getInt(2)   ;
            speed    = row.getString(3);
            weight   = row.getInt(4)   ;
            value    = row.getInt(5)   ;
            qty      = row.getInt(6)   ;
        }//end else if
        else
        {
            println("ERROR");
        }//end else
    }//end weapon_Ranged()
    
    String toString()
    {
        if(type.equals("R"))
        {
            return name + "\t" + damage + "\t" + fireRate + "\t" + range + "\t" + accuracy + "\t" + weight + "\t" + value + "\t" +  qty;
        }// end if
        else if(type.equals("M"))
        {
            return name + "\t" + damage + "\t" + speed + "\t" + weight + "\t" + value + "\t" + qty;
        }//end else if
        else
        {
            return "\0";
        }//end else
    }//end String toString
}//end class weapon_Ranged