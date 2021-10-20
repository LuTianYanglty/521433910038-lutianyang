void setup(){
size(1000,1000);
colorMode(HSB,100,1,1,1);
background(0,0,0);
String txt="I leave no trace of wings in the air,but i am glad I have had my flight";
float ww=0;
for (int i=0;i<txt.length();i++){
  char c=txt.charAt(i);
  textSize(floor(random(36,100)));
  int x=int(c);
  println(x);
  fill(x,1,1,0.5);
  noStroke();
  rect(ww,500,200,200);
  ellipse(ww,50,200,200);
  ww+=textWidth(c);
}
}
