public class Solution {
    public int MaxArea(int[] height) {
        int maxArea = 0;
        int right = height.Length - 1;
        int left = 0;
        while (left < right)
        {
            int currentArea = Math.Min(height[left],height[right])*(right-left);
            maxArea = Math.Max(maxArea,currentArea);
            //Move pointer
            if (height[left]<height[right])
            {
                left++;
            }
            else
            {
                right--;
            }
        }
        GC.Collect();
        return maxArea;
    }
}