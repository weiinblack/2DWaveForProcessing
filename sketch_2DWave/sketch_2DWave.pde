int xNum =60;
int yNum =60;

int patternRepeat = 5;

void setup(){
  size(800,800);
}

void draw(){
  background(0);

  for(int j=0; j<yNum ;j++){
    for(int i=0; i<xNum ;i++){
      float px = width/xNum  * (i+0.5) + sin(TWO_PI*patternRepeat/xNum*j + (frameCount)/50.0)*15 + cos(TWO_PI*patternRepeat/xNum*i + (frameCount)/50.0)*5;
      float py = height/yNum * (j+0.5) + sin(TWO_PI*patternRepeat/xNum*i + (frameCount)/50.0)*15 + cos(TWO_PI*patternRepeat/xNum*j + (frameCount)/50.0)*5;
      fill(255- map(sin(TWO_PI*patternRepeat/xNum*i),-1,1,0,128) - map(sin(TWO_PI*patternRepeat/yNum*j),-1,1,0,128));
      circle(px, py,5);
    }
  }
}
