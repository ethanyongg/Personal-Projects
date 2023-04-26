boolean start = false; // In keyReleased (): starts the game
boolean intro = true;
boolean end = false;
boolean Sticker = false;

void setup ()
{
 size (1400,1000);   
 arrayImagesList (); // all the image uploads are placed in a separate tab
 background(255);
 smooth();
 startTime = millis();
}

void draw ()
{
  image(img, 0 ,0 ,1400, 900);
  if (Sticker == true) // if you reach a certain score, you receive a sticker as a reward
  {
    image(sticker, 1200 ,800 , 75, 50);
  }
  
  //Code related to score
  String price = ""; // places the negative in the right place in the score below the order list
  if (score < 0)
  {
    price = price + "-";
  }
  else
  {
    price = "";
  }
  
  //Timer
  if (start == true)
    {
    fill(0);
    rect(155,0,1200,30);
    countdown ();
    timing();
    visualPaper ();
    instructionBoolean ();
    displayingredients();
    textSize (35);
    text("Money Earned: " + price + "$" + abs(score)/10 + "0", 550, 100);
    textSize(35);
    fill(255);
    text("Press ENTER to serve pizza", 950, 700);
    }
  
  //Score when the game ends
  else if (start == false) 
  {
    strokeWeight(5);
    stroke(179,217,255);
    fill(153,255,204);
    rect(1050, 50, 345, 460);
    textSize (35);
    text("Money Earned: " + price + "$" + abs(score)/10 + "0", 550, 100);
    displayingredients();
    endText(); 
  }
  
  //Intro at the beginning
  if (intro == true)
  {
  background(0);
  image(paperintro, 450,50, 500, 700);
  textSize(35);
  fill(225);
  text("Press ENTER to start game", 480, 800);
  }
 
}


void keyReleased ()
{
  if ((key == ENTER)&&(start == true)) //used primarily in the midst of the game
   {
     confirmButton ();
     ingredientsRandomiser ();
     paperRandomiser ();
   } 
  else if ((key == ENTER)&&(intro == true)) //to begin the game
   {
     confirmButton ();
     ingredientsRandomiser ();
     paperRandomiser ();
     start = true;
     intro = false;
   }
   else if ((key == ENTER)&&(start == false)) //restarts the game (there's a few bugs in here when the timer starts and restarts at 60
   {
     confirmButton ();
     ingredientsRandomiser ();
     paperRandomiser ();
     start = true;
     timer = 60; // these below reset the timer
     score = score + 4;
     x = 1200;
     period = 1000;
   }
   if (start == true) // to prevent the players from activating the ingredients before the game starts.
   {
    if ((key == '0')&&(Pressed [0] == false)) { //the second condition allows the false switch to turn true
    Pressed [0] = true;
    }
    else if ((key=='0')&&(Pressed [0] == true)) { //the second condition allows the true switch to turn false
    Pressed [0] = false;
    }
    if ((key == '1')&&(Pressed [1] == false)) {
    Pressed [1] = true;
    }
    else if ((key=='1')&&(Pressed [1]== true)) {
    Pressed [1] = false;
    }
      if ((key == '2')&&(Pressed [2] == false)) {
    Pressed [2] = true;
    }
    else if ((key=='2')&&(Pressed [2] == true)) {
    Pressed [2] = false;
    }
      if ((key == '3')&&(Pressed [3] == false)) {
    Pressed [3] = true;
    }
    else if ((key=='3')&&(Pressed [3] == true)) {
    Pressed [3] = false;
    }
      if ((key == '4')&&(Pressed [4] == false)) {
    Pressed [4] = true;
    }
    else if ((key=='4')&&(Pressed [4] == true)) {
    Pressed [4] = false;
    }
      if ((key == '5')&&(Pressed [5] == false)) {
    Pressed [5] = true;
    }
    else if ((key=='5')&&(Pressed [5] == true)) {
    Pressed [5] = false;
    }
      if ((key == '6')&&(Pressed [6]== false)) {
    Pressed [6] = true;
    }
    else if ((key=='6')&&(Pressed [6] == true)) {
    Pressed [6] = false;
    }
      if ((key == '7')&&(Pressed [7] == false)) {
    Pressed [7] = true;
    }
    else if ((key=='7')&&(Pressed [7] == true)) {
    Pressed [7] = false;
    }
      if ((key == '8')&&(Pressed [8] == false)) {
    Pressed [8] = true;
    }
    else if ((key=='8')&&(Pressed [8] == true)) {
    Pressed [8] = false;
    }
      if ((key=='9')&&(Pressed [9] == false)) {
    Pressed [9] = true;
    }
    else if ((key=='9')&&(Pressed [9] == true)) {
    Pressed [9] = false;
    }
   }
  
}
