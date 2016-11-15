/*Pip_Boy UI, Object Oriented Programming Assignment: Year 2-Semester 1
  
  This Program is meant to create a User Interface based of the Pip-Boy 4000 from the 
  game Fallout 4.

  Date Begun: 10/10/2016;    Date Finished: xx/xx/xxxx

  Author: Ronan O'Byrne, C15332036;
  
  *Requires the processing.sound library which can be downloaded in Sketch-> Import Library... -> Add Library... Filter by sound and download the Sound library by The Processing Foundation
*/

// Extra Libraries
import processing.sound.*;

//Setup
void setup()
{ 
    int i=0;
    // fullScreen();
     size(1000, 700);
    // size(500, 350);
    // size(750, 750);
    
    globalFont = loadFont("AgencyFB-Bold-48.vlw");
    
    PipBoy    = loadFont("BodoniMTCondensed-Italic-48.vlw");
    walkCycle = new Animation("Vault-Boy_Walking_", 21, (int)(width*(.4 )), (int)(height*(.45)) );
    Thumb     = new Animation("Vault-Boy_Thumb_"  , 1 , (int)(width*(.15)), (int)(height*(.325)));
    Hacker    = new Animation("Hacker_"           , 1 , (int)(width*(.25)), (int)(height*(.25)) );
    killS     = new Animation("Killshot_"         , 1 , (int)(width*(.35)), (int)(height*(.3))  );
    Berserk   = new Animation("Berserk_"          , 1 , (int)(width*(.3) ), (int)(height*(.35)) );
    Map       = new Animation("Map_"              , 1 , (int)(width*(.6) ), (int)(height*(.645)));
    
    Outliner();
    topRightMenu();
    
    loadData("Weapons.csv");
    loadData("Miscellaneous.csv");
    loadData("Apparel.csv");
    
    SoundFile cur = new SoundFile(this, "Nocturne.mp3");
    Classic.add(cur);
    
    cur = new SoundFile(this, "Fire.mp3");
    Diamond.add(cur);
    
    for(i=0; i<Weapons.size(); i++)
    {
        println(Weapons.get(i));
    }//end for
    for(i=0; i<Apparel.size(); i++)
    {
        println(Apparel.get(i));
    }//end for
    for(i=0; i<Miscellaneous.size(); i++)
    {
         println(Miscellaneous.get(i));
    }//end for
    
    Sine = new sineWave();
}//end setup

//Global Variables
int     i, j;                 // Index variables for loops
int     invApp, invWea, invMisc;
float   Ventx, Venty;         // Used to position the vents
float   Radian = PI/2;        // Quarter Circle

int     Light=0;              // Used for the small red light
boolean Grad = true;          // Used for the small red light
boolean Start = false;        //

PFont   globalFont, PipBoy;   // Fonts Used for Text

int     menu   = 4;           // Used to position the menu
int     subM   = 1;
int     subNav = 1;
float   menuPos;              //Stores the current position of the menu

Animation walkCycle, Thumb, Hacker, killS, Berserk, Map;
sineWave Sine;

ArrayList<inventory_List> Weapons       = new ArrayList<inventory_List>();
ArrayList<inventory_List> Apparel       = new ArrayList<inventory_List>();
ArrayList<inventory_List> Miscellaneous = new ArrayList<inventory_List>();
ArrayList<SoundFile> Classic            = new ArrayList<SoundFile>()     ;
ArrayList<SoundFile> Diamond            = new ArrayList<SoundFile>()     ;

//SoundFile Classic;
//SoundFile Diamond;
boolean ClassicB = false;
boolean DiamondB = false;

boolean Splash = false;

//Draw
void draw()
{
    Light(); //Draws the Red Light below the screen on the outliner
    Screen();//Draws most of the important stuff on the screen that the user interacts with
}//end void draw