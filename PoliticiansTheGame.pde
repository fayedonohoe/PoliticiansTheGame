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
  
  //initialising buttons
  playButton = new Button(100, 300, "Play"); 
  aboutButton = new Button(400, 300, "About");
  scoreButton = new Button (250, 450, "Scores");
  
  classicPlayButton = new Button (250, 150, "Classic");
  freePlayButton = new Button ( 250, 300, "Freestyle");
  surprisePlayButton = new Button (250, 450, "Surprise");
  
  
}

  //declaring
  Button playButton; 
  Button aboutButton;
  Button scoreButton;
  
  Button classicPlayButton;
  Button freePlayButton;
  Button surprisePlayButton;
  
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
    aboutButton.render();
    scoreButton.render();
    
    playButton.checkHover();
    if (playButton.inside && mousePressed)
    {
      screen = 2; //change to play screen
    }
    
    aboutButton.checkHover();
    if (aboutButton.inside && mousePressed)
    {
      screen = 3; //change to about screen
    }
    
    scoreButton.checkHover();
    if (scoreButton.inside && mousePressed)
    {
      screen = 4; //change to score screen
    }
    
  }
  
  
  //Play Option Screen
  if (screen == 2)
  {
    textAlign(CENTER);
    fill(120,230,80);
    textFont(font, 40);
    text("*** Choose A Game Mode ***", 350, 88);
    
    textFont(font, 25);
    classicPlayButton.render();
    freePlayButton.render();
    surprisePlayButton.render();
      
  }
  
}