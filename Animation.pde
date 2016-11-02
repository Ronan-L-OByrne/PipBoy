// Displays every frame of the animation
class Animation
{
    PImage[] imgs; //Array will store the images in the Animation
    int imgCount;  //Number of images in a full cycle
    int curFrame;  //Current frame
    
    Animation(String imgEnd, int count, int sizeW, int sizeH)
    {
        imgCount = count;
        imgs     = new PImage[imgCount];
        
        for (i=0; i<imgCount; i++)
        {
            // Use nf() to add a 4 digit number to the imagename to differentiate the frames
            String filename = imgEnd + nf(i, 4) + ".png";
            imgs[i] = loadImage(filename);
            imgs[i].resize(sizeW, sizeH);//Scale the images
        }//end for
    }//end Animation
    
    void display(float xpic, float ypic) 
    {
        if(frameCount % 2 == 0)
        {
        curFrame = (curFrame+1) % imgCount;
        }
        image(imgs[curFrame], xpic, ypic);
        tint(40, 255, 40);
        
    }//end Display
}//end Animation