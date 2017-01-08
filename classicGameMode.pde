//variables here

class classicGameMode extends GameMode
{
  //fill(120,230,80);
  //text("Coming Soon!", width/3, height/2);
  
  //call all other functions from here
  //while (screen == 21) 

  classicGameMode()
  {
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
  
}
  