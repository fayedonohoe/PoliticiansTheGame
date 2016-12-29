/*
  ------------------------
  Politicians - The Game!
  ------------------------
  
 The popular game snake but with a few twists and turns (literally).
 
 Date: 26-12-16
 Author: Faye Donohoe
  
   Ideas:
   [ ]  Main Menu
        []  About the Game
        []  Play
        []  High Scores?
        
   [ ]  Classic Game Mode
         -arraylists?
         -traditional grid - loops
         -start values - length of snake / colour / speed
         -score counter - top corner?
         -apples? - coloured square
         -die when collide with sides of screen / self / obstacles?-not in classic... 
   
   [ ]  Surprise Game Mode
         -same as classic
         -surprise every 5 apples
   
   [ ]  Freestyle Game Mode
         -no grid
         -pvector movement, not just 90 de gree turns
         -no edge screen obstacle - wrap around screen?
         
   [ ]  Multiplayer?
        
   [ ]  END Screen
         -Show Score
         -Play Again
         -Main Screen
*/
//-------------------------------------------------------------------------------

int screen = 1; // set screen to main menu
PFont font;

void setup()
{
  size (700, 700);
  font = loadFont("Monospaced.bold-48.vlw");
  
  playButton = new Button(); //initialising
}

  Button playButton; //declaring
  
  
void draw()
{
  background(0);
  textFont(font, 40);
  fill(255);
  
  //Main Menu
  if (screen == 1)
  {
    textAlign(CENTER);
    fill(120,230,80);
    textFont(font, 60);
    text("*** Politicians ***", 350, 150);
    textFont(font, 30);
    text("The Game!", 350, 200);
    
    playButton.render();
    
    
  }
  
}