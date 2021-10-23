color  c=color(255,0,0);
void setup(){
  size(800,600);
  background(0);
  frameRate(1500000);
  
}

void draw(){
  noStroke();
  fill(#FFFFFF);
  rect(50,50,70,40);
  fill(#74E9FF);
    rect(50,100,70,40);
    fill(#FF7499);
  rect(50,150,70,40);
  if(mousePressed){
    fill(c);
    circle(mouseX,mouseY,10);
  }
}

void mouseClicked(){
  if(mouseX>50&&mouseY>50&&mouseX<120&&mouseY<90){
    c=color(#FFFFFF);
  }
  if(mouseX>50&&mouseY>100&&mouseX<120&&mouseY<140){
    c=color(#74E9FF);
  }
  if(mouseX>50&&mouseY>150&&mouseX<120&&mouseY<190){
    c=color(#FF7499);
  }
}
