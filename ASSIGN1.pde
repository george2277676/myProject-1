PImage fighterimage;
PImage bgimage;
PImage bg2image;
PImage treasureimgage;
PImage hpimage;
PImage enemyimage;
int x,y,z,f,m,t;
void setup () {
  size(640,480) ;  
  fighterimage=loadImage("img/fighter.png");
  bgimage=loadImage("img/bg1.png");
  bg2image=loadImage("img/bg2.png");
  treasureimgage=loadImage("img/treasure.png");
  hpimage=loadImage("img/hp.png");
  enemyimage=loadImage("img/enemy.png");
  x=floor(random(640));
  y=floor(random(480));
  z=floor(random(100));
  f=10;
  m=100;
  t=0;

}

void draw() {
  //image(bgimage,0,0);
  image(bgimage,t,0);
  image(bg2image,t-640,0);
  image(bgimage,t-1280,0);
  t+=1;
  t%=1280;
  
  
  fill(244,0,0);
  rect(20,10,z,30);
  image(fighterimage,570,250);
  image(treasureimgage,x,y);
  image(hpimage,10,11);
  f+=3;
  f%=640;
  image(enemyimage,f,m);
}