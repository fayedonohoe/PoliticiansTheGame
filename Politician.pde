ArrayList<Integer> bodX = new ArrayList<Integer>();
ArrayList<Integer> bodY = new ArrayList<Integer>();

class Politician
{
  
  
  
  void render()
  {
    bodX.add(15);
    bodX.add(15);
    bodX.add(15);
    bodY.add(15);
    bodY.add(14);
    bodY.add(13);
    
    for (int i = 0; i < bodX.size(); i++)
    {
      fill(green);
      rect(bodX.get(i)*sqSize, bodY.get(i)*sqSize, sqSize, sqSize);
    }
  }
  
  void update()
  {
    
  }
  
}