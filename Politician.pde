ArrayList<Integer> bodX = new ArrayList<Integer>();
ArrayList<Integer> bodY = new ArrayList<Integer>();

class Politician
{
  int dir;
  int[] x = {0, 0, 1, -1};
  int[] y = {-1, 1, 0, 0};
  
  
  void render()
  {
    bodX.add(10);
    bodX.add(10);
    bodX.add(10);
    bodY.add(10);
    bodY.add(9);
    bodY.add(8);
    
    for (int i = 0; i < bodX.size(); i++)
    {
      fill(green);
      rect(bodX.get(i)*sqSize, bodY.get(i)*sqSize, sqSize, sqSize);
    }
    
    if( frameCount % 6 == 0)
    {
      bodX.add(0, bodX.get(0) + x[dir] );
      bodY.add(0, bodY.get(0) + y[dir] );
      bodX.remove( bodX.size() -1 );
      bodY.remove( bodY.size() -1 );
  }
/* 
  void update()
  {
    
    for (int i = 0; i < bodX.size(); i++)
    {
      fill(green);
      rect(bodX.get(i)*sqSize, bodY.get(i)*sqSize, sqSize, sqSize);
    } 
    
    if( frameCount % 6 == 0)
    {
      bodX.add(0, bodX.get(0) + x[dir] );
      bodY.add(0, bodY.get(0) + y[dir] );
      bodX.remove( bodX.size() -1 );
      bodY.remove( bodY.size() -1 );
      
      
      
    } */
    
  } 
  
}