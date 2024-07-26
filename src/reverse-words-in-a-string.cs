public class Solution {
    public string ReverseWords(string s) {
        char[] delChar = {' '};
        string[] arrString = s.Split(delChar,StringSplitOptions.RemoveEmptyEntries);
        var reversedArray = arrString.Reverse();
        string result = string.Join(" ", reversedArray);
        return result.ToString();
    }
}