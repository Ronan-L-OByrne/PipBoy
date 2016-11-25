/*Pip_Boy UI, Object Oriented Programming Assignment: Year 2 ~ Semester 1
  
  This Program is meant to create a User Interface based off the Pip-Boy 3000 Mark IV from the game Fallout 4.

  Date Begun: 10/10/2016;    Date Finished: xx/11/2016;
  Author: Ronan O'Byrne, C15332036;
  
  *Requires the processing.sound library which can be downloaded in Sketch-> Import Library... -> Add Library... Filter by sound and download the Sound library by The Processing Foundation
*/

// Extra Libraries
import processing.sound.*;

//Setup
void setup()
{ 
    int i=0;
    
    //Various screen sizes to test scaling
     size(1000, 700) ; // I chose a terrible resolution
    // size(1000, 1000);
    // size(500, 350)  ;
    // size(250, 175)  ;
    // size(750, 750)  ;
    // fullScreen()    ;
    
    //Loads the fonts used in the sketch
    globalFont = loadFont("AgencyFB-Bold-48.vlw")           ;
    PipBoy     = loadFont("BodoniMTCondensed-Italic-48.vlw");
    
    //Loads the images used in the sketch
    walkCycle = new Animation("Vault-Boy_Walking_", 21, (int)(width*(.4 )), (int)(height*(.45)) );
    Thumb     = new Animation("Vault-Boy_Thumb_"  , 1 , (int)(width*(.15)), (int)(height*(.325)));
    Hacker    = new Animation("Hacker_"           , 1 , (int)(width*(.25)), (int)(height*(.25)) );
    killS     = new Animation("Killshot_"         , 1 , (int)(width*(.35)), (int)(height*(.3))  );
    Berserk   = new Animation("Berserk_"          , 1 , (int)(width*(.3) ), (int)(height*(.35)) );
    Map       = new Animation("Map_"              , 1 , (int)(width*(.6) ), (int)(height*(.645)));
    
    //Sketch only draws the outliner once
    Outliner()    ;
    topRightMenu();
    
    // Loads the various tables
    loadData("Weapons.csv")      ;
    loadData("Miscellaneous.csv");
    loadData("Apparel.csv")      ;
    
    //Loads the sound files
    Classic = new SoundFile(this, "Nocturne.mp3");
    Diamond = new SoundFile(this, "Fire.mp3")    ;
    
    //Sound effects used in the program
    Effects[0] =  new SoundFile(this, "Equip.wav"  );
    Effects[1] =  new SoundFile(this, "Unequip.wav");
    Effects[2] =  new SoundFile(this, "RadioOn.wav");
    Effects[3] =  new SoundFile(this, "Move.wav"   );
    
    Effects[3].rate(.5);
    
    //Calculates the players current carry weight
    for(i=0; i<Melee_Weapons.size(); i++)
    {
        player.Weight += (int)Melee_Weapons.get(i).weight;
    }//end for
    for(i=0; i<Ranged_Weapons.size(); i++)
    {
        player.Weight += (int)Ranged_Weapons.get(i).weight;
    }//end for
    for(i=0; i<Apparel.size(); i++)
    {
        player.Weight += (int)Apparel.get(i).weight;
    }//end for
    for(i=0; i<Miscellaneous.size(); i++)
    {
        player.Weight += (int)Miscellaneous.get(i).weight;
    }//end for
    
    //Declares the sine wave used in subMenu5()
    Sine = new sineWave();
}//end setup

//Global Variables
int     Light= 0          ; // Used for the small red light (in outliner function)
boolean Grad = true       ; // Used for the small red light (in outliner function)
    
PFont   globalFont, PipBoy; // Fonts Used for Text

int     menu   = 1        ; // Used to select the menu
int     subM   = 1        ; // Used to select the sub Menu
int     subNav = 1        ; // Used to navigate within the sub menus

Animation walkCycle, Thumb, Hacker, killS, Berserk, Map; // The various images used in the program
sineWave Sine                                          ; // Displays the sine wave

ArrayList<RangedWeapon> Ranged_Weapons  = new ArrayList<RangedWeapon>();   // Stores the RangedWeapons in the players inventory
ArrayList<MeleeWeapon> Melee_Weapons    = new ArrayList<MeleeWeapon>();    // Stores the MeleeWeapons in the players inventory
ArrayList<Apparel> Apparel              = new ArrayList<Apparel>();        // Stores the Apparel in the players inventory
ArrayList<inventory_List> Miscellaneous = new ArrayList<inventory_List>(); // Stores the Misc items in the players inventory

int curEquipW = -1                    ; // Stores the array position of the currently equiped weapon

Stats player = new Stats()            ; // Stores the various data associated with the player

SoundFile[] Effects = new SoundFile[4]; // Array that hold the sound effects used in the sketch
SoundFile Classic, Diamond            ; // Variables to hold the sound files 
boolean ClassicB = false              ; // Records whether or not this song is playing
boolean DiamondB = false              ; // Records whether or not this song is playing
int playback                          ; // Used to tell when the music should replay

boolean Splash = true                 ; // Dictates whether or not the splash screen is being displayed

//Draw
void draw()
{
    float xBound = width *(.075)      ; // Shows the x value of the begining of the screen
    float yBound = height*(.075928571); // Shows the y value of the begining of the screen
    
    Light()                           ; // Draws the Red Light below the screen on the outliner
    GeigerCount()                     ; // Draws the geiger counter to the right of the screen
    Screen(xBound, yBound)            ; // Draws most of the important stuff on the screen that the user interacts with
    musicCheck()                      ; // Checks if music is playing and if the song has finished and should start again
}//end void draw