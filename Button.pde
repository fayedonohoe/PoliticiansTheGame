class Button
{
  float butX;
  float butY;
  float butSize = 200;
  color colour = color(200);
  String buttonText;
  
   Button (float butX, float butY,  String buttonText)
   {
     this.butX = butX;
     this.butY = butY;
     this.buttonText = buttonText;
   }
  
  
  
  
/*  
   void render()
  {
      fill(colour);
      rect( butX, butY, butSize, 100);
  } 
  */
}