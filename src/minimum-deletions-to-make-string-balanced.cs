public class Solution {
    public int MinimumDeletions(string s) {
        int minDeletions = int.MaxValue;
        int counta = 0 ,countb = 0;
        foreach (var i in s)
        {
            if (i == 'a'){
                counta++;
            }
        }
        foreach (var i in s)
        {
            if(i=='a')
            {
                counta--;
            }
            else 
            {
                minDeletions = Math.Min(minDeletions, countb+counta);
                countb++;
            }
            
        }
        return Math.Min(countb, minDeletions);
    }
}