//variables here


void comingSoon()
{
  fill(green);
  textAlign(CENTER);
  textSize(40);
  text("Coming Soon!", width/2, height/3);
  text("It's Under Consssssstruction", width/2, (height/2)+50);
  textSize(15);
  text("Get it? Coz it's a snake! :D!", width/2, (height/2)+100);
  textSize(30);
  text("Press M To Return To Menu", width/2, (height/2)+200);
  if (keyPressed && key == 'm')
    {
        screen = 1;
    }
  
}