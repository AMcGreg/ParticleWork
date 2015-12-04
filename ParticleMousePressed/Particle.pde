class Particle {

  PVector coords;
  float diameter;
  float radius;

  color particleFill;

  PVector speed;


  Particle(PVector initialCoords, float initialDiameter, 
    color initialFill, PVector initialSpeed) {

    coords = initialCoords;
    diameter = initialDiameter;
    particleFill = initialFill;
    radius = diameter * 0.5;
    speed = initialSpeed;
  }

  void drawParticle() {

    noStroke();
    fill(particleFill);
    ellipse(coords.x, coords.y, diameter, diameter);
  }

  void updateParticlePosition() {

    coords.x = coords.x + speed.x;
    coords.y = coords.y + speed.y;
  }
}