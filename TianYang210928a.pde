Point[]points=new Point[100];
void setup() {
  size(1000, 1000);
  background(255);
  rectMode(CORNERS);
  stroke(0);
  //for(int i=0;i<100;i++) {
  //  points[i]=new Point(random(1000),random(1000));
  //}
  frameRate(3);
 

}//初始化区域
void draw(){
render();
if(mousePressed){
  background(255);
}

}



class VisualRectangle extends Rectangle{
  float w;
  color c;
  VisualRectangle(Point p1,Point p2,float w,color c){
    super(p1,p2);
    this.w=w;
    this.c=c;
  }
  VisualRectangle(Point p1,Point p2){
    super(p1,p2);
    w=1;
    c=color(random(255));
  }
  void setWeight(float w){
    this.w=w;
  }
  void setColor(color c){
    this.c=c;
  }
  void displayStroke(){ //<>//
    stroke(c); //<>//
    strokeWeight(w);
    fill(random(255),random(255));
    rect(p1.x,p1.y,p2.x,p2.y); //<>//
  }
  void displayFill(){
    noStroke();
    fill(c);
    rect(p1.x,p1.y,p2.x,p2.y);
  }
}
void render(){
  VisualRectangle[] rectangles=new VisualRectangle[20];
  for(int i=0; i<rectangles.length;i++){
    rectangles[i]=new VisualRectangle(
    new Point(random(width),random(height)),
    new Point(random(width),random(height)));
    float area =rectangles[i].area();//计算面积
    float w=map(area,0,width*height,1,10);//面积映射线宽    
    rectangles[i].setWeight(w);
  }
  for (VisualRectangle rect:rectangles)rect.displayStroke();
}
    
  
  
