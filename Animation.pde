// Displays every frame of the animation
class Animation
{
    PImage[] imgs; //Array will store the images in the Animation
    int imgCount;  //Number of images in a full cycle
    int curFrame;  //Current frame
    
    //Loads the image from the data folder
    Animation(String imgEnd, int count, int sizeW, int sizeH)
    {
        imgCount = count;
        imgs     = new PImage[imgCount];
        
        for (i=0; i<imgCount; i++)
        {
            // nf() adds 4 digits onto the end depending on the frames associated with the file (4 digits is unnessicary for this program)
            String filename = imgEnd + nf(i, 4) + ".png"; //Adds a number and .png onto the end of the loaded image
            imgs[i] = loadImage(filename);                // Loads the given image into the program
            imgs[i].resize(sizeW, sizeH);                 //Scale the images//Resizes the image to the given sizes
        }//end for
    }//end Animation
    
    void display(float xpic, float ypic) 
    {
        //Dictates the speed at which the animation is displayed when there is more than 1 frame
        if(frameCount % 2 == 0)
        {
            curFrame = (curFrame+1) % imgCount; //Makes sure the animation loops repeatedly
        }//end if
        
        tint(40, 255, 40);                 //Tints the image to the same green as the rest of the om screen data
        image(imgs[curFrame], xpic, ypic); //Displays the image at the given co-ordinates
        
    }//end Display
}//end Animation