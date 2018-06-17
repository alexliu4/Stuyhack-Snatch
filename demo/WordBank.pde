import java.util.*;
import java.io.*;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
 class WordBank{

  ArrayList<String> words;
    
  WordBank(String filename) throws FileNotFoundException{

  words = new ArrayList<String>();
  
  File text = new File(filename);
  Scanner inputFile = new Scanner(text);

  while (inputFile.hasNextLine()){
      String word = inputFile.nextLine().trim();
      words.add(word);
  }
  
     
  }

  boolean isAWord(String w){
   return words.indexOf(w) != -1;
  }

  String toString(){
    String str = "";
  for (String s: words){
      System.out.println(s);
      str += s;
  }
  return str;
    }
/*
  public static void main(String[]args){
  try{
      WordBank x = new WordBank("WordList.txt");
      //System.out.println(x);
      System.out.println(x.isAWord("infernal"));
  }catch(Exception e){}

        
    }
*/
}
