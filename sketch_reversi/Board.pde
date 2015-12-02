class Board {
  int posX, posY;
  int cellSize = 50;
  int[][] cells;

  Board() {
    posX = 50;
    posY = 50;
    cells = new int[8][8];
    for (int ix = 0; ix < 8; ix++) {
      for (int iy = 0; iy < 8; iy++) {
        cells[ix][iy] = 0;
      }
    }
    cells[3][3] = 2;
    cells[4][3] = 1;
    cells[3][4] = 1;
    cells[4][4] = 2;
  }

  void show() {
    
    for (int ix = 0; ix < 8; ix++) {
      for (int iy = 0; iy < 8; iy++) {
        if (cells[ix][iy] == 1) {
          fill(0);
        }
        else if (cells[ix][iy] == 2) {
          fill(255);
        }
        else {
          fill(0, 255, 0);
        }
        rect(posX + ix * cellSize, posY + iy * cellSize, cellSize, cellSize);
      }
    }
  }
}
