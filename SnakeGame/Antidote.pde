class Antidote extends Food {
  PVector antidote;

  Antidote() {
  }
  
  void showFood() {
    fill(20, 5, 100);
    rect(food.x, food.y, 18, 18);    
  }  
}