//declare two arrays with 50 elements
int [] xpos = new int [50];
int [] ypos = new int [50];

void setup(){
size(500,500);

smooth();

for(int i = 0; i < xpos.length; i ++ ){
xpos[i] = 0;
ypos[i] = 0;
 }
}

void draw(){
 
  background(255);
  
  //shift array values
  for(int i = 0; i < xpos.length-1; i++){
   xpos[i] = xpos[i+1];
   ypos[i] = ypos[i+1];
  }
  
  //the last one is following the mouse
  
  xpos[xpos.length-1] = mouseX;
  ypos[ypos.length-1] = mouseY;
  
  //draw everything
  for(int i =0; i < xpos.length; i++){
   noStroke();
   fill(map(i,0,xpos.length,255,0));
   ellipse(xpos[i],ypos[i],i,i);
   
  }
}