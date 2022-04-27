void pause() {

textAlign(CENTER);
textSize(90);
fill(#767B91);
text("PAUSED?",400,300);

if (pausekey == true) { mode = PAUSE;
} else if (pausekey == false) {
  mode = GAME; 
  
}
}




void pauseClicks() {
  
}
