//modes
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld;
float vx, vy;
float d, leftr, ballR, rightr;
int leftscore, rightscore, timer;

boolean wkey, skey, upkey, downkey;

void setup() {
  size(800, 600);
  mode = GAME;
  
   //intitalize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  vx = 5;
  vy = 5;
  //initalize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  rightx = width;
  righty = height/2;
  rightd = 200;
  leftr = leftd/2;
  ballR = balld/2;
  rightr = rightd/2;
  
  rightscore = leftscore = 0;
  timer = 100;
 

  //initallize keyboard variables
  wkey = skey = upkey = downkey = false;
}



void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
