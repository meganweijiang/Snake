class Food{ 
  int cols = width/20;
  int rows = height/20;
  PVector food;
  
  Food(){   
  }
  
  void pickLocation() {
    food = new PVector(floor(random(cols)), floor(random(rows))); 
    food.mult(20);  
  }


  void showFood() {
    fill(188, 69, 13);
    rect(food.x, food.y, 15, 15);    
  }

  PVector ret(){
    return food; 
  }
 
}