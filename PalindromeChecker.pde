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
  //your code 
  String allLetter = new String();
  for(int n = 0; n<word.length(); n++)
  {
    if(Character.isLetter(word.charAt(n)))
    {
      allLetter = allLetter + word.substring(n,n+1);
    }
  }
  allLetter = allLetter.toLowerCase();
  return allLetter.equals(reverse(allLetter));
  //return false;
}
public String reverse(String str)
{
    String sNew = new String();
  //your code here
    for(int n =str.length()-1; n>=0; n--)
    {
      sNew = sNew + str.substring(n,n+1);
    }
    return sNew;
}


