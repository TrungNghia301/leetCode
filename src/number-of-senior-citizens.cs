public class Solution {
    public int CountSeniors(string[] details) {
        int count = 0;  

        foreach (var detail in details)  
        {  
            string ageStr = detail.Substring(11, 2);  
            int age = int.Parse(ageStr);  
            if (age > 60)  
            {  
                count++;  
            }  
        }  
        return count;
    }
}