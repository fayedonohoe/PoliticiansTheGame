int gridW = (width-125);
int gridH = (height-125);

class GameMode
{
  //int lev; //1-easy, 2-medium, 3-hard
  int foodCount = 0;
  
    
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
      if ( bodX.get(0) > (width-125)) //|| bodX.get(0) < 0 || bodY.get(0) >= gridH || bodY.get(0) < 0)
       {
         text("PLEASE WORK", 50, 50);
         level = 0;
       }
       
     if (level == 0)
     {
       background(0);
       fill(green);
       text("You Lost The Election!", width/3, height/2);
     }
     
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
    text("Score: /n %d", score, 200, 600);
  }
  
   
}
  