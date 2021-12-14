Die[] loveDice = new Die[20];

void setup()
{
  size(1000,800);
  textAlign(CENTER);
  noLoop();
}
void draw()
{
  //your code here
  background(200);
  
  // hideous code i am so sorry mr. chan
  loveDice[0] = new Die(240, 80);
  loveDice[1] = new Die(320, 80);
  loveDice[2] = new Die(640, 80);
  loveDice[3] = new Die(720, 80);
  loveDice[4] = new Die(160, 160);
  loveDice[5] = new Die(400, 160);
  loveDice[6] = new Die(560, 160);
  loveDice[7] = new Die(800, 160);
  loveDice[8] = new Die(160, 240);
  loveDice[9] = new Die(480, 240);
  loveDice[10] = new Die(800, 240);
  loveDice[11] = new Die(160, 320);
  loveDice[12] = new Die(800, 320);
  loveDice[13] = new Die(240, 400);
  loveDice[14] = new Die(720, 400);
  loveDice[15] = new Die(320, 480);
  loveDice[16] = new Die(640, 480);
  loveDice[17] = new Die(400, 560);
  loveDice[18] = new Die(560, 560);
  loveDice[19] = new Die(480, 640);
  
  int sum = 0;
  
  for(int i = 0; i < 20; i++){
    loveDice[i].roll();
    sum = loveDice[i].dots + sum;
    loveDice[i].show();
  }
  
  text("Total Love Sum: " + sum, 510, 401);

}

void mousePressed()
{
  redraw();
}

class Die //models one single dice cube
{
  
  //variable declarations here
  int dots, myX, myY = 0;
  
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
  }
  
  void roll()
  {
    //your code here
    dots = (int)(Math.random()*6)+1;
  }
  
  void show()
  {
    //your code here
    stroke(255);
    fill(255);
    rect(myX, myY, 70, 70, 8);
    
    fill(20);
    stroke(0);
    if(dots == 1){
      ellipse(myX+35,myY+35,10,10);
    } else if(dots == 2) {
      ellipse(myX+15,myY+15,10,10);
      ellipse(myX+55,myY+55,10,10);
    } else if(dots == 3) {
      ellipse(myX+35,myY+35,10,10);
      ellipse(myX+15,myY+15,10,10);
      ellipse(myX+55,myY+55,10,10);
    } else if(dots == 4) {
      ellipse(myX+15,myY+15,10,10);
      ellipse(myX+55,myY+55,10,10);
      ellipse(myX+55,myY+15,10,10);
      ellipse(myX+15,myY+55,10,10);
    } else if(dots == 5){
      ellipse(myX+15,myY+15,10,10);
      ellipse(myX+55,myY+55,10,10);
      ellipse(myX+55,myY+15,10,10);
      ellipse(myX+15,myY+55,10,10);
      ellipse(myX+35,myY+35,10,10);
    } else {
      ellipse(myX+15,myY+15,10,10);
      ellipse(myX+55,myY+55,10,10);
      ellipse(myX+55,myY+15,10,10);
      ellipse(myX+15,myY+55,10,10);
      ellipse(myX+15,myY+35,10,10);
      ellipse(myX+55,myY+35,10,10);
    }
        
  }
}
