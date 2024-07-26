public class Solution {
    public int MaxOperations(int[] nums, int k) {
        int right = nums.Length - 1;
        int left = 0;
        int count = 0;
        Array.Sort(nums);
        while (left < right)
        {
            int s = nums[left]+nums[right];
            if(s==k)
                {
                    count++;
                    left++;
                    right--;
                }
            else if(s < k)
            {
                left++;
            }
            else
            {
                right--;
            }
        }
        GC.Collect();
        return count;

    }
}