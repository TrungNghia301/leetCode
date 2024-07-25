public class Solution {
        public int GCD(int n1, int n2){
        while (n1 != 0 && n2 != 0)
        {
            if (n1 > n2){
                n1 %= n2;
            } 
            else {
                n2 %= n1;
            }
        }

        return n1 | n2;
    }
    public string GcdOfStrings(string str1, string str2) {
      if (str1 + str2 != str2 + str1){
        return "";
      }
      int gcdLen = GCD(str1.Length,str2.Length);
      return str1.Substring(0, gcdLen);
    }
}