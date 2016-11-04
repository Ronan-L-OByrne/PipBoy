void Split(int low, int mid, int high)
{
    if(low < high)
    {
        Split(low, (low+mid)/2, mid);
        Split(mid+1, ((mid+1)+high)/2, high);
        merge(low, mid, high);
    }//end if
}//end split()

void merge(int low, int mid, int high)
{
    int li = low;
    int ri = mid+1;
    int ci = low;
    ArrayList<weapon_List> Temp;
    
    Temp = new ArrayList<weapon_List>();
    
    while(li <= mid && ri <= high)
    {
        if(Weapons.get(li).qty <= Weapons.get(ri).qty)
        {
            Temp.add(ci, Weapons.get(li));
            li++;
        }//end if
        else
        {
            Temp.add(ci, Weapons.get(ri));
            ri++;
        }//end else
        ci++;
    }//end while
    
    if(li>mid)
    {
        for(i=ri; i<high; i++)
        {
            Temp.add(ci, Weapons.get(i));
            ci++;
        }//end for
    }//end for
    else
    {
        for(i=li; i<mid; i++)
        {
            Temp.add(ci, Weapons.get(i));
            ci++;
        }//end for
    }//end else
    
    Weapons.clear();
    
    for(j=1; j<Weapons.size(); i++)
    {
        Weapons.add(i, Temp.get(i));
    }//end for
}//end merge()