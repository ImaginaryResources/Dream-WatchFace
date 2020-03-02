int secCounter = 0;
int minCounter = 0;
int hourCounter = 0;

void setup() {
  size(500, 500);
}

void draw(){
  translate(width / 2, height / 2);
  
  //// degrees divided by number of second marks per round
  float radSec = 360 / 60 * second();
  float radMin = 360 / 60 * minute();
  float radHour = 360 / 12 * (hour() % 12);
  
  if(radMin == 0)
      minCounter++;
      
  if((minCounter/60) % 2 == 0){
      fill(0,0,0);
      background(255,255,255);
  }
  else{
      fill(255,255,255);
      background(0,0,0);
  }
  
  pushMatrix();
  noStroke();
  rotate(radians(-90));
  ellipse(0, 0, 248, 248); //two pixel less or eles it "bleeds"
  arc(0, 0, 500, 500, 0, radians(radMin));
   
  //Sets arc to the same color as the background
  fill(get(0,0));
  arc(0, 0, 250, 250, 0, radians(radHour));
  popMatrix();
}
