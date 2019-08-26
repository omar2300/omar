float[] x = new float[20];
float[] y = new float[20];
float segLength = 36;
int FoodY = 0;
int FoodX = 0;
int sFood = 10;
food =false; 

void setup() {
  size(1280, 720);
  strokeWeight(13);
  stroke(255, 100);
  sFood = (int) random(10, 20);
  FoodY = (int) random(0, height-sFood);
  FoodX = (int) random(0, width-sFood);
}

void draw() {
  background(0);
  ellipse(FoodX, FoodY, sFood, sFood);
  dragSegment(0, mouseX, mouseY);
  if(dist(mouseX, mouseY, FoodX, FoodY) < sFood){
  segLength = segLength +1;
}
  for(int i=0; i<x.length-1; i++) {
    dragSegment(i+1, x[i], y[i]);
  }
}

void dragSegment(int i, float xin, float yin) {
  float dx = xin - x[i];
  float dy = yin - y[i];
  float angle = atan2(dy, dx);  
  x[i] = xin - cos(angle) * segLength;
  y[i] = yin - sin(angle) * segLength;
  segment(x[i], y[i], angle);
}

void segment(float x, float y, float a) {
  pushMatrix();
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
  popMatrix();
}
