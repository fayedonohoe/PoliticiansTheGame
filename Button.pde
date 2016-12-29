class Button
{
  float butX;
  float butY;
  float butSize = 200;
  color colour = color(200);
  String buttonText;
  
  
   void render()
  {
      fill(colour);
      rect( butX, butY, butSize, 100);
  } 
}