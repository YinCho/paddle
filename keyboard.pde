void keyPressed() {
  if (key == 'w' || key == 'w') wkey = true;
  if (key == 's' || key == 'S') skey = true;
  if (keyCode == UP) upkey = true;
  if ( keyCode == DOWN) downkey = true;
 
}


void keyReleased() {
  if (key == 'w' || key == 'w') wkey = false;
  if (key == 's' || key == 'S') skey = false;
  if (keyCode == UP) upkey = false;
  if ( keyCode == DOWN) downkey = false;
  if (key == ' ') pausekey = !pausekey;
  
}
