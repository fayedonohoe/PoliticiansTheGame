class GameMode
{
  int level; //1-easy, 2-medium, 3-hard
  int gridW = width - 125;
  int gridH = height - 125;
  
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
      //player.wrap();
    }
  }
    
  
  void drawGrid()
  {
    background(75);
    fill(0);
    rect(0,0, gridW, gridH);
    stroke(75);
    for (int i=0; i<gridH; i++)
    {
      line(0, i*sqSize, gridW, i*sqSize); 
    }
    for (int i=0; i<gridW; i++)
    {
      line(i*sqSize, 0, i*sqSize, gridH);
    }
  }
 
}
  