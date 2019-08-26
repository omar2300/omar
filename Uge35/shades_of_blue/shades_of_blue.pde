float x;
float y;

float bgR;
float bgG;
float bgB;


void setup(){
  size(600, 600);
  bgR = random(0, 255);
  bgG = random(0, 255);
  bgB = random(0, 255);
  
  x = 20;
}

void draw(){
  background(bgR, bgG, bgB);

  x = 20 + map(mouseX, 0, width, -5, 5);
  noStroke();
  fill(40, 90, 188, map(mouseY, 0, height, 0, 255));
  rect(x, 20, 560, 130);
  
  fill(64, 141, 198, map(mouseY, 0, height, 0, 255));
  rect(x+6, 140, 560, 130);
  
  fill(96, 168, 222, map(mouseY, 0, height, 0, 255));
  rect(x-2, 260, 560, 130);
    
  fill(156, 219, 234, map(mouseY, 0, height, 0, 255));
  rect(x+8, 380, 560, 130);
  
  fill(0);
  textSize(26);
  text("MADLIB", 20, 560);
  text("SHADES OF BLUE", 370, 560);

}

void mousePressed(){
  bgR = random(0, 255);
  bgG = random(0, 255);
  bgB = random(0, 255);
}
