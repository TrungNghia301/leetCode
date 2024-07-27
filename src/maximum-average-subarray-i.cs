public class Solution {
    public double FindMaxAverage(int[] nums, int k) {
        double maxSum = 0;
        double currentSum = 0;
        int left = 0;
        int right = 0;

        while (right < nums.Length) {
            currentSum += nums[right];
            
            if (right - left + 1 == k) {
                if (left == 0) { 
                    maxSum = currentSum; 
                } else {
                    maxSum = Math.Max(maxSum, currentSum);
                }
                currentSum -= nums[left];
                left++;
            }
            
            right++;
        }

        return maxSum / k;
    }
}
