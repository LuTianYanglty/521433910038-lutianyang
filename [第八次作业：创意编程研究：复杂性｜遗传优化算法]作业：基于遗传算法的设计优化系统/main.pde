int lifetime;
Population population;
int lifeCounter;
PVector target;
void setup(){
  size(800,200);
  smooth();
  lifetime=200;
  lifeCounter=0;
  target=new PVector(width/2,24);
  population=new Population(0.01,50);
}
void draw(){
  background(255);
  fill(0);
  ellipse(target.x,target.y,24,24);
  if(lifeCounter<lifetime){
    population.live();
    lifeCounter++;
  }
  else{
    lifeCounter=0;
    population.fitness();
    population.selection();
    population.reproduction();
  }
  fill(0);
  text("child#:"+population.getGenerations(),10,18);
  text("round:"+(lifetime-lifeCounter),10,36);
}
void mousePressed(){
  target.x=mouseX;
  target.y=mouseY;
}
  
