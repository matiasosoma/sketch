//Distance2d
float max_distance;
//Translate. 
float a, b;
float dim = 50;
//Translate. 
float x;
float y;
void setup() {
fullScreen();
  noStroke();
   max_distance = dist(0, 0, width, height);
}
// Interpolate
void draw() { 
  background(236, 200, 255);
  for(int i = 0; i <= width; i += 20) {
    for(int j = 0; j <= height; j += 20) {
      float size = dist(mouseX, mouseY, i, j);
      size = size/max_distance * 66;
      ellipse(i, j, size, size);
    }
  }
  // lerp() calculates a number between two numbers at a specific increment. 
  // The amt parameter is the amount to interpolate between the two values 
  // where 0.0 equal to the first point, 0.1 is very near the first point, 0.5 
  // is half-way in between, etc.  
  // Here we are moving 5% of the way to the mouse location each frame
  x = lerp(x, mouseX, 0.05);
  y = lerp(y, mouseY, 0.05);
  fill( random(255), random(255), random(255), random(255)); 
  noStroke();
  ellipse(x, y, 66, 66);

// Translate. 
translate(mouseX, mouseY);
  fill(255);
  rect(-dim/2, -dim/2, dim, dim);
  //
}
