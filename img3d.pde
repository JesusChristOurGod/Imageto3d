PImage img;
void setup() {
size(1200,1200,P3D);
img = loadImage("socrates.jpeg");



}

void draw(){
  background(255);
rotateY(mouseX);
img.loadPixels();
for (int x=0; x<img.width; x++){
  for (int y=0; y<img.height; y++){
    
    stroke(img.pixels[x+y*img.width]);
    float b= brightness(img.pixels[x+y*img.width]);
    point(x, y, map(b, 0,1, 0, 100));
  }
}
img.updatePixels();

}
