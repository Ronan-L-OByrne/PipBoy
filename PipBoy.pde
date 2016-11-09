/*Pip_Boy UI, Object Oriented Programming Assignment: Year 2-Semester 1
  
  This Program is meant to create a User Interface based of the Pip-Boy 4000 from the 
  game Fallout 4.

  Date Begun: 10/10/2016;    Date Finished: xx/xx/xxxx

  Author: Ronan O'Byrne, C15332036;
*/

//Setup
void setup()
{ 
    // fullScreen();
     size(1000, 700);
    // size(500, 350);
    // size(750, 750);
    
    globalFont = loadFont("AgencyFB-Bold-48.vlw");
    
    PipBoy     = loadFont("BodoniMTCondensed-Italic-48.vlw");
    
    walkCycle = new Animation("Vault-Boy_Walking_", 21, (int)(width*(.4 )), (int)(height*(.45)) );
    Thumb     = new Animation("Vault-Boy_Thumb_"  , 1 , (int)(width*(.15)), (int)(height*(.325)));
    Hacker    = new Animation("Hacker_"           , 1 , (int)(width*(.25)), (int)(height*(.25)) );
    killS     = new Animation("Killshot_"         , 1 , (int)(width*(.35)), (int)(height*(.3))  );
    Berserk   = new Animation("Berserk_"          , 1 , (int)(width*(.3) ), (int)(height*(.35)) );
    
    Outliner();
    topRightMenu();
    
    loadData("Inventory.csv");
    
    for(int i=0; i<Weapons.size(); i++)
    {
        inventory_List disp1 = Weapons.get(i);
        println(disp1);
    }//end for
    for(int i=0; i<Apparel.size(); i++)
    {
        inventory_List disp2 = Apparel.get(i);
        println(disp2);
    }//end for
    
    //Split(0, (Weapons.size()-1)/2, Weapons.size()-1);
}//end setup

//Global Variables
int     i, j;                 // Index variables for loops
int     invApp, invWea;
float   Ventx, Venty;         // Used to position the vents
float   Radian = PI/2;        // Quarter Circle

int     Light=0;              // Used for the small red light
boolean Grad = true;          // Used for the small red light
boolean Start = false;        //

PFont   globalFont, PipBoy;   // Fonts Used for Text

int     menu   = 5;           // Used to position the menu
int     subM   = 1;
int     subNav = 2;
float   menuPos;              //Stores the current position of the menu

Animation walkCycle, Thumb, Hacker, killS, Berserk;

ArrayList<inventory_List> Weapons       = new ArrayList<inventory_List>();
ArrayList<inventory_List> Apparel       = new ArrayList<inventory_List>();
ArrayList<inventory_List> Miscellaneous = new ArrayList<inventory_List>();
sineWave Sine = new sineWave();

//Draw
void draw()
{
    Screen();
}//end void draw