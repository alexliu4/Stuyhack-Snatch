class Players {
  boolean playerOne;
  ArrayList<String> words;
  
    
  void WordBank(String filename) throws FileNotFoundException{

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

  
  void turn() {
    if (isAWord(result)){
      playerOne = !playerOne;
    }else if (timer > 12.0){
      playerOne = !playerOne;
    }
  }
  
  
  
  
  
  
}
