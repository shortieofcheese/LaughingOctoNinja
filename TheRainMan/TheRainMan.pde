//DO NOT DETELE THIS
color lightBlue = #0998D5;
Man man;
Umbrella umbrella;
Rain[] rain = new Rain [630];
int auxPosition = 0;
int auxJumper = 0;  
float health;
Guy guy;

// Set stuff here
int umbrellaSize = 50;
int dropSize = 10;
float dropSpeed = 6;


<<<<<<< HEAD
void setup() {

  size(600, 400);

  umbrella = new Umbrella();
  umbrella.setSize(20);

  for (int i = 0; i < rain.length; i++) {
    =======
      void setup() {

      size(600, 400);
      man = new Man();
      umbrella = new Umbrella();
      umbrella.setSize(umbrellaSize);

      for (int i = 0; i < rain.length; i++) {
        >>>>>>> origin/master
          rain[i] = new Rain();
        if (i % 30 == 0) {
          auxPosition++;
          auxJumper = 0;
        } else {
          auxJumper++;
        }    
        rain[i].setDrop((auxJumper * 20) + dropSize, (auxPosition*20) - height, dropSize, dropSpeed);
        <<<<<<< HEAD
      }
      guy = new Guy();
    }

    void draw() {
      background(255);
      float hp = map (health, 0, 10, width, 0);
      fill(0, 255, 0);
      rect(hp, 0, width, 10);
      health = 1;


      umbrella.drawUmbrella();

      for (int j = 0; j < rain.length; j++) {
        =======
      }

      man.setSize(30);
    }

    void draw() {
      background(255);  

      for (int j = 0; j < rain.length; j++) {
        >>>>>>> origin/master
          rain[j].drawDrop();
        rain[j].repeatDrop();
        rain[j].verifyCollision(umbrellaSize);
      }
      <<<<<<< HEAD
        guy.Update();
      =======

        man.drawMan();

      umbrella.drawUmbrella();

      drawHealthBar();
    }

    void drawHealthBar() {

      float hp = map (health, 0, 10, width, 0);
      fill(0, 255, 0);
      rect(hp, 0, width, 10);
      health = 1;

      >>>>>>> origin/master
    }

