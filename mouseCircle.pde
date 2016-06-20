void setup(){
 size(500, 500);
}

void draw(){
 background(255);
 colorMode(HSB);
 noStroke();
 
 int nbrCircles = 8;
 float spacing = width/nbrCircles;
 float minSize = spacing*1/5;
 float maxSize = spacing*4/5;
 
 for(int i = 0; i < nbrCircles; i++){
  for(int j = 0; j < nbrCircles; j++){
   
    float x = spacing/2 + i*spacing;
    float y = spacing/2 + j*spacing;
    float distance = dist(mouseX, mouseY, x, y);
    float rgb = map(distance, 0, width, 0, 255);
    fill(rgb, 255, 255);
    //version1
    float circleSize = map(distance, 0, width, minSize, maxSize);
    //version2
    //float circleSize = constrain(1/distance*1000, minSize, maxSize);
   
   ellipse(x, y, circleSize, circleSize);
  }
 }
}