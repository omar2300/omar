void setup(){
  size(500, 500);
}

void draw(){
  background(100);
  fill(219, 84, 136);
  stroke(0);
  strokeWeight(3);
  rect(10, 10, 480, 480);
  
  fill(116, 180, 222);
  rect(10, 300, 480, 190);
  
  fill(245, 141, 30);
  ellipse(250, 200, 120, 120);
  
  arc(200, 310, 20, 20, HALF_PI, PI+HALF_PI, OPEN);
  noStroke();
  rect(200, 302, 100, 19);
  stroke(0);
  arc(300, 310, 20, 20, -HALF_PI, HALF_PI, OPEN);
  line(200, 320, 205, 320);
  line(275, 320, 300, 320);
  
  
  
  noStroke();
  rect(205, 320, 70, 12);
  stroke(0);
  fill(116, 180, 222);
  arc(205, 325, 10, 10, -HALF_PI, HALF_PI, OPEN);
  arc(275, 325, 10, 10, HALF_PI, PI + HALF_PI, OPEN);

}
