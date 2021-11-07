class DNA{
  PVector[]genes;
  float maxforce=0.1;
  DNA(){
    genes=new PVector[lifetime];
    for(int i=0;i<genes.length;i++){
      genes[i]=PVector.random2D();
      genes[i].mult(random(0,maxforce));
    }
  }
  DNA crossover(DNA partner){
    PVector[]child=new PVector[genes.length];
    int crossover=int(random(genes.length));
    for(int i=0;i<genes.length;i++){
      if(i>crossover)child[i]=genes[i];
      else           child[i]=partner.genes[i];
    }
    DNA newgenes=new DNA(child);
    return newgenes;
  }
  void mutate(float m){
    for(int i=0;i<genes.length;i++){
      if(random(1)<m){
        genes[i]=new PVector(cos(random(TWO_PI)),sin(random(TWO_PI)));
      genes[i].mult(random(0,maxforce));
      }
    }
  }
  DNA(PVector[]newgenes){
    genes=newgenes;
  }
}




    


  
