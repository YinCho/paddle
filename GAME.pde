void game() {


  background(0);
  //paddles
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);

  //move paddles

  if (wkey==true) lefty = lefty-5;
  if (skey==true) lefty=lefty+5;
  if (upkey == true) righty = righty -5;
  if (downkey == true) righty = righty +5;

  lefty = max(lefty,50);
  lefty = min(lefty, 550);
  righty = max (righty, 50);
  righty = min(righty, 550);
  bally = max(bally, balld/2);
  bally = min(bally, height - balld/2);

  if (dist(leftx, lefty, ballx, bally) < leftr + ballR) {
    vx = (ballx - leftx)/12;
    vy = (bally - lefty)/12;
  } else if (dist(rightx, righty, ballx, bally) < rightr + ballR) {
    vx = (ballx - rightx)/12;
    vy = (bally - righty)/12;
  }

  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);

  textSize(50);
  fill(255);
  text(leftscore, width/4, 100);
  fill(225);
  text(rightscore, 3*width/4, 100);
  //text(timer, 3*width/4, 500);
  timer = timer -1;


  //ball
  circle(ballx, bally, balld);
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }
  //if (ballx < balld/2 || ballx > width-balld/2) {
  //vx = vx * -1;
  //}
  if (bally< balld/2 || bally > height-balld/2) {
    vy = vy * -1;
  }

  if (ballx<-100) {
    rightscore++;
    ballx = 400;
    bally = height/2;
    timer = 100;
  } else if (ballx > 900) {

    leftscore++;
    ballx = 400;
    bally = 300;
    timer = 100;
 
  }
  if (leftscore == 1) mode = GAMEOVER; else 
  if (rightscore == 1) mode = GAMEOVER; 
} 
  





void gameClicks() {
}
