void printZ(float x, float y,PImage p)
{
  for (int i=0; i<3; i++)
  {
    for (int j=0; j<3; j++)
    {
      if ((i!=0||j!=1)&&(i!=2||j!=1))
      {
        pigs[pn]=new pig(x+50*i, y+50*j, p);
        if (pn<34)
        {
          pn++;
        }
      }
    }
  }
}
void printC(float x, float y,PImage p)
{
  for (int i=0; i<3; i++)
  {
    for (int j=0; j<3; j++)
    {
      if ((i!=1||j!=1)&&(i!=2||j!=1))
      {
        pigs[pn]=new pig(x+50*i, y+50*j, p);
        if (pn<34)
        {
          pn++;
        }
      }
    }
  }
}
void printU(float x, float y,PImage p)
{
  for (int i=0; i<3; i++)
  {
    for (int j=0; j<3; j++)
    {
      if ((i!=1||j!=0)&&(i!=1||j!=1))
      {
        pigs[pn]=new pig(x+50*i, y+50*j, p);
        //image(pictureP, pigs[pn].position.x, pigs[pn].position.y);
        //pigs[pn].display();
        if (pn<34)
        {
          pn++;
        }
      }
    }
  }
}
void printZCCUC(float x, float y)
{
  printZ(x, y,pictureP2);
  printC(x+150, y,pictureP);
  printC(x, y+150,pictureP);
  printU(x+150, y+150,pictureP2);
  printC(x+300, y+150,pictureP);
}
