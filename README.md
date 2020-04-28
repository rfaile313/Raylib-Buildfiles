# Simple-Raylib-Makefile
### A simple Makefile that incorporates Raylib on OS: Windows &amp;&amp; Platform: Desktop

The default Makefiles included with Raylib can be long and complicated because they were built to cover many operating systems and situations. For example, the 4coder Makefile https://github.com/raysan5/raylib/blob/master/projects/4coder/Makefile is 363 SLOC. This Makefile is **40 SLOC** ..that is a 10x reduction.

The goal of this Makefile is to provide someone using a **Windows Desktop** Machine who has just compiled Raylib and wants to incorporate it into their project a quick and simple way to do so. This is IDE-agnostic, you run it from the command line.

This Makefile was built with the purpose of being easily readable and quickly changable to your configuration.

### What you need to do to use this:
#### Compile Raylib
1. Git clone Raylib https://github.com/raysan5/raylib.git
2. Compile Raylib and Build the Raylib Library: https://github.com/raysan5/raylib/wiki/Working-on-Windows 

#### Build your new project
4. Make a new directory somewhere and create a `main.c` file. Create a simple ["raylib hello world"](https://gist.github.com/rfaile313/e44859c93ede2ce2a551b90d840e144b) style template including `raylib.h` in your `#include`
5. Put this Makefile in your new directory. The two files in the folder should be `main.c` and `Makefile`
6. Change the RAYLIB_PATH variable in this Makefile to point to your top level raylib directory (should look like this: https://github.com/raysan5/raylib.git)
7. Rename your PROJECT_NAME variable in the Makefile
8. Navigate to your new directory using Powershell or CMD
9. Type `mingw32-make`
10. This will compile the program and create an executable with the same name as your PROJECT_NAME

**Note: By default, the Makefile only looks for a "main.c" file. As your project expands and you add files or directories change, you MUST update the OBJS variable accordingly. It is highly recommended to incorporate a wildcard type function to achieve this. Example:

`OBJS = $( wildcard *.c **/*.c )`

Any questions? Feel free to [contact me](https://rudyfaile.com/contact/)

All credit to @raysan5 for his awesome C game library. Check out https://www.raylib.com/ !
