// Displays every frame of the animation
class Animation
{
    ArrayList<PImage> imgs; //Array will store the images in the Animation
    int imgCount;  //Number of images in a full cycle
    int curFrame;  //Current frame
    
    //Loads the image from the data folder
    Animation(String imgEnd, int count, int sizeW, int sizeH)
    {
        imgCount = count; // Number of images in the animation (i only use one animation but re-use the code setting the count to 1)
        imgs     = new ArrayList <PImage>(); // Array list stores the frames associated with the animation
        PImage temp; // Temp which is then written into the array list
        
        // Loop to load files associated with the animation
        for (int i=0; i<imgCount; i++)
        {
            // nf() adds 4 digits onto the end depending on the frames associated with the file (4 digits is unnessicary for this program)
            String filename = imgEnd + nf(i, 4) + ".png"; //Adds a number and .png onto the end of the loaded image
            temp = loadImage(filename);       // Temporaraly loads the image before writting it to the array list
            imgs.add(temp);                   // Loads the given image into the program
            imgs.get(i).resize(sizeW, sizeH); //Scale the images//Resizes the image to the given sizes
        }//end for
    }//end Animation
    
    void display(float xpic, float ypic) 
    {
        //Dictates the speed at which the animation is displayed when there is more than 1 frame
        if(frameCount % 2 == 0)
        {
            curFrame = (curFrame+1) % imgCount; //Makes sure the animation loops repeatedly
        }//end if
        
        tint(40, 255, 40);                     //Tints the image to the same green as the rest of the om screen data
        image(imgs.get(curFrame), xpic, ypic); //Displays the image at the given co-ordinatesk
    }//end Display
}//end Animation