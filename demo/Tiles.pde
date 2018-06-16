class Tiles{
  
  PImage img = loadImage("");
  int xCor;
  int yCor;
  
  Tiles(){
    xCor = 10;
    yCor = 10;
    
  }
  void appear(){
    image(img, xCor, yCor);
  }



}
