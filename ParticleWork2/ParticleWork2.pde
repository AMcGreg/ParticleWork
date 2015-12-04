
ArrayList<Particle> listOfParticles;

void setup() {

  size(800, 500); 

  listOfParticles = new ArrayList<Particle>();

  colorMode(HSB, 100);
}


void draw() {

  background(0, 0, 100);


  listOfParticles.add(new Particle(new PVector(width/2, height/2), 
    10, 
    color(random(0, 100), 100, 100), 
    new PVector(random(-4, 4), 
    random(-4, 4))));


  for (int i = 0; i < listOfParticles.size(); i++) {          // Loop through the ArrayList using the value returned by size()
    Particle thisParticle = listOfParticles.get(i);         // Get a reference to the current Particle and store it in thisParticle

    if (thisParticle.coords.x > width || 
      thisParticle.coords.x < 0 ||
      thisParticle.coords.y > height ||
      thisParticle.coords.y < 0) {

      listOfParticles.remove(i);
      int counter=listOfParticles.size(); // this counts how many Particles remain on screen
      println(counter);
    } else {  
      thisParticle.updateParticlePosition();                  // Do some stuff to it....
      thisParticle.drawParticle();
    }
  }
}