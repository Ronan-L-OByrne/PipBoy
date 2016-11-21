// Contains inventory_List class, This will read and store data on all weapons from a file
class inventory_List
{
    //Variables associated with the various inventory items
    String  type          ;
    String  name          ;
    int     damage        ;
    int     fireRate      ;
    String  speed         ;
    int     range         ;
    int     accuracy      ;
    
    int     radRes        ;
    int     engRes        ;
    int     dmgRes        ;
    boolean equipped=false;
    
    float   weight        ;
    int     value         ;
    int     qty           ;
    
    //Enters the desired data into the variables
    inventory_List(TableRow row)
    {
        type = row.getString(0);//Loads the type of item
        
        //Is the item a Ranged weapon?
        if(type.equals("R"))
        {
            this.name     = row.getString(1);
            this.damage   = row.getInt(2)   ;
            this.fireRate = row.getInt(3)   ;
            this.range    = row.getInt(4)   ;
            this.accuracy = row.getInt(5)   ;
            this.weight   = row.getFloat(6) ;
            this.value    = row.getInt(7)   ;
            this.qty      = row.getInt(8)   ;
            this.equipped = false           ;
        }//end if
        //Is the item a Melee weapon?
        else if(type.equals("M"))
        {
            this.name     = row.getString(1);
            this.damage   = row.getInt(2)   ;
            this.speed    = row.getString(3);
            this.weight   = row.getInt(4)   ;
            this.value    = row.getInt(5)   ;
            this.qty      = row.getInt(6)   ;
            this.equipped = false           ;
        }//end else if
        //Is the item a piece of apparel?
        else if(type.equals("A"))
        {
            this.name     = row.getString(1);
            this.dmgRes   = row.getInt(2)   ;
            this.radRes   = row.getInt(3)   ;
            this.engRes   = row.getInt(4)   ;
            this.weight   = row.getInt(5)   ;
            this.value    = row.getInt(6)   ;
            this.qty      = row.getInt(7)   ;
        }//end else if
        else if(type.equals("O"))
        {
            this.name     = row.getString(1);
            this.weight   = row.getInt(2)   ;
            this.value    = row.getInt(3)   ;
            this.qty      = row.getInt(4)   ;
        }//end else if
        //Alerts to any error
        else
        {
            println("ERROR");
        }//end else
    }//end weapon_Ranged()
    
    //Displays the data associated with the item in the Console
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
        else if(type.equals("A"))
        {
            return name + "\t" + dmgRes + "\t" + radRes + "\t" + engRes + "\t" + weight + "\t" + value + "\t" + qty;
        }//end else if
        else if(type.equals("O"))
        {
            return name + "\t" + weight + "\t" + value + "\t" + qty;
        }//end else if
        else
        {
            return "ERROR";
        }//end else
    }//end String toString
}//end class weapon_Ranged

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