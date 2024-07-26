public class Solution {
    public IList<bool> KidsWithCandies(int[] candies, int extraCandies) {
        int max = candies.Max();
        IList <bool> result = new List<bool>();
        foreach (int candy in candies){
            result.Add(candy + extraCandies >= max);
        }
        return result;
    }
}