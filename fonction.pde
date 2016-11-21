
float angle(float x0,float y0,float x1,float y1) {
  float A=atan((y1-y0)/(x1-x0)); 
  if ((x1-x0)<0) {
   A=A+PI;
  } 
  A=A+PI;
  return A; 
}
