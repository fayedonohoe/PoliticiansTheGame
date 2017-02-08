class GameObject
{
  int goX = (int)random(0, width-150);
  int goY = (int)random(0, height-150);
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
  
  void render(color col)
  {
    fill(col);
    rect(goX, goY, sqSize, sqSize); 
  }
  
}