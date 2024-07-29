public class Solution {
    public IList<IList<int>> FindDifference(int[] nums1, int[] nums2) {
        List<IList<int>> result = new List<IList<int>>();
        HashSet<int> n1 = new HashSet<int> (nums1);
        HashSet<int> n2 = new HashSet<int> (nums2);
        var valueIndex0 = new List<int>();
        var valueIndex1 = new List<int>();
        foreach (var i in n1)
        {
            if (!n2.Contains(i))
            {
                valueIndex0.Add(i);
            }
        }
        foreach (var i in n2)
        {
            if (!n1.Contains(i))
            {
                valueIndex1.Add(i);
            }
        }
        result.Add(valueIndex0);
        result.Add(valueIndex1);
        return result;
    }
}