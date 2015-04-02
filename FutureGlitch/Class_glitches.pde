class glitches
{
  int angle = 0;
  int mosaicWidth = 5;
  int mosaicHeight = 5;
  int[] angleList = new int[720];
  
  glitches()
  {
    for (int i =0; i < 720/mosaicWidth; i = i + 1)
    {
      angleList[i] = i * int(random(0,10));
    }
  }
  
  
  void baseGlitch()
  {
    for(int j = 0; j < height/mosaicHeight; j = j + 1)
    {
      for (int i = 0; i < width; i = i + mosaicWidth)
      {
     
        color a = cam.get(i,j*mosaicHeight);
      
        colorChange(a);
        noStroke();
        rect(i,j*mosaicHeight,mosaicWidth,mosaicHeight); //+sin(radians(angleList[j]))*10
        
      }
    }
  
    for (int i =0; i < 720/mosaicHeight; i = i + 1)
    {
      angleList[i] = angleList[i] + int(random(10,50));
    }
    
  }
  

  
  void colorChange(color a)
  {
    float hueVal = hue(a);
    float satVal = saturation(a);
    float briVal = brightness(a);
    
    float hueOut = 150;
    float satOut = 0;
    float briOut = briVal;
    
    briOut = int(map(briVal,0,255,0,15)) * 17;
    
    /*
    if (briVal > 80)
    {
      satOut = 150;
    }else
    {
      satOut = 255;  
    }
    */
    
    fill(hueOut,satOut,briOut);
  }
  
  
}
