public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  return word.isEqual(reverse(word));
  //return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for(int n =str.length()-1; n>=0; n--)
    {
      snew = snew + str.substring(n,n+1);
    }
    return sNew;
}


