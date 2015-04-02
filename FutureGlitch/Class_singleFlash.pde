class singleFlash
{
  float startX;
  float startY;
  float randomY;
  int lineWidth;
  float speed;
  int satuation;
  float lineLen;
  int segaments;
  IntList brightRandom;
  
  singleFlash(int x, int lWidth)
  {
    startX = x;
    startY = 0;
    randomY = random(0,200);
    
    lineWidth = lWidth;
    
    speed = int(random(5,15))*lineWidth;
    satuation = int(random(100,255));
    segaments = int(random(20,60));
    
    brightRandom = new IntList();
    
    for (int i = 0; i < segaments; i = i + 1)
    {
      int brightVal = int(random(0,255));
      brightRandom.append(brightVal);
    }
  }
  
  void grow()
  {
    noStroke();
    
    for (int i = 0; i < segaments; i = i + 1)
    {
      //fill(255,0,brightRandom.get(i));
      color x = get(int(startX),int(startY-i*lineWidth));
      fill(x);
      rect(startX,startY - i*lineWidth - randomY,lineWidth,lineWidth);
    }
    
    startY = startY + speed;
    
    
    if (startY - segaments * lineWidth - randomY > height)
    {
      startY = 0;
    }
    
    
  }
  
}

