Umbrella umbrella;
Rain rain;

void setup(){
  
 size(600, 400); 
 umbrella = new Umbrella();
 rain = new Rain();
 
 rain.setDrop(0f, 10, width/2, height/2);

}

void draw(){
  background(255);
  
  umbrella.drawUmbrella();
  rain.drawDrop();
  rain.makeDropFall();
}
