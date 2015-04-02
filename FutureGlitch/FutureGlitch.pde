//Glitch is ART.
import processing.video.*;
Capture cam;

glitches glitchOne;
flashes flashing;
fullBlock blocks;

void setup()
{
  size(1280,720);

  frameRate(24);
  colorMode(HSB);
  

  glitchOne = new glitches();
  flashing = new flashes(); 
  blocks = new fullBlock();
  
  String[] cameras = Capture.list();
  
  if (cameras.length == 0) 
  {
    println("There are no cameras available for capture.");
    exit();
  } else 
  {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) 
    {
      println(cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[0]);
    cam.start();     
  }      
  
  
}

void draw()
{
  background(0);
  
  
  if (cam.available() == true) 
  {
    cam.read();
  }
  
    
  //image(camBuffer, 0, 0);
  
  //glitchOne.baseGlitch();
  
  blocks.buildFull();
  
  
  //flashing.allGrow();
  //grid();
  //gridCut();
  
  statusInfo();
}

void statusInfo()
{
  textSize(15);
  fill(255,255,255);
  text("FrameRate:"+frameRate,10,20);
}



void grid()
{
  
  pushMatrix();
  //translate(20,20);
  for (int i = 0; i < width; i = i + 40)
  {
    for (int j = 0; j < height; j = j + 40)
    {
      noStroke();
      fill(255,0,255);
      ellipse(i,j,2,2);
    }
  }
  popMatrix();
  
}

void gridCut()
{
  for (int i = 0; i < height; i = i + 10)
  {
    
    float x = random(0,width);
    float y = i;
    
    color n = get(int(x),int(y));
    fill(n);
    rect(x,y,50,10);
    
  }
}

