public class Solution {
    public int MaxVowels(string s, int k) {
        char[] elementString = s.ToCharArray();
        HashSet<char> vowels = new HashSet<char>{'a', 'o', 'e', 'u', 'i', 'A', 'O', 'E', 'U', 'I'};
        int currentLetter = 0;
        int left = 0;
        int right = 0;
        int maxOfVowels = 0;

        while (right < elementString.Length) {
            if (vowels.Contains(elementString[right])) {
                currentLetter++;
            }
            if (right - left + 1 > k) {
                if (vowels.Contains(elementString[left])) {
                    currentLetter--;
                }
                left++;
            }
            maxOfVowels = Math.Max(maxOfVowels, currentLetter);
            right++;
        }
        GC.Collect();
        return maxOfVowels;
    }
}