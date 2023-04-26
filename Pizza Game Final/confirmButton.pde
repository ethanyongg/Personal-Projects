// the function for generating a score by comparing the player's input (Pressed with the computer's decided answer (Cheatsheet)
float score = 0;

void confirmButton ()
{
  
  for (int a = 0; a<10; a++)
  {
    if (((Cheatsheet [a] ==true) && (Pressed [a] == false))||((Cheatsheet [a] ==false) && (Pressed [a] == true))) // this is so that the players don't press all the keys at once
    {
      score=score-1;
    }
    if ((Cheatsheet [a] ==true) && (Pressed [a] == true)) // generates the score when the player answers correctly
    {
      score=score+1;
    }
  }
  // resetting everything below
  for (int a=0; a<3; a++) // restarts the paperRandomiser
  {
    imagePaper[a] = false;
  }
  for (int a = 0; a < 10; a++) // refreshes
  {
    brokenBoolean [a] = false; // refreshes all the broken handwriting set to begin new order
    cursiveBoolean [a] = false; // refreshes all the cursive handwriting set
    errorsBoolean [a] = false; // refreshes all the errors handwriting set
    picturesBoolean [a] = false; // refreshes all the pictures handwriting set
    Pressed [a] = false; // refreshes all the visual ingredients on the pizza, resetting the player's input
    Cheatsheet [a] = false; // refreshes the answers so that new answers can appear
    arrayLock[a] = false; //refreshes so that randomisers can access the ingredients again
  }
}

boolean [] Pressed = new boolean [10];
{
  for (int a = 0; a < 10; a++)
  {
    Pressed [a]= false;
  }
}

boolean [] Cheatsheet = new boolean [10];
{
  for (int a = 0; a < 10; a++)
  {
    Cheatsheet [a] = false;
  }
}
