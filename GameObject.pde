int foodCount = 0;
  
class GameObject
{
  int goX = (int)random(0, 22); //22 blocks
  int goY = (int)random(0, 22);
  color col;

  
  GameObject()
  {
  }
  
  
  GameObject(color col)
  {
    //this.goX = goX;
    //this.goY = goY;
    this.col = col;
  }
  
  void relocate()
  {
    goX = (int)random(0, 22);
    goY = (int)random(0, 22);
  }
  
  void render(color col)
  {
    fill(col);
    rect(goX*sqSize, goY*sqSize, sqSize, sqSize);  
  }
  
  int eat()
  {
    if (bodX.get(0) == goX && bodY.get(0) == goY)
    {
      //relocate food
      relocate();
      return(1);    
    }
    else
    {
      return(0);
    }
  }
  
  
  
}