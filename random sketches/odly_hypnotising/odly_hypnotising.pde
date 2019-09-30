ArrayList Dots=new ArrayList();
float R=TWO_PI/360;

class Dot {
  float rad, dept;
  int status, count, gray;

  Dot() {
    dept=0;
    status=0;
    rad=random(TWO_PI);
    count=(int)random(10, 20);
    gray=(int)random(64, 255);
  }
  boolean update() {
    if (count--<0) {
      count=(int)random(10, 20);
      status=status!=0?0:int(random(1)*2)*2-1;
    }
    if (status==0) {
      dept+=0.1;
      if (dept>30)return false;
    } else {
      rad+=status*R;
      write();
      rad+=status*R;
    }
    write();
    return true;
  }
  void write() {
    stroke(0, gray, 0);
    pushMatrix();
    rotate(rad);
    scale(pow(1.1, dept));
    point(25, 0);
    popMatrix();
  }
}

void setup() {
  size(640, 640);
  background(0);
  strokeWeight(1);
}

void draw() {
  fill(0, 5);
  noStroke();
  rect(0, 0, width-1, height-1);
  if (frameCount%3==0)Dots.add(new Dot());

  translate(width/2, height/2);
  for (int i=0; i<Dots.size(); i++)
    if (!((Dot)Dots.get(i)).update())Dots.remove(i);
}
