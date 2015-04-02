import processing.video.*;

blocks oneBlock;

Capture cam;

void setup() {
  size(1280, 720);
  frameRate(30);
  colorMode(HSB);
  
  oneBlock = new blocks();
  

  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[0]);
    cam.start();     
  }      
}

void draw() {
  
  background(0);
  
  if (cam.available() == true) {
    cam.read();
  }
  
  oneBlock.borderCheck();
  
  statusInfo();
}


void statusInfo()
{
  textSize(15);
  fill(255,255,255);
  text("FrameRate:"+frameRate,10,20);
}

