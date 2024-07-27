public class Solution {
    public int LongestOnes(int[] nums, int k) {
        int left = 0;
        int right = 0;
        int countZero = 0;
        int maxOfnumbOne = 0;
        
        while(right < nums.Length) {    
            if(nums[right] == 0) {
                countZero++;
            }
            
            while(countZero > k) {
                if(nums[left] == 0) {
                    countZero--;
                }
                left++;
            }
            
            maxOfnumbOne = Math.Max(maxOfnumbOne, right - left + 1);
            right++;
        }
        return maxOfnumbOne;
    }
}
