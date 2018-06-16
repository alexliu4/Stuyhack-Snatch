class Tiles{
  
  PImage img = loadImage("./Tiles/B.png");
  int xCor;
  int yCor;
  
  Tiles(){
    xCor = 100;
    yCor = 100;
    img.resize(50,50);
    translate(width/2-img.width/2, height/2-img.height/2);
    rotate(PI/random(1, 5));
    
  }
  void appear(){
    image(img, xCor, yCor);
  }



}
