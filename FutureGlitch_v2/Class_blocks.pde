class blocks
{
  int checkStep;
  int hue,sat,bri;
   
  blocks()
  {
    checkStep = 5;
    //hue = 0;
    sat = 255;
    bri = 255;
    
  }
  
  void borderCheck()
  {
    for(int j = 0; j < height; j = j + checkStep)
    {
      for(int i = 0; i < width; i = i + checkStep)
      {
        color c1 = cam.get(i,j);
        int c1Bri = int(brightness(c1));
        color c2 = cam.get(i + checkStep,j);
        int c2Bri = int(brightness(c2));
        
        if (abs(c1Bri - c2Bri) > 50)
        {
          bri = 255;
          
          for (int t = 0; t < 50; t = t + checkStep)
          {
            //fill(hue,sat,bri);
            //rect(i-t,j,checkStep,checkStep);
            
            stroke(hue,sat,bri);
            strokeWeight(checkStep);
            strokeCap(PROJECT);
            line(i-t,j,i-2*t,j);
            bri = bri - 40;
          }
        }
      }
    }
    
  }
  

}
