multiLine multi;

ArrayList<multiLine> nMulti;

boolean refresh = false;

void setup()
{
  size(1280,720);
  colorMode(HSB);
  
  nMulti = new ArrayList<multiLine>();
}

void draw()
{
  background(0);
  
  if(refresh == true)
  {
    for (int i = 0; i < nMulti.size(); i = i + 1)
    {
      nMulti.get(i).buildBlock();
    }
  }
   
}

void keyPressed()
{
  if (key == ' ')
  {
    nMulti.clear();
    
    for (int i = 0 ; i < 5; i = i + 1)
    {
      multi = new multiLine();
      nMulti.add(multi);
    }
    
    refresh = true;
  }
}
