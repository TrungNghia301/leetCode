public class Solution {
    public bool CanPlaceFlowers(int[] flowerbed, int n) {
        bool result = false;  
        int temp = 0;
        int next = 0;
        for (int i = 0; i < flowerbed.Length;i++)
        {
            if(i != flowerbed.Length -1)
            {
                next = flowerbed[i+1];
            }
            if (flowerbed[i]==0 && temp == 0 && next ==0)
            {
                flowerbed[i] = 1;
                n--;
            }
            temp = flowerbed[i];
        }
        return n<=0;    
    }
}