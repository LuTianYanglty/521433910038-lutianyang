float xxx;


void setup() {
  size(1000, 1000);
  ellipseMode(RADIUS);
  rectMode(CENTER);
  background(255);
  stroke(0);
  //ameRate(10);
  noFill();
  render();
  translate(width/2, height/2);
}
float k=0;
void draw() {
  //background(255);
  float xxx= map(mouseX, 0, width, 0, 255);
  render();
  //background(k,0);
  fill(255,xxx);
  rect(500,500,1500,1500);
  noStroke();
}
class Point {
  float x, y;

  Point(float x, float y) {
    this.x=x;
    this.y=y;
  }
  Point() {
    x=0;
    y=0;
  }
  Point copy() {
    return new Point(x, y);
  }
}

class VisualPoint extends Point {
  float w;
  color c;
  VisualPoint(float x, float y, float w, color c) {
    super(x, y);
    this.w=w;
    this.c=c;
  }
  void display() {
    stroke(c);
    strokeWeight(w);
    point(x, y);
  }
}

void render() {
  //color c= (mouseX,0,width,0,255);


  VisualPoint[]points=new VisualPoint[500];//组，1000个
  for (int i=0; i<points.length; i++) {
    float x= random(width);
    float y=random(height);
    float w=random(1, 40);
    //float xxx= map(mouseX, 0, width, 0, 255);
    float rgbbb=random(79);
    color c=color(random(150,255),rgbbb,rgbbb);
    //color c=color(random(200),random(255),random(255));
    points[i]=new VisualPoint(x, y, w, c);
  }
  for (VisualPoint p : points)p.display();
}
