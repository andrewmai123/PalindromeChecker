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
  String str = new String();
  int last = word.length()-1;
  for (int i = last; i >= 0; i--)
  {
    str = str + word.charAt(i);
  }
  if (word.equals(str))
  {
    return true;
  }
  return false;
}


public String reverse(String str)
{
    String sNew = new String();
    int last = str.length()-1;
    for (int i = last; i >= 0; i--)
    {
      sNew = sNew + str.charAt(i);
    }
    return sNew;
}

public String noSpaces(String sWord){
  String s = new String();
  for (int i = 0; i < sWord.length(); i++)
  {
    if (!sWord.substring(i,i+1).equals(" "))
    {
      s += sWord.substring(i,i+1);
    }
  }
  
  return s;
}


public int numLetters(String sString){
  int x = 0;
  for (int i = 0; i < sString.length(); i++)
  {
    if (Character.isLetter(sString.charAt(i)) == true)
    {
      x = x + 1;
    }
  }
  
  return x;  
}

public String noCapitals(String sWord){
  return (sWord.toLowerCase());

}


