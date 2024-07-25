public class Solution {
    public string MergeAlternately(string word1, string word2) {
        string result = "";
        int len1 = word1.Length;
        int len2 = word2.Length;
        int maxLen = Math.Max(len1, len2);
        char[] merged = new char[len1 + len2];

        int index = 0;
        for (int i = 0; i < maxLen; i++) {
            if (i < len1) {
                merged[index++] = word1[i];
            }
            if (i < len2) {
                merged[index++] = word2[i];
            }
        }
        return new string(merged);
    }
}