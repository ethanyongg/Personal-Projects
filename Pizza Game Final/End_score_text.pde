void endText()
{
  if (score < 0)
    {
      fill (0);
      textSize(20);
      text("Somehow, you owe us money.", 1070, 100);
      text("You've wasted so many of our", 1070, 125);
      text("resources that you're gonna", 1070, 150);
      text("have to come back and make", 1070, 175);
      text("up for it.", 1070, 200);
      text("Press ENTER to restart", 1070, 300);
    }
    if (score == 0)
    {
      fill (0);
      textSize(20);
      text("Amazing.", 1070, 100);
      text("You've made no profit. I don't", 1070, 125);
      text("know how you're gonna make a ", 1070, 150);
      text("living here but if you need to", 1070, 175);
      text("make more money you can do.", 1070, 200);
      text("overtime if you'd like.", 1070, 225);
      text("Press ENTER to restart", 1070, 300);
    }
    if ((score > 0)&&(score < 20))
    {
      fill (0);
      textSize(20);
      text("Wow, you've made a profit!", 1070, 100);
      text("You know, you can always make ", 1070, 125);
      text("more if you work overtime.", 1070, 150);
      text("Press ENTER to restart", 1070, 300);
    }
     if ((score >= 20)&&(score < 100))
    {
      fill (0);
      textSize(20);
      text("Look at all this money you've ", 1070, 100);
      text("made! You're a stellar worker. ", 1070, 125);
      text("A valued worker like you should", 1070, 150);
      text("be working more! We would love", 1070, 175);
      text("if you could work overtime.", 1070, 200);
      text("Press ENTER to restart", 1070, 300);
    }
     if (score >= 100)
    {
      fill (0);
      textSize(20);
      text("You are our best employee!", 1070, 100);
      text("We don't have the capacity to", 1070, 125);
      text("give you a raise here's a", 1070, 150);
      text("sticker instead. Now keep ", 1070, 175);
      text("up the good work!", 1070, 200);
      text("Press ENTER to restart", 1070, 300);
      Sticker = true;
    }
}
