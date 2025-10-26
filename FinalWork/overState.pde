void overState()
{
  fill(255);
  image(overUI, -100, 0);
  textSize(64);
  text("Your goal is "+gameGoal+" !", 140, 70);
  text("Press any key to over", 250, 550);
  pn=0;
  setPig=0;
}
