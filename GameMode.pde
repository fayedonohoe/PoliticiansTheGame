class GameMode
{
  int gm; //game mode 
  
   GameMode()
  {
    
  }
  
  
  GameMode(int gm)
  {
    this.gm = gm;
  }
  
  void render()
  {
    drawGrid();
    //text("please work", width/3, height/2);
  }
  
///}

void drawGrid()
{
  ///do
  ///{
    fill(255);
    for (int i=0; i<height; i++)
    {
      line(0, i*sqSize, width, i*sqSize); 
    }
    for (int i=0; i<width; i++)
    {
      line(i*sqSize, 0, i*sqSize, height);
    }
    text("please work", width/3, height/2);
  ///}
  //while( gameOver != 0);
    //text("please work", width/3, height/2);
}

}