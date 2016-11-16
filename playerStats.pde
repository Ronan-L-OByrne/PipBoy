class Stats
{
    int[] SPECIAL = new int [7];
    int Level;
    int[] Hp = new int [2];
    int[] Ap = new int [2];
    int dmgRes;
    int radRes;
    int engRes;
    
    Stats()
    {
        for(int i=0; i<7; i++)
        {
            this.SPECIAL[i] = (int)random(1, 10);
        }//end for
        
        this.Level = (int)random(1, 10);
        this.Hp[0] = (int)(80+(this.SPECIAL[2]*5)+(this.Level-1)*((this.SPECIAL[2]/2)+2.5));
        this.Hp[1] = Hp[0]-(int)random(0, Hp[0]*(.5));
    }//end Stats
}//end Stats