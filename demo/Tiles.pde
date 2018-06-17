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
 

}
