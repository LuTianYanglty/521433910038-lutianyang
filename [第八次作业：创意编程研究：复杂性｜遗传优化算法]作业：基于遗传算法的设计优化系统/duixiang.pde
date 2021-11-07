class Rocket{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float r;
  float fitness;
  DNA dna;
  int geneCounter=0;
  boolean hitTarget=false;
  Rocket(PVector l,DNA dna_){
    acceleration=new PVector();
    velocity=new PVector();
    location=l.get();
    r=4;
    dna=dna_;
  }
  void applyForce2(PVector f){
    acceleration.add(f);
  }
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
}
void fitness(){
  
  float d=PVector.dist(location.x,location.y,target.x,target.y);
  fitness=pow(1/d,2);
}
void display(){
  float theta=velocity.heading2D()+PI/2;
  fill(200,100);
  stroke(0);
  pushMatrix();
  translate(location.c,location.y);
  rotate(theta);
  rectMode(CENTER);
  fill(0);
  rect(-r/2,r*2,r/2,r);
  rect(r/2,r*2,r/2,r);
  fill(175);
  beginShape(TRIANGLES);
  vertex(0,-r*2);
  vertex(-r,r*2);
  vertex(r,r*2);
  endShape();
  popMatrix();
}
void checkTarget(){
  float d=dist(location.x,location.y,target.x,target.y);
  if(d<12){
    hitTarget=true;
  }
}
void run(){
  checkTarget();
  if(!hitTarget){
    applyForce2(dna.genes[geneCounter]);
    geneCounter=(geneCounter+1)%dna.genes.length;
    update();
  }
  display();
}
float getFitness(){
  return fitness;
}
DNA getDNA(){
  return dna;
}
