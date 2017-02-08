int gridW = (width-125);
int gridH = (height-125);

class GameMode
{
  //int lev; //1-easy, 2-medium, 3-hard
     
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
      player.checkDead();
      
      player.update();        
      //player.wrap();
    }
  }
      
  void drawGrid()
  {
    background(75);
    fill(0);
    rect(0,0, width-125, height-125);
    stroke(75);
    for (int i=0; i<height-125; i++)
    {
      line(0, i*sqSize, width-125, i*sqSize); 
    }
    for (int i=0; i<width-125; i++)
    {
      line(i*sqSize, 0, i*sqSize, height-125);
    }
    
    fill(green);
    text("Score:", 50, height-75);
    text( score, 95, height-40 );
    
  }
  
   
}
  