#include <stdlib.h>
#include <stdio.h>

int main(void) {

	const char* cmd = "x86_64-w64-mingw32-gcc main.c -o SiegiusFanPort.exe ./lib/raylib/src/libraylib.a -lm -lwinmm -lgdi32 -lopengl32 -mwindows";
	printf("%s\n", cmd);
	system(cmd);	
}
