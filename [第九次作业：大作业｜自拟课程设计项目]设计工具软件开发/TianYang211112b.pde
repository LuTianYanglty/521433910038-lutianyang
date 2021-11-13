PVector []cells;
int cellW = 15;
int cellH = 15;
int nbCellW;
int nbCellH;

void setup() {
  fullScreen();

  rectMode(CENTER);
  colorMode(HSB, 1);

  nbCellW = floor(width / cellW);
  nbCellH = floor(height / cellH);
  cells = new PVector[nbCellW*nbCellH];
  for (int i = 0; i < nbCellW*nbCellH; i ++) {
    //cells.push(createVector(0, 0));
    cells[i]= new PVector(0, 0);
  }
}

void  draw() {

  PVector deltaMouse = new PVector(mouseX - pmouseX, mouseY - pmouseY);
  for (int i = 0; i < nbCellW; i ++) {
    for (int j = 0; j < nbCellH; j ++) {
      int k = i+j*nbCellW;
      int x =  cellW * i + cellW/2;
      int y =  cellH * j + cellH/2;
      float d = max(1, dist(mouseX, mouseY, x, y));

      deltaMouse.normalize();
      deltaMouse.mult(1/(d*30));
      cells[k].add(deltaMouse);
      cells[k].limit(10);

      float h = map(cells[k].heading(), -PI, PI, 0, 1);
      float b = min(cells[k].mag()*100, 10);
      fill(h, 1, b);
      rect(x, y, cellW, cellH);


      //cells[k].mult(.97);
    }
  }
}
void mousePressed()
{
  for (int i = 0; i < nbCellW; i ++) {
    for (int j = 0; j < nbCellH; j ++) {
      int k = i+j*nbCellW;
      cells[k].mult(0);
    }
  }
}
