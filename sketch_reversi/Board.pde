class Board {
  int posX, posY;
  int cellSize = 50;
  int[][] cells = {
                    {0, 0, 0, 0, 0, 0, 0, 0},
                    {0, 0, 0, 0, 0, 0, 0, 0},
                    {0, 0, 0, 0, 0, 0, 0, 0},
                    {0, 0, 0, 2, 1, 0, 0, 0},
                    {0, 0, 0, 1, 2, 0, 0, 0},
                    {0, 0, 0, 0, 0, 0, 0, 0},
                    {0, 0, 0, 0, 0, 0, 0, 0},
                    {0, 0, 0, 0, 0, 0, 0, 0}
                  };

  Board() {
    posX = 50;
    posY = 50;
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
  
  void put(int mx, int my) {
    mx -= posX;
    my -= posY;
    
    for (int ix = 0; ix < 8; ix++) {
      for (int iy = 0; iy < 8; iy++) {
        if (mx > ix * cellSize && mx < (ix + 1) * cellSize &&
            my > iy * cellSize && my < (iy + 1) * cellSize) {
          cells[ix][iy] += 1;
          cells[ix][iy] %= 3;
        }
      }
    }
  }
  
}
