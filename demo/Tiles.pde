class Tiles {

  int xCor;
  int yCor;
  PImage img1 = loadImage("./Tiles/blank.jpg");
  
 //constructor 
 Tiles() {
    img1.resize(50, 50);
 }
 
 Tiles(int x, int y) {
    xCor = x;
    yCor = y;
    img1.resize(50, 50);
    // rotate(PI/random(1, 5));
 }
  
  //make tiles appear
  void appearBlank() {
    image(img1, xCor, yCor);      
 }
 
 
 /*randomizes value for tiles
 void tileValue(){
   for (int i=0; i < 26; i++) {
    types[i] = new Tiles();
    types[1].img1 =  loadImage("./Tiles/A.png");
    types[2].img1 =  loadImage("./Tiles/B.png");
    types[3].img1 =  loadImage("./Tiles/C.png");
    types[4].img1 =  loadImage("./Tiles/D.png");
    types[5].img1 =  loadImage("./Tiles/E.png");
    types[6].img1 =  loadImage("./Tiles/F.png");
    types[7].img1 =  loadImage("./Tiles/G.png");
    types[8].img1 =  loadImage("./Tiles/H.png");
    types[9].img1 =  loadImage("./Tiles/I.png");
    types[10].img1 =  loadImage("./Tiles/J.png");
    types[11].img1 =  loadImage("./Tiles/K.png");
    types[12].img1 =  loadImage("./Tiles/L.png");
    types[13].img1 =  loadImage("./Tiles/M.png");
    types[14].img1 =  loadImage("./Tiles/N.png");
    types[15].img1 =  loadImage("./Tiles/O.png");
    types[16].img1 =  loadImage("./Tiles/P.png");
    types[17].img1 =  loadImage("./Tiles/Q.png");
    types[18].img1 =  loadImage("./Tiles/R.png");
    types[19].img1 =  loadImage("./Tiles/S.png");
    types[20].img1 =  loadImage("./Tiles/T.png");
    types[21].img1 =  loadImage("./Tiles/U.png");
    types[22].img1 =  loadImage("./Tiles/V.png");
    types[23].img1 =  loadImage("./Tiles/W.png");
    types[24].img1 =  loadImage("./Tiles/X.png");
    types[25].img1 =  loadImage("./Tiles/Y.png");
    types[26].img1 =  loadImage("./Tiles/Z.png");
    
   }
 }
 */
}
