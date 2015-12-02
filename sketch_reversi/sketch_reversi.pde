// reversi sample

Board b;

void setup() {
  size(500, 500);
  
  b = new Board();
}

void draw() {
  b.show();
}

void mousePressed() {
  b.put(mouseX, mouseY);
}
