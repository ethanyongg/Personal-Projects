int x = 1200;
int timer = 60;
int startTime;
int currentTime;
int period = 1000;

void countdown(){
  if (x > 0){
    fill(255, 0, 0);
    rect(155,0,x,30);
    fill(255);
    textSize(20);
    text(timer, 700, 25);
    }
  if (timer <= 0){
    fill(0);
    rect(155,0,1200,30);
    fill(255);
    textSize(25);
    start = false;
    for (int a = 0; a < 10; a++)
    {
      Pressed [a] = false; // refreshes all the visual ingredients on the pizza, resetting the player's input for restarting
    }
  }
}

void timing(){
  currentTime = millis();
  if (currentTime - startTime >= period){
    x -= 20;
    timer -= 1;
    startTime = currentTime;
  }
}
