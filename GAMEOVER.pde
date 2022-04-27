void gameover() {
  textAlign(CORNER);
  background(0);
  if (leftscore == 3) {
    text("WINNER: PLAYER 1!", 200, 300);
  } else if (rightscore == 3) {
    text("WINNER: PLAYER 2!", 200, 300);
  }
}




void gameoverClicks() {
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 800) {
    mode = INTRO;
    leftscore = 0;
    rightscore = 0;
  }
}
