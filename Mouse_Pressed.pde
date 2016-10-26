void mousePressed()
{
    // Conditions for changing the Menu location
    if(mouseButton == LEFT && Button(width*(.952), (1*height*(.028871428))+height*(.043057143), 
    (width*(.952) + width*(.1)), (1*height*(.028871428))+height*(.043057143)+height*(.028871428)))
    {
        menu = 1;
        subM = 1;
    }//end if
    else if(mouseButton == LEFT && Button(width*(.952), 2*height*(.028871428)+height*(.043057143), 
    width*(.952) + width*(.1), 2*height*(.028871428)+height*(.043057143)+height*(.028871428)))
    {
        menu = 2;
        subM = 1;
    }//end else if
    else if(mouseButton == LEFT && Button(width*(.952), 3*height*(.028871428)+height*(.043057143), 
    width*(.952) + width*(.1), 3*height*(.028871428)+height*(.043057143)+height*(.028871428)))
    {
        menu = 3;
        subM = 1;
    }//end else if
    else if(mouseButton == LEFT && Button(width*(.952),(4*height*(.028871428))+height*(.043057143), 
    width*(.952) + width*(.1), 4*height*(.028871428)+height*(.043057143)+height*(.028871428)))
    {
        menu = 4;
        subM = 1;
    }//end else if
    else if(mouseButton == LEFT && Button(width*(.952), 5*height*(.028871428)+height*(.043057143),
    width*(.952) + width*(.1), 5*height*(.028871428)+height*(.043057143)+height*(.028871428)))
    {
        menu = 5;
        subM = 1;
    }//end else if
    
    
}//end mousePressed()