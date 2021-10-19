class Point {
  float x, y;

  Point(float x, float y) {
    this.x=x;
    this.y=y;
  }
  Point copy(){
    return new Point(this.x,this.y);//修改处
  }
  float distance(Point p){
    return (float)Math.sqrt((this.x-p.x)*(this.x-p.x)+(this.y-p.y)*(this.y-p.y));
  }//修改处
}
