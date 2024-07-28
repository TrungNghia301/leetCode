public class Solution {
    public int LargestAltitude(int[] gain) {
        int n = gain.Length;
        int[] prefix = new int[n + 1];
        int maxHigh = 0;

        Array.Copy(gain, 0, prefix, 1, n);

        for (int i = 1; i <= n; i++) {
            prefix[i] += prefix[i - 1];
            if (prefix[i] > maxHigh) {
                maxHigh = prefix[i];
            }
        }

        return maxHigh;
    }
}
