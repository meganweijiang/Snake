class Screen {
  int screen;
  
  Screen(int screen) {
    this.screen = screen;
  }  
    
  void initScreen() {
    background(0);
    textAlign(CENTER);
    textSize(30);
    text("Snake", height/2, width/3);
    textSize(15);
    text("Eat food to grow bigger but \nwatch out for the poisoned food! \nIf you get sick, \nyou must find an antidote \nbefore you die.", height/2, width/3 + 50);
    textSize(20);
    text("Press Enter to Start", height/2, width - 150);
  }
    
  void gameOverScreen() {
    background(0);
    textAlign(CENTER);
    fill(255);
    textSize(30);
    text("Game Over", height/2, width/2 - 100);
    text("Your score was " + str(finalScore), height/2, width/2 - 50);
    textSize(15);
    text("Press Enter to Restart", height/2, width/2 + 10);
  }
    
  void printScore(){
    textAlign(CENTER);
    fill(0);
    textSize(30); 
    text(score, height/2, 50);
  }  
}