void topRightMenu()
{
    menuPos = (menu*(height*(.028871428)))+(height*(.043057143));
    noStroke();
    fill(135, 92, 42);
    rect(width*(.95), height*(.21427), width*(.1), height*(.05));
    
    //Top Right Menu
    stroke(0, 0, 0);
    fill(135, 92, 42);
    rect(width*(.885), height*(.071428571), width*(.1), height*(.142857142));
    fill(60, 60, 60);
    rect(width*(.95),  height*(.071428571), width*(.1), height*(.142857142));
    fill(0, 0, 0);
    rect(width*(.952), (menuPos), width*(.107), height*(.032871428));
    fill(60, 60, 60);
    rect(width*(.95) , (menuPos), width*(.1)  , height*(.028871428));
    fill(210, 255, 0);
    textFont(globalFont, height*(.03));
    textAlign(RIGHT,CENTER);
    text("STAT",  width*(.945), height*(.087028571));
    text("INV",   width*(.945), height*(.115599999));
    text("DATA",  width*(.945), height*(.144171427));
    text("MAP",   width*(.945), height*(.172742855));
    text("RADIO", width*(.945), height*(.202314283));
    
}//end TopRigthMenu