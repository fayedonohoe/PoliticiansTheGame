class GameMode
{
  int level; //1-easy, 2-medium, 3-hard
  
  GameMode()
  {
    
  }
  
  void play(int level) //add level id here
  {
    //text("PLEASE WORK", 50, 50);
    if (level == 1)
    {
      drawGrid();
      player.render();
      player.update();
      player.wrap();
    }
  }
    
  
  void drawGrid()
  {
    stroke(75);
    for (int i=0; i<height; i++)
    {
      line(0, i*sqSize, width, i*sqSize); 
    }
    for (int i=0; i<width; i++)
    {
      line(i*sqSize, 0, i*sqSize, height);
    }
  }
 
}
  