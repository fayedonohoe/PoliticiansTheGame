ArrayList<Integer> bodX = new ArrayList<Integer>();
ArrayList<Integer> bodY = new ArrayList<Integer>();

class Politician extends GameObject
{
  int dir = 1;
  int changeDir ;
  
  // UP DOWN RIGHT LEFT
  int[] x = {0, 0, 1, -1};
  int[] y = {-1, 1, 0, 0};
  
  
  void render()
  {
    /* Moved to setup
    bodX.add(10);
    bodX.add(10);
    bodX.add(10);
    bodY.add(10);
    bodY.add(9);
    bodY.add(8);*/
    
    for (int i = 0; i < bodX.size(); i++)
    {
      fill(green);
      rect(bodX.get(i)*sqSize, bodY.get(i)*sqSize, sqSize, sqSize);
    }
    
    if( frameCount % 6 == 0)
    {
      //constrain(bodX.get(0), 0, width-125);
      //constrain(bodY.get(0), 0, height-125);
      bodX.add(0, bodX.get(0) + x[dir] );
      bodY.add(0, bodY.get(0) + y[dir] );
      bodX.remove( bodX.size() -1 );
      bodY.remove( bodY.size() -1 );
    }  
  }//end render() 
  
   
  void update()
  {  
     if (keyPressed)
     {         
         if ( keyCode == UP )
         {
           changeDir = 0;
         }
         else if ( keyCode == DOWN )
         {
           changeDir = 1;
         }
         else if ( keyCode == RIGHT )
         {
           changeDir = 2;
         }
         else if ( keyCode == LEFT )
         {
           changeDir = 3;
         }
         
         if ( changeDir != -1 )
         {
           dir = changeDir;
         }
       }//end key pressed if
       
       
       
    }//end update()
    
   /* void gameOver()
  {
    background(0);
    fill(green);
    text("You Lost The Election!", width/3, height/2);
  }
  */  
      
}// end class politician
    
    
    
///////////////////////////////////////////////////////    
  /* CODE TO WRAP AROUND SCREEN - 
     Runs but doesnt work as should
  
  void wrap()
  {
    
     if (bodX.get(0) > width)
     {
       bodX.add(0, 0);
       
       for (int i = 1; i < bodX.size(); i++)
       {
         bodX.add( i, (bodX.get(i-1)) );
       }
 
     if (bodX.get(0) < width)
     {
       bodX.add(0, width);
       
       for (int i = 1; i < bodX.size(); i++)
       {
         bodX.add( i, (bodX.get(i-1)) );
       }
     }
    }   
  }//end wrap()
 */

    
     
  