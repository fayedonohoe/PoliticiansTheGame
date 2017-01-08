/*
  ------------------------
  Politicians - The Game!
  ------------------------
  
 The popular game "Snake" but with a few twists and turns (literally).
 
 Date: 26-12-16
 Author: Faye Donohoe
  
   Ideas:
   [ ]  Main Menu
         - "starfield" of apples?
         - snake going around in background?
        []  About the Game
        []  Play
             - hover over = gamemode descriptions?
        []  High Scores?
        
   [ ]  Classic Game Mode
         -arraylists?
         -traditional grid - loops
         -start values - length of snake / colour / speed
         -score counter - top corner?
         -apples/ oranges/ lemons/ limes/ blueberries? - coloured square
         -die when collide with sides of screen / self / obstacles?-not in classic... 
   
   [ ]  Surprise Game Mode
         -same as classic
         -surprise every 5 apples
   
   [ ]  Freestyle Game Mode
         -no grid
         -pvector movement, not just 90 de gree turns
         -no edge screen obstacle - wrap around screen?
         
   [ ]  Pause Screen
         
   [ ]  Multiplayer?
        
   [ ]  END Screen
         -Show Score
         -Play Again
         -Main Screen
*/
//-------------------------------------------------------------------------------

int screen = 1; // set screen to main menu
PFont font;
int sqSize = 25; //declare a size for each square on grid/snake/fruit

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
  
  classicGameMode = new classicGameMode;
  
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
  
  int gm =0;
  
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
    aboutButton.checkHover();
    scoreButton.checkHover();
    
    
    
    //Make Selection
    if (playButton.inside && mousePressed)
    {
      screen = 2; //change to play screen
    }
    else if (aboutButton.inside && mousePressed)
    {
      screen = 3; //change to about screen
    }
    
    else if (scoreButton.inside && mousePressed)
    {
      screen = 4; //change to score screen
    }
    
  }
  
//================================================= Play Options and Game Modes ==================================================  
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
    
    classicPlayButton.checkHover();
    freePlayButton.checkHover();
    surprisePlayButton.checkHover();
    
    if (classicPlayButton.inside && mousePressed)
    {
      screen = 21; // OR call classicGameMode()
    }
    else if (freePlayButton.inside && mousePressed)
    {
      screen = 22; // OR call freeGameMode()
    }
    else if (surprisePlayButton.inside && mousePressed)
    {
      screen = 23; // OR call surpriseGameMode()
    }      
  }//End play options / screen 2
  
  if (screen == 21)
  {
    gm = 1;
    classicGameMode();
    //drawGrid();
  }
  if (screen == 22)
  {
    gm = 2;
    freeGameMode();
  }
  if (screen == 23)
  {
    gm = 3;
    surpriseGameMode();
  }
  
}// End draw()