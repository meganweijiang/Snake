class Snake {
  float x = 0;
  float y = 0;
  float xvel = 1;
  float yvel = 0;
  int size = 20;
  int len = 0;
  ArrayList<PVector> tail = new ArrayList<PVector>();    
    
  Snake() {
  }
  
  boolean eat(PVector pos) {
    boolean eaten = false;
    float d = dist(x, y, pos.x, pos.y);
    if (d < 1) {
      len++;
      eaten = true;
      score++;
    }
    return eaten;
  }
  
  boolean poison(PVector pos) {
    float d = dist(x, y, pos.x, pos.y);
    if (d < 1) {
      poisoned = true;
    }
    return poisoned;
  }
  
  boolean heal(PVector pos) {
    boolean healed = false;
    float d = dist(x, y, pos.x, pos.y);
    if (d < 1) {
      healed = true;
    }
    return healed;
  }  
  
  void direction(float x, float y) {
    xvel = x;
    yvel = y;
  }  
  
  void update() {
    if (len > 0) {
      if (len == tail.size() && !tail.isEmpty()) {
        tail.remove(0);
      }
      tail.add(new PVector(x, y));
    }
    
    x += xvel * size;
    y += yvel * size;
    
    x = constrain(x, 0, width-size);
    y = constrain(y, 0, height-size);
  }  
  
  public void death() {
    for (int i = 0; i < tail.size(); i++) {
      PVector pos = tail.get(i);
      float d = dist(x, y, pos.x, pos.y);
      if (d < 1) {
        len = 0;
        tail.clear();    
        screen = 2;
        startGame = false;
        timer.reset();
        poisoned = false;
        finalScore = score;
        score = 0;        
      }
    }    
  }
  
  void show() {
    fill(0, 80, 20);
    for (int i = 0; i < tail.size(); i++) {
      rect(tail.get(i).x, tail.get(i).y, size, size);
    }
    noStroke();
    rect(x, y, size, size);
    scr.printScore();
  }     
}