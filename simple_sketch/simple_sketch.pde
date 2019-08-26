float x;
float y;
float easing = 0.05;

void setup(){

size(1080, 720);
  surface.setResizable(true);

  noStroke(); 
}

void draw(){
background(50);
fill(150);
stroke(255);
ellipse(x, y, 80, 80);
   
  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
}
void mousePressed(){
 easing = -0.1; 
}
void mouseReleased(){
 easing = +0.1; 
}
