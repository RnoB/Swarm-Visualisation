void cdessin() {
  vc=random(3,5);
  ns+=0.05;
  Ac+=0.3*(0.5-noise(ns));
  xc+=vc*cos(Ac);
  yc+=vc*sin(Ac);
  if(xc<0) {xc=0.1;Ac+=PI;}
  if(xc>width) {xc=width-0.1;Ac+=PI;}
  if(yc<0) {yc=0.1;Ac+=PI;}
  if (yc>height) {yc=height-0.1;Ac+=PI;}
 
  fill(color(255,255,255));
  pushMatrix();
  translate(xc,yc);
  //ellipse(0,0,10,10);
  popMatrix();
}
