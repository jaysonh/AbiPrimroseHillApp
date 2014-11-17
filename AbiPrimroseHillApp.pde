PImage bgImg;
PImage topLayerImg;
PImage secondLayerImg;
PImage thirdLayerImg;
color tintCol;
void setup()
{
  size(1400,700);

   tintCol = (int)random(0,100); 
  bgImg = loadImage("data/prinrose-bottomlayer.png");
  topLayerImg = loadImage("data/prinrose-toplayer.png");
  secondLayerImg = loadImage("data/prinrose-secondlayer.png");
  thirdLayerImg = loadImage("data/prinrose-thirdlayer.png");
}

void draw()
{
  background(0);
  println(map(mouseX,0,width,0,100));
  
  colorMode(HSB,100);
  tint(color(map(mouseX,0,width,60,90),30,60));
  image(bgImg,0,0,width,height);
  
  colorMode(RGB,255);
  float a = map(mouseY, 0,height,0,255);
  println("a: " + a);
  noTint();
    fill(35,35,35,a);
  rect(0,0,width,height);
  //image(thirdLayerImg,0,0,width,height);
  //image(secondLayerImg,0,0,width,height);
  image(topLayerImg,0,0,width,height);

}

void mousePressed()
{
   tintCol = (int)random(0,100); 
}
