class Board {
  int cellSize = 50;
  int posX, posY;

  Board() {
    posX = 50;
    posY = 50;
  }

  void show() {
    fill(0, 255, 0);
    
    for (int ix = 0; ix < 8; ix++) {
      for (int iy = 0; iy < 8; iy++) {
        rect(posX + ix * cellSize, posY + iy * cellSize, cellSize, cellSize);
      }
    }
  }
}
