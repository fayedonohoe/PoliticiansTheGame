class Button
{
  float butX;
  float butY;
  float butSize = 200;
  color colour = color(200);
  String buttonText;
  boolean inside = false;

  Button (float butX, float butY, String buttonText)
  {
    this.butX = butX;
    this.butY = butY;
    this.buttonText = buttonText;
  }

  void render()
  {
    fill(colour);
    rect( butX, butY, butSize, 100);
    fill(0);
    textAlign(LEFT);
    text(buttonText, butX+45, butY+55);
  }

  //check for mouse over specific button
  void checkHover()
  {
    if (mouseX>butX && mouseX<(butX+butSize) && mouseY>butY && mouseY<(butY+100) )
    {
      inside = true;
      colour = color(230);
    } else
    {
      inside = false;
      colour = color(200);
    }
  }
}