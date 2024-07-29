public class Solution {
    public int PivotIndex(int[] nums) {
        int totalValue = nums.Sum();
        int prefix = 0;
        for (int i= 0 ; i<nums.Length;i++)
        {
            if (prefix == totalValue - nums[i] - prefix)
            {
                return i;
            }
            prefix += nums[i];
        }
        return -1;
    }
}