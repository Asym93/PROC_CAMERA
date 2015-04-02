class flashes
{
  singleFlash singleLine;
  ArrayList<singleFlash> lines;
  int lineWidth;
  int lineAmount;
  
  flashes()
  {
    
    lineWidth = 5;
    lineAmount = width/lineWidth;
    
    lines = new ArrayList<singleFlash>();
    
    for (int i = 0; i < lineAmount; i = i + 1)
    {
      singleLine = new singleFlash(i*lineWidth,lineWidth); //setting each line's position
      lines.add(singleLine);
    }
    
  }


  void allGrow()
  {
    for (int i = 0; i < lineAmount; i = i + 1)
    {
      lines.get(i).grow();
    }
  }
}
