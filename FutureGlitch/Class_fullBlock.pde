class fullBlock
{
  singleBlock baseBlock;
  ArrayList<singleBlock> allBlocks;
  int blockWidth;
  int hueVal;
  
  fullBlock()
  {
    blockWidth = 5;
    allBlocks = new ArrayList<singleBlock>();
    hueVal = int(random(0,255));
    
    
    for (int i = 0; i < height; i = i + blockWidth) //All blocks that can cover the screen are built here
    {
      baseBlock = new singleBlock(i,blockWidth,hueVal);
      allBlocks.add(baseBlock);
    }
  }
  
  void buildFull()
  {
    
    for (int i = 0; i < allBlocks.size(); i = i + 1)
    {
      allBlocks.get(i).buildBlock();
    }
    
  }
  
}
