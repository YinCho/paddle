void intro() {
  background(0);
  textSize(90);
  fill(200);
  text("BIG PONG GAME",100,200);
  textSize(60);
  fill(200);
  rect(150,400,200,100);
  rect(450,400,200,100);
  fill(0);
  text("ALONE",165,475);
  text("FRIEND",460,475);
  fill(200);

  
}


void introClicks() {
  if (mouseX > 150 && mouseX < 350 && mouseY > 400 && mouseY < 500) {
    mode = GAME;
    player = player1;
    lefty = 300;
    righty = 300;
    bally = 300;
  }
  if ( mouseX > 450 && mouseX < 650 && mouseY > 400 && mouseY < 500) {
    mode = GAME;
    player = player2;
  }
  if (mouseX>300 && mouseX < 500 && mouseY > 250 && mouseY < 350) {
    player = bored;
    mode = GAME;
  }
}
