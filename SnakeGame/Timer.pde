class Timer {
  Snake s;
  int time = 10;
  int a = 1;
  
  Timer(Snake s) {
    this.s = s;
  }
  
  void showTimer() {
    textAlign(RIGHT);
    fill(255, 0, 0);
    textSize(30); 
    countdown();    
    text(time, 550, height - 50);
  }   
  
  void countdown() {
    if (a == 10) {
      time--;
      a = 1;
    }  
    else {
      a++;  
    }
    if (time == 0) {
      s.len = 0;
      s.tail.clear();
      poisoned = false;
      finalScore = score;
      score = 0;
      screen = 2;
      startGame = false;
    } 
  }
  
  void reset() {
    time = 10;  
  }  
}  