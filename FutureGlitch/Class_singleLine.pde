class singleLine
{
  FloatList lineSegs;
  int yPos;
  int lineWidth;
  int sat;
  int hue;
  int lineEnd;
  
  singleLine(int y, int lWidth, int hueVal, int ending)
  {
    yPos = y;
    lineWidth = lWidth;
    sat = 255;//int(random(150,255));
    hue = hueVal;
    
    lineSegs = new FloatList();
    lineEnd = ending;
  
  
    for (int i = 0; i < lineEnd ; i = i + 5)
    {
      lineSegs.append(i);
    }  
  }
  
  void buildLine()
  {
    
    int bri = 255;
    
    /*
    stroke(hue,sat,bri);
    strokeWeight(lineWidth);
    strokeCap(SQUARE);
    line(0,yPos,lineEnd,yPos);
    */
    
    
    for (int i = 1; i < lineSegs.size(); i = i + 1)
    {
      
      stroke(hue,sat,bri);
      strokeWeight(lineWidth);
      strokeCap(PROJECT);
      
      line(lineSegs.get(lineSegs.size() - i),yPos,lineSegs.get(lineSegs.size() - i - 1),yPos);
      //sat = sat - 1;
      
      
      bri = bri - 10;
         
    }
   
  }
  
}
