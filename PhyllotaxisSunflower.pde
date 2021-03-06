void setup(){
  
  size(1000,1000,P2D);
  background(0);
  stroke(255);
  noFill();  
}

//The radius from zero (The distance from the center)
float radius = 0;
//The rotation in DEGREES
float rotation = 137.5;
//The diameter of the circles
float diameter = 5;


void draw(){
  
  //Exit condition. We stop the pattern when we reach the edge of the window.
  if(radius < height){
    
    //We move (translate) the zero of the X and Y axis to the middle of the screen
    //So the grid has it's zero in the Center (x=0 and y=0 is in the CENTER now)
    translate(width/2, height/2);
    
    //Now we rotate the grid around oru new center
    //IMPORTANT!! The rotate() functions expects RADIANS for a value - NOT DEFREES.
    //So we convert our previously defined rotation values to radians on the fly! :)
    rotate(radians(rotation));
    
    //Now, we draw the ellipse
    ellipse(0,radius,diameter,diameter);
    
    //Here, things get set up for the next turn.
    //...the radius gets bigger...
    radius += 0.5;
    //...and we add more rotation...
    rotation += 137.5;

  }
  
}
