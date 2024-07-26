public class Solution {
    public string ReverseVowels(string s) {
        string IPA = "aoeuiAOEUI";
        var strResult = new StringBuilder();
        var tempStack = new Stack<char>();
        //Create a stack to save IPA character
        foreach (var i in s) 
        {
            if(IPA.Contains(i))
                {
                    tempStack.Push(i);
                }
        }
        //Build result string
        foreach (var i in s)
        {
            if(IPA.Contains(i))
            {
                // get value from saved stack 
                strResult.Append(tempStack.Pop());
            }
            else 
            {
                strResult.Append(i);
            }
        }
        return strResult.ToString();
    }
}