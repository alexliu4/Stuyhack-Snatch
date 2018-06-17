//GLOBAL VARIABLES

//to setup tiles
Tiles[] list = new Tiles[143];
String[] types = new String[31];

//to randomize
int current = 0;

//for textbox
int state = 0;
String result = "";

//timer & player
float timer = 0.0;
boolean player;
int playOne = 73;
int playTwo = 395;

//
String[] words;



//FUNCTIONS

//sets up background and tiles
void setup() {
  
  //wooden background
  size(1300, 700);
  PImage x = loadImage("images.jpeg");
  x.resize(1300, 700);
  background(x);
  
  //white textbox side
  PImage y = loadImage("white.png");
  y.resize(500,700);
  image(y , 850 , 1);
  
  //tiles
  for (int i=0; i < 143; ) {
    for (int row = 50; row < 1050; row+= 55 ){
      for (int col = 50; col < 650; col+=55){
        if (i < 143){
          list[i] = new Tiles( row, col);
           }
          i++;
      }
    }
  }
  tileValue();
  
  //highlight
  PImage dot = loadImage("greendot.png");
  dot.resize(20,20);
  image( dot, 1060, 35);
  image( dot, 1060, 365);
  
  words = loadStrings("Words.txt");
  
}

//array to choose randomly from
 void tileValue(){
    types[0] =  "./Tiles/A.png";
    types[1] =  "./Tiles/B.png";
    types[2] =  "./Tiles/C.png";
    types[3] =  "./Tiles/D.png";
    types[4] =  "./Tiles/E.jpeg";
    types[5] =  "./Tiles/F.png";
    types[6] =  "./Tiles/G.jpeg";
    types[7] =  "./Tiles/H.png";
    types[8] =  "./Tiles/I.jpg";
    types[9] =  "./Tiles/J.jpeg";
    types[10] =  "./Tiles/K.png";
    types[11] =  "./Tiles/L.jpeg";
    types[12] =  "./Tiles/M.png";
    types[13] =  "./Tiles/N.jpg";
    types[14] =  "./Tiles/O.png";
    types[15] =  "./Tiles/P.jpg";
    types[16] =  "./Tiles/Q.png";
    types[17] =  "./Tiles/R.jpg";
    types[18] =  "./Tiles/S.png";
    types[19] =  "./Tiles/T.png";
    types[20] =  "./Tiles/U.png";
    types[21] =  "./Tiles/V.png";
    types[22] =  "./Tiles/W.png";
    types[23] =  "./Tiles/X.png";
    types[24] =  "./Tiles/Y.png";
    types[25] =  "./Tiles/Z.jpeg";
    types[26] =  "./Tiles/A.png";
    types[27] =  "./Tiles/E.jpeg";
    types[28] =  "./Tiles/O.png";
    types[29] =  "./Tiles/I.jpg";
    types[30] =  "./Tiles/U.png";
    
 }


//tiles turn with each click randomly
void mouseReleased(){
    list[current].img1 = loadImage(types[(int)random(30)]);
    list[current].img1.resize(50, 50);
    current++;
  }
  
//makes the tiles appear
void draw() {
  //increment timer 
  timer += 0.1;
  
  for (int i=0; i < 143; i++) {
    list[i].appearBlank();
  }
  
  //Player labels
  text("PLAYER 1", 1000, 50);
  text("PLAYER 2", 1000, 380);
  
  turn();
  
 switch (state) {
  case 0:
    fill(0); 
    text ("Please enter something and hit enter to submit \n \n"+result, 950, 330); 
    break;
 
  case 1:
    fill(255, 2, 2); 
    if (player){
      text(result, 950, playOne);
      playOne += 10;
    }else {
    text (result, 950, playTwo);
    playTwo += 10;
    }
    result = "";
    PImage y = loadImage("white.png");
    y.resize(500,30);
    image(y , 850 , 340); //850
    state--;
    break;
  }
}
 
void keyPressed() {
  
  String ans = "";
 
  if (key == ENTER|| key == RETURN ) {
    if (isAWord(result))
    state++;
    
  } else if (key == BACKSPACE || key == DELETE){
    if(result.length() > 0){
      result = result.substring(0,result.length()-1);
      PImage y = loadImage("white.png");
      y.resize(500,30);
      image(y , 850 , 340); //850
    }
  } else
  result = result + key;
  
}

boolean isAWord(String w){
   for (String x: words){
     if (x.equals(w)){
       return true;
     }
   }
   return false;
}
/*
//TURNS 
void WordBank(String filename) {

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
    
//

*/
  void turn() {
    if (timer > 25.0){
      player = !player;
      timer = 0.0;
    }
    if (player){
        PImage dot = loadImage("greendot.png");
  dot.resize(20,20);
  image( dot, 1060, 35);

      //change back
      PImage whiteout = loadImage("white.png");
      whiteout.resize(20,20);
      image( whiteout, 1060, 365);
    }else {
        PImage dot = loadImage("greendot.png");
  dot.resize(20,20);

  image( dot, 1060, 365);
      //change back
      PImage whiteout = loadImage("white.png");
      whiteout.resize(20,20);
      image( whiteout, 1060, 35);
    }
  }
