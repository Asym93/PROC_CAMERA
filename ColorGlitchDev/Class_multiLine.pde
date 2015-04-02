class multiLine
{
  
  singleLine single;
  ArrayList<singleLine> multi;
  int lineWidth;
  int setHue;
  
  multiLine()
  {
    multi = new ArrayList<singleLine>();
    setHue = int(random(0,255));
    
    
    lineWidth = 4; //set the stroke here
    
    for (int i = 0; i < height; i = i + lineWidth)
    {
      single = new singleLine(i,lineWidth,setHue);
      multi.add(single);
    }
  }
  
  void buildBlock()
  {
    for (int i = 0; i < multi.size();i = i + 1)
    {
      multi.get(i).buildLine();
    }
  }
}
    
    
