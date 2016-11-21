
color colbg;
float xc,yc;
float vc,Ac;
float ns;
Bete[] bete = new Bete[500];
float nlim=1;

void setup() {
 
 size(1500,500);
 colorMode(HSB);
 colbg=color(0,0,255); 
 smooth();
 xc=random(0,width);
 yc=random(0,height);
 ns=1;

 for(int i=0; i < bete.length; i++) { 
   bete[i] = new Bete();
 } 
 
}

void draw() {
  noStroke();
  fill(colbg,25);
  rect(0,0,width,height);
  cdessin();
  if(keyPressed) {
    if (key == '+') {
      nlim+=1;
      if (nlim>100)
        nlim=100;
    }
    if (key == '-') {
      nlim+=-1;
      if (nlim<0)
        nlim=1;
    }
  }
  for(int i=0; i < nlim; i++) {

    bete[i].bouger();    
    bete[i].dessiner();
    
  }
}
void mousePressed() {
    saveFrame("01/pic-####.png");
  for(int i=0; i < bete.length; i++) {
    fill(colbg,255);
   rect(0,0,width,height);
    bete[i].reinit();
    
  }
}