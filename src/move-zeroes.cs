public class Solution {
    public void MoveZeroes(int[] nums) {
        int pointer = 0;
        int saveNotZero = 0;
       while (pointer<nums.Length)
        {
            if(nums[pointer]!=0)
               {
                int temp = nums[saveNotZero];
                nums[saveNotZero] = nums[pointer];
                nums[pointer] = temp;
                saveNotZero++;
               }
            pointer++;
        }
    }
}