// Contains inventory_List class, This will read and store data on all weapons from a file
public class inventory_List
{
    // Variables associated with the various inventory items
    String  type          ; // Used to find what ArrayList it should be in
    String  name          ;
    
    float   weight        ;
    int     value         ;
    int     qty           ;
    
    String toString()
    {
        return name + "\t" + weight + "\t" + value + "\t" + qty;
    }//end toString()
}//end class inventory_List

//Begin class MeleeWeapon extends inventory_List
public class MeleeWeapon extends inventory_List
{
    int     damage        ;
    String  speed         ;
    int     range         ;
    int     accuracy      ;
    boolean equipped=false;
    
    MeleeWeapon(TableRow row)
    {
        type = row.getString(0); // Loads the type of item
        
        this.name     = row.getString(1);
        this.damage   = row.getInt(2)   ;
        this.speed    = row.getString(3);
        this.weight   = row.getInt(4)   ;
        this.value    = row.getInt(5)   ;
        this.qty      = row.getInt(6)   ;
        this.equipped = false           ;
    }//end MeleeWeapon
    
    String toString()
    {
        return name + "\t" + damage + "\t" + speed + "\t" + weight + "\t" + value + "\t" + qty;
    }//end toString()
}//end class MeleeWeapon extends inventory_List

//Begin class RangedWeapon extends inventory_List
public class RangedWeapon extends inventory_List
{
    int     damage        ;
    int     fireRate      ;
    int     range         ;
    int     accuracy      ;
    boolean equipped=false;
    
    RangedWeapon(TableRow row)
    {
        type = row.getString(0); // Loads the type of item
        
        this.name     = row.getString(1);
        this.damage   = row.getInt(2)   ;
        this.fireRate = row.getInt(3)   ;
        this.range    = row.getInt(4)   ;
        this.accuracy = row.getInt(5)   ;
        this.weight   = row.getFloat(6) ;
        this.value    = row.getInt(7)   ;
        this.qty      = row.getInt(8)   ;
        this.equipped = false           ;
    }//end RangedWeapon
    
    String toString()
    {
        return name + "\t" + damage + "\t" + fireRate + "\t" + range + "\t" + accuracy + "\t" + weight + "\t" + value + "\t" +  qty;
    }//end toString()
}//end class RangedWeapon extends inventory_List

//Begin class Apparel extends inventory_List
public class Apparel extends inventory_List
{
    int     radRes        ;
    int     engRes        ;
    int     dmgRes        ;
    boolean equipped=false;
    
    Apparel(TableRow row)
    {
        type = row.getString(0); // Loads the type of item
        
        this.name     = row.getString(1);
        this.dmgRes   = row.getInt(2)   ;
        this.radRes   = row.getInt(3)   ;
        this.engRes   = row.getInt(4)   ;
        this.weight   = row.getInt(5)   ;
        this.value    = row.getInt(6)   ;
        this.qty      = row.getInt(7)   ;
    }//end Apparel
    
    String toString()
    {
        return name + "\t" + dmgRes + "\t" + radRes + "\t" + engRes + "\t" + weight + "\t" + value + "\t" + qty;
    }//end toString()
}//end class Apparel extends inventory_List

//Begin class Misc extends inventory_List
public class Misc extends inventory_List
{
    Misc(TableRow row)
    {
        type = row.getString(0); // Loads the type of item
        
        this.name     = row.getString(1);
        this.weight   = row.getInt(2)   ;
        this.value    = row.getInt(3)   ;
        this.qty      = row.getInt(4)   ;
    }//end Misc
    
    String toString()
    {
        return name + "\t" + weight + "\t" + value + "\t" + qty;
    }//end toString
}//end class Misc extends inventory_List

// Function to load data from a table
void loadData(String file)
{
    Table t = loadTable(file); // Holds the loaded table while in use
    
    //Checks if the file is a table
    if(file.endsWith(".csv"))
    {
        for(int i=0; i<t.getRowCount(); i++)
        {
            TableRow row = t.getRow(i); // Variable to temporaraly hold the current 
            String type = row.getString(0);
            
            //Variable to temporeraly hold the data before it goes into an array list
            //Checks to see the type of item it has loaded
            if(type.equals("R"))// Ranged Weapons
            {
                RangedWeapon cur = new RangedWeapon(row);
                // Checks if the quantity is greater than 0
                if(row.getInt(8) > 0)
                {
                    //Loads the current row into Weapons
                    Ranged_Weapons.add(cur);
                }//end if
            }//end if
            else if(type.equals("M"))// Melee Weapons
            {
                MeleeWeapon cur = new MeleeWeapon(row);
                // Checks if the quantity is greater than 0
                if(row.getInt(6) > 0)
                {
                    //Loads the current row into Weapons
                    Melee_Weapons.add(cur);
                }//end if
            }//end else if
            else if(type.equals("A")) // Apparel
            {
                Apparel cur = new Apparel(row);
                // Checks if the quantity is greater than 0
                if(row.getInt(7)>0)
                {
                    //Loads the current row into Apparel
                    Apparel.add(cur);
                }//end if
            }//end else if
            else if(type.equals("O"))
            {
                Misc cur = new Misc(row);
                
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