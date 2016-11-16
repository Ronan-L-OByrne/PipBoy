class Stats
{
    int[] SPECIAL = new int [7];
    int Level                  ;
    int[] Hp      = new int [2];
    int[] Ap      = new int [2];
    int dmgRes                 ;
    int radRes                 ;
    int engRes                 ;
    
    Stats()
    {
        for(int i=0; i<7; i++)
        {
            this.SPECIAL[i] = (int)random(1, 10);
        }//end for
        
        this.Level = (int)random(1, 10);
        this.Hp[0] = (int)(80+(this.SPECIAL[2]*5)+(this.Level-1)*((this.SPECIAL[2]/2)+2.5));
        this.Hp[1] = Hp[0]-(int)random(0, Hp[0]-1);
        
        this.Ap[0] = 60+(10*SPECIAL[5]);
        this.Ap[1] = Ap[0]-(int)random(0, Ap[0]-1);
        
        this.dmgRes = 0;
        this.radRes = 0;
        this.engRes = 0;
    }//end Stats
}//end Stats