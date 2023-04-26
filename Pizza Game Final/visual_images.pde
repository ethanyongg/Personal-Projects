// All the visual aspects of the game. These relate to the themes/ideas of the game

PImage [] broken = new PImage [10]; //person with broken hand

PImage [] cursive = new PImage [10]; //person with severely cursive handwriting

PImage [] errors = new PImage [10]; //person with a lot of spelling errors

PImage [] pictures = new PImage [10]; //person who draws rather than writes

PImage [] paper = new PImage [10]; //Paper background for ingredients/instructions

PImage [] ingredient = new PImage [10]; // Visual ingredients on the pizza

PImage img; //background image
PImage paperintro; // the image at the introduction
PImage sticker; // sticker for when you reach a certain score

void arrayImagesList () //placed in void setup()
{
 paperintro = loadImage("paperIntro.png");
 img = loadImage("background.png");
 sticker = loadImage("sticker.png");
 paper [0] = loadImage("paper.png");
 paper [1] = loadImage("paper2.png");
 paper [2] = loadImage("paper3.png");
 broken [0] = loadImage("9c1.png");
 broken [1] = loadImage("8t1.png");
 broken [2] = loadImage("1p1.png"); 
 broken [3] =  loadImage("2c1.png");
 broken [4] =  loadImage("3b1.png");
 broken [5] = loadImage("4c1.png");
 broken [6] = loadImage("5p1.png");
 broken [7] = loadImage("6p1.png");
 broken [8] = loadImage("7o1.png"); 
 broken [9] = loadImage("0m1.png");
 cursive [0] = loadImage("9c2.png");
 cursive [1] = loadImage("8t2.png");
 cursive [2] = loadImage("1p2.png"); 
 cursive [3] = loadImage("2c2.png");
 cursive [4] = loadImage("3b2.png");
 cursive [5] = loadImage("4c2.png");
 cursive [6] = loadImage("5p2.png");
 cursive [7] = loadImage("6p2.png");
 cursive [8] = loadImage("7o2.png"); 
 cursive [9] = loadImage("0m2.png");
 errors [0] = loadImage("9c3.png");
 errors [1] = loadImage("8t3.png");
 errors [2] = loadImage("1p3.png"); 
 errors [3] = loadImage("2c3.png");
 errors [4] = loadImage("3b3.png");
 errors [5] = loadImage("4c3.png");
 errors [6] = loadImage("5p3.png");
 errors [7] = loadImage("6p3.png");
 errors [8] = loadImage("7o3.png"); 
 errors [9] = loadImage("0m3.png");
 pictures [0] = loadImage("9c4.png");
 pictures [1] = loadImage("8t4.png");
 pictures [2] = loadImage("1p4.png"); 
 pictures [3] = loadImage("2c4.png");
 pictures [4] = loadImage("3b4.png");
 pictures [5] = loadImage("4c4.png");
 pictures [6] = loadImage("5p4.png");
 pictures [7] = loadImage("6p4.png");
 pictures [8] = loadImage("7o4.png"); 
 pictures [9] = loadImage("0m4.png");
 ingredient [0] = loadImage("cream sauce.png");
 ingredient [1] = loadImage("tomato sauce.png");
 ingredient [2] = loadImage("pepperoni.png"); 
 ingredient [3] = loadImage("chicken.png");
 ingredient [4] = loadImage("beef.png");
 ingredient [5] = loadImage("cheese.png");
 ingredient [6] = loadImage("pork.png");
 ingredient [7] = loadImage("pineapple.png");
 ingredient [8] = loadImage("olives.png");
 ingredient [9] = loadImage("mushrooms.png");
}

void displayingredients() // goes into void draw (). Whenever the player presses a number key, the related ingredient appears
{
  image(loadImage("base.png"),400,150,560,560);
  for (int a = 0; a < 10; a++)
  {
    if (Pressed [a] ==true) 
    {
      image(ingredient [a],400,150,560,560);
    }
  }
}

//randomiser for paper behind the instructions creates a visual that the instructions have changed

void visualPaper () //goes into void draw ();
{
  for (int a = 0; a < 3; a++)
  {
    if (imagePaper [a] == true)
    { 
      image(paper [a], 1050, 50, 350, 450);
    }
  }
}

void paperRandomiser () //goes into keyPressed
{
  float a = random(3);
  for (int b = 0; b < 3; b++)
  {
    if (int(a) == b)
    {
     imagePaper [b] = true; 
    }
  }
}

boolean [] imagePaper = new boolean [3]; 
{
  for (int a = 0; a < 3; a++)
  {
    imagePaper [a] = false;
  }
}
