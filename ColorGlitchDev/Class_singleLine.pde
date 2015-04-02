class singleLine
{
  FloatList lineSegs;
  int segAmount;
  int yPos;
  int lineWidth;
  int sat;
  int hue;
  
  singleLine(int y, int lWidth, int hueVal)
  {
    yPos = y;
    lineWidth = lWidth;
    sat = int(random(0,255));
    hue = hueVal;
    
    lineSegs = new FloatList();
    segAmount = int(random(0,width));
  
  
    for (int i = 0; i < segAmount; i = i + 1)
    {
      lineSegs.append(i);
    }  
  }
  
  void buildLine()
  {
    
    int bri = 255;
    
    for (int i = 1; i < segAmount; i = i + 1)
    {
      
      stroke(hue,sat,bri);
      strokeWeight(lineWidth);
      strokeCap(SQUARE);
      
      line(lineSegs.get(segAmount - i),yPos,lineSegs.get(segAmount - i - 1),yPos);
      //sat = sat - 1;
      
      if (i > segAmount/2)
      {
        bri = bri - 1;
      }
    }
  }
  
  
}
