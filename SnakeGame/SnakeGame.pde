Snake s;
PlayerControl control;
PFont myFont;
int screen = 0;
boolean startGame;
int score = 0;
int finalScore;
Food food;
Food food2;
Food psn;
Antidote ant;
boolean poisoned = false;
Timer timer;
Screen scr;

void setup() {
  size(600, 600);
  myFont = createFont("OCR A Std", 32);
  textFont(myFont);
  s = new Snake();
  food = new Food();
  food2 = new Food();
  psn = new Food();
  ant = new Antidote();
  control = new PlayerControl(s);
  timer = new Timer(s);
  scr = new Screen(screen);
  frameRate(10); 
  food.pickLocation();
  food2.pickLocation();
  psn.pickLocation();
  ant.pickLocation();  
}

void draw() {
  
  if (screen == 0) {
    scr.initScreen();
  } else if (screen == 1) {
    startGame = true;   
  } else if (screen == 2) {
    scr.gameOverScreen();
  }
  if (startGame == true) {
    background(0, 150, 200);
    food.showFood(); 
    food2.showFood();
    if (poisoned == false) {
      timer.reset();
      psn.showFood();
    }  
    if (s.eat(food.ret())) {
      food.pickLocation();
    }
    if (s.eat(food2.ret())) {
      food2.pickLocation();
    }
    if (s.poison(psn.ret())) {
      timer.showTimer();
      ant.showFood();
    }
    if (s.heal(ant.ret()) && poisoned) {
      poisoned = false;
      ant.pickLocation();
      psn.pickLocation();
    }
    control.keyPressed();
    s.death();
    s.update();
    s.show();
    
  }
}

public void keyPressed() {
  if (keyCode == ENTER) {
    if (screen == 0) {
      screen = 1;        
    }
    if (screen == 2) {
      screen = 1;
      timer.reset();
    }
  }  
}

 


  