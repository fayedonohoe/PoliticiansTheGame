class GameMode
{
  int gm; //game mode 
  
  GameMode(int gm)
  {
    this.gm = gm;
  }
  
  void render()
  {
    drawGrid();
    
  }
  
}

void drawGrid()
{
  fill(255);
    for (int i=0; i<height; i++)
    {
      line(0, i*sqSize, width, i*sqSize); 
    }
    for (int i=0; i<width; i++)
    {
      line(i*sqSize, 0, i*sqSize, height);
    }
}