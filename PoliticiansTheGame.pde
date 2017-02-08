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
int gameOver = 0;
color green = color(120,230,80);
int score = 0;

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
  
  int lev;
  game = new GameMode();
  
  player = new Politician();
  
  //set up the start of the snake
  bodX.add(10);
  bodX.add(10);
  bodX.add(10);
  bodY.add(10);
  bodY.add(9);
  bodY.add(8);
 
  coin = new Food();
  apple = new Food();
}

  //declaring
  Button playButton; 
  Button aboutButton;
  Button scoreButton;
  
  Button classicPlayButton;
  Button freePlayButton;
  Button surprisePlayButton;
  
  GameMode game;
  
  Politician player;
  
  Food coin;
  Food apple;
  
  
void draw()
{
  background(0);
  textFont(font, 40);
  fill(255);
     
  switch(screen) 
  {
    case 1:
    //Main Menu
      textAlign(CENTER);
      fill(green);
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
      break;
      
    ///}
  //================================================= Play Options and Game Modes ==================================================  
    //Play Option Screen
      case 2:
      textAlign(CENTER);
      fill(green);
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
       break; //End play options / screen 2
    

     case 21:
      game.play(1);
      break;
    
      case 22:
      game.play(2);
      break;
    
      case 23:
      game.play(3);
      break;
 
    }// end switch
    
  }//end draw