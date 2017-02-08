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
  
  void render(color col)
  {
    fill(col);
    rect(goX*sqSize, goY*sqSize, sqSize, sqSize);  
  }
  
}