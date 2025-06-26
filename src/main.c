#include <stdio.h>
#include "lib/raylib/src/raylib.h"



int main(void) {
 const int screenWidth = 700;
 const int screenHeight = 400;
 SetTraceLogLevel(LOG_NONE);

 InitWindow(screenWidth, screenHeight, "SiegiusFanPort");

 SetWindowState(FLAG_VSYNC_HINT | FLAG_WINDOW_RESIZABLE);

 SetExitKey(KEY_NULL);

 bool shouldClose = false;

 while(!(WindowShouldClose() || shouldClose)) {
  BeginDrawing();
  ClearBackground(GRAY);
  EndDrawing();
 }
 
 
 return 0;
}
