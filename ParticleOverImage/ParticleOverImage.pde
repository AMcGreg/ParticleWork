
ArrayList<Particle> listOfParticles;
PImage photo;

void setup() {

  size(750, 500); 
  photo = loadImage("Achnasheen4.gif");
  photo.loadPixels();
  background(255);
  image(photo, 0, 0);
  
  listOfParticles = new ArrayList<Particle>();

  colorMode(HSB, 100);
}


  
  float scaledMouseX = map(mouseX, 0, 750, -50, 50);
  float scaledMouseY = map(mouseY, 0, 500, -50, 50);
  
 

void draw() {
  
  float scaledMouseX = map(mouseX, 0,750, -50, 50);
  float scaledMouseY = map(mouseY, 0, 500, -50, 50);
  
  //println(scaledMouseX);
  
  for(int x = 0; x < photo.width; x++){
    for(int y = 0; y < photo.height; y++){
    
    color thisPixel = photo.get(x, y);
    
    float hue = hue(thisPixel);
    float saturation = saturation(thisPixel);
    float brightness = brightness(thisPixel);
    
    
    photo.pixels[x + (y * photo.width)] = color(hue, 
                                                saturation + scaledMouseY, 
                                                brightness + scaledMouseX);
    
    }    
  }
  
  
  listOfParticles.add(new Particle(new PVector(width/2, height/2), 
    10, 
    color(photo.pixels), 
    new PVector(random(-4, 4), 
    random(-4, 4))));
  


  for (Particle thisParticle : listOfParticles) {            // This version uses a nicer for loop. You'll hear this described as:
    //      an enhanced for loop
    //      a range based for loop
    //      a for-each loop
    // It does exactly the same thing as the last example.
    thisParticle.updateParticlePosition();
    thisParticle.drawParticle();
  // Still to add code to remove once gone from screen
  
  }
}