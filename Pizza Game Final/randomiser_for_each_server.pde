//Below are all the randomisers that are used, besides the paper randomiser found in visual_images

void instructionBoolean () // goes in draw()
{
  int space = 0;
  for (int a = 0; a < 10; a++)
  {
    if (brokenBoolean [a] == true)
    {
      image(broken[a], 1100, 70 + 70 * space); 
      space++; // prevents the 4 visual handwriting images from overlapping
    }
    if (cursiveBoolean [a] == true)
    {
      image(cursive[a], 1100, 70 + 70 * space);
      space++;
    }
    if (errorsBoolean [a] == true)
    {
      image(errors[a], 1100, 70 + 70 * space);
      space++;
    }
    if (picturesBoolean [a] == true)
    {
      image(pictures[a], 1100, 70 + 70 * space);
      space++;
    }
  }  
}

void ingredientsRandomiser () //these should go into keyPressed. This randomises the set between broken, cursive, errors and pictures so that it is as if different servers have different handwriting
{
  float a = random (4);
  if (int(a) == 0)
    {
      brokenRandomiser ();
    }
  if (int(a) == 1)
    {
      cursiveRandomiser ();
    }
  if (int(a) == 2)
    {
      errorsRandomiser ();
    }
  if (int(a) == 3)
    {
      picturesRandomiser ();
    }
}

boolean [] arrayLock = new boolean [10];  // this is for the randomisers below to prevent duplicates of each ingredient. Refer to the randomiser below
{
  for (int a = 0; a < 10; a++)
  {
    arrayLock [a] = false;
  }
}

void brokenRandomiser () 
{
  for (int a=0; a<4; a++) // this ensures that four different ingredients appear on the order
    {
      float b = random(10); // finds a random ingredient from the list of different ingredients
      for (int c=0; c<10; c++) // prints out all the different ingredients
      {
        if (((int(b))==c) && (arrayLock[int(b)] == false)) //First condition: matches random with associated ingredient. 
                                                           //Second condition: is turned on once it is activated and thus prevents the associated ingredient from being repeated
        {
          brokenBoolean[c] = true; // activates the ingredient handwriting
          arrayLock[c] = true; // activates the lock to prevent duplication
          Cheatsheet [c]= true; // activates so that the code knows which answer is correct (refer to confirmButton tab)
        }
        else if (((int(b))==c) && (arrayLock[int(b)] == true)) // If the random finds a duplicate, tells it to find another random number
        {
          a--;
        }
      }
    }
}

// repeats of the brokenRandomiser() below, each for their own server

void cursiveRandomiser ()
{
  for (int a=0; a<4; a++)
    {
      float b = random(10);
      for (int c=0; c<10; c++)
      {
        if (((int(b))==c) && (arrayLock[int(b)] == false))
        {
          cursiveBoolean[c] = true;
          arrayLock[c] = true;
          Cheatsheet [c]= true;
        }
        else if (((int(b))==c) && (arrayLock[int(b)] == true)) 
        {
          a--;
        }
      }
    }
}

void errorsRandomiser ()
{
  for (int a=0; a<4; a++)
    {
      float b = random(10);
      for (int c=0; c<10; c++)
      {
        if (((int(b))==c) && (arrayLock[int(b)] == false))
        {
          errorsBoolean[c] = true;
          arrayLock[c] = true;
          Cheatsheet [c]= true;
        }
        else if (((int(b))==c) && (arrayLock[int(b)] == true)) 
        {
          a--;
        }
      }
    }
}

void picturesRandomiser ()
{
  for (int a=0; a<4; a++)
    {
      float b = random(10);
      for (int c=0; c<10; c++)
      {
        if (((int(b))==c) && (arrayLock[int(b)] == false))
        {
          picturesBoolean[c] = true;
          arrayLock[c] = true;
          Cheatsheet [c]= true;
        }
        else if (((int(b))==c) && (arrayLock[int(b)] == true)) 
        {
          a--;
        }
      }
    }
}

// Below are used as switches to activate the visual handwriting images

boolean [] brokenBoolean = new boolean [10];
{
  for (int a = 0; a < 10; a++)
  {
    brokenBoolean [a] = false;
  }
}

boolean [] cursiveBoolean = new boolean [10];
{
  for (int a = 0; a < 10; a++)
  {
    cursiveBoolean [a] = false;
  }
}

boolean [] errorsBoolean = new boolean [10];
{
  for (int a = 0; a < 10; a++)
  {
    errorsBoolean [a] = false;
  }
}

boolean [] picturesBoolean = new boolean [10];
{
  for (int a = 0; a < 10; a++)
  {
    picturesBoolean [a] = false;
  }
}
