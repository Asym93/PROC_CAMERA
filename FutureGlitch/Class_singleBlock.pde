class singleBlock // 1 singleBlock = multiple singleLines
{
  IntList contrastPoints; //save the x position value of the point that has the user defined contrast
  singleLine singleBreak; 
  ArrayList<singleLine> oneBlock;
  int yPos;
  int blockWidth; 
  int pickStep;  //pickStep defines the distance of two pixels used for calculate contrast
  int hueVal;
  
  singleBlock(int y,int bWidth, int hue)
  {
    pickStep = 5;
    yPos = y; 
    blockWidth = bWidth;
    contrastPoints = new IntList();
    oneBlock = new ArrayList<singleLine>();
    hueVal = hue;
  }
  
    
  void contrastCheck()
  {
    for (int i = 0; i< width; i = i + pickStep)
    {
      color x1 = cam.get(i,yPos);
      int x1Bri = int(brightness(x1));
      color x2 = cam.get(i + pickStep,yPos);
      int x2Bri = int(brightness(x2));
      
      if (abs(x1Bri - x2Bri) > 50) // |brightness_01 - brightness_02| > defined contrast
      {
        contrastPoints.append(i);
      }
      
    }
  }
  
  void buildBlock()
  {
    constructBlock();
    
    for (int i = 1; i < oneBlock.size(); i = i + 1)
    {
      oneBlock.get(oneBlock.size()-i).buildLine();
    }
    
    oneBlock.clear();
  }
  
  void constructBlock()
  {
    contrastCheck();
    
    if (contrastPoints.size() > 0)
    {
      for (int i = 0;  i < contrastPoints.size(); i = i + 1)
      {
        singleBreak = new singleLine(yPos, blockWidth, hueVal, contrastPoints.get(i));
        oneBlock.add(singleBreak);
      }
    
      contrastPoints.clear();
    }
  }
  
  
  
}
