ParticleSystem ps;
ArrayList<Leader> leaders;

color background = new color(25);

void setup() {
  size(300,200);
  ps = new ParticleSystem();
  
  initializePS();
  initializeLeaders();
  
  smooth();
  pushStyle();
  fill(background);
  rect(0,0,width,height);
  popStyle();
}

void initializeLeaders() {
  leaders = new ArrayList<Leader>();
  
  for(int i=0; i<1; i++) {
    leaders.add(new Leader(
        new PVector(
        random(width*7/15,width*8/15),
        random(height*7/15,height*8/15)),
        35,random(.4,.6)));
  }
}

void initializePS() {
  ps = new ParticleSystem();
  for(int i=0; i<200; i++) {
    ps.addParticle();
  }
}

void draw() {
  pushMatrix();
  noStroke();
  fill(red(background), green(background), blue(background), 5);
  rect(0, 0, width, height);
  popMatrix();
  
  ps.run();
  
  for(Leader l : leaders) {
    l.run();
  }
}

class Leader {
  PVector location;
  float radius;
  float velocity;
  float theta;
  
  Leader(PVector start, float radius, float velocity) {
    location = start.get();
    this.radius = radius;
    this.velocity = velocity;
    theta = random(0,2*PI);
  }
  
  PVector getLocation() {
    return new PVector(location.x+sin(theta)*radius,location.y+cos(theta)*radius);
  }
  
  void run() {
    update();
//    display();
  }
  
  void update() {
    theta += velocity/radius;
  }
  
  void display() { 
    noStroke();
    fill(255,0,0);
    ellipse(location.x + sin(theta)*radius,location.y+cos(theta)*radius,2,2);
  }
}

class Particle {
  PVector location;
  PVector lastLoc;
  PVector velocity;
  PVector acceleration;

  Particle(PVector l) {
    acceleration = new PVector(0,0);
    velocity = new PVector(0,0);
//    velocity = new PVector(random(-1,1),random(-1,1));
    location = l.get();
    lastLoc = l.get();
  }

  void run() {
    update();
    display();
    lastLoc.x = location.x;
    lastLoc.y = location.y;
  }

  // Method to update location
  void update() {
    updateAcceleration();
    velocity.add(acceleration);
//    if(abs(velocity.x*velocity.y) > 4) {
//      velocity.sub(acceleration);
//    }
    location.add(velocity);
  }

  // Method to display
  void display() {
    stroke(255);
    strokeWeight(5);
    fill(255,125);
    line(lastLoc.x,lastLoc.y,location.x,location.y);
    for(Leader l : leaders) {
      if((int)l.getLocation().x == (int)location.x && (int)l.getLocation().y == (int)location.y) {
//        fill(200,0,230,15);
//        rect(0,0,width,height);
      }
    }
//    ellipse(location.x,location.y,1,1);
  }
  
  boolean isDead() {
    return false;
  }
  
  void updateAcceleration() {
    this.acceleration.x = 0;
    this.acceleration.y = 0;
    float nearest = MAX_FLOAT;
    for(Leader l : leaders) {
      PVector lLoc = l.getLocation();
      float distance = dist(lLoc.x,lLoc.y,this.location.x,this.location.y);
//      if(distance < nearest) {
        nearest = distance;
        distance *= 100;
        this.acceleration.x += ((lLoc.x-location.x)/(distance));
        this.acceleration.y += ((lLoc.y-location.y)/(distance));
//      }
    }
  }
}

class ParticleSystem {
  ArrayList<Particle> particles;

  ParticleSystem() {
    particles = new ArrayList<Particle>();
  }

  void addParticle() {
    particles.add(new Particle(new PVector(random(width*2/5,width*3/5),random(height*4/9,height*5/9))));
  }
  
  ArrayList<Particle> getParticles() {
    return particles;
  }
  
  int size() {
    return particles.size();
  }
  
  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}
