# Simple-Raylib-Makefile
### A simple Makefile that incorporates Raylib on OS: Windows &amp;&amp; Platform: Desktop

The default Makefiles included with Raylib can be long and complicated because they were built to cover many operating systems and situations. For example, the 4coder Makefile https://github.com/raysan5/raylib/blob/master/projects/4coder/Makefile is 363 SLOC. This Makefile is **38 SLOC** ..that is a 10x reduction.

The goal of this Makefile is to provide someone using a **Windows Desktop** Machine who has just compiled Raylib and wants to incorporate it into their project a quick and easy way to do so.

This Makefile was built with the purpose of being easily readable and quickly changable to your configuration.

### What you need to do:
1. Git clone Raylib https://github.com/raysan5/raylib.git
2. Compile Raylib and Build the Raylib Library: https://github.com/raysan5/raylib/wiki/Working-on-Windows 
3. Change RAYLIB_PATH below to point to your top level raylib directory

**Note: By default, the Makefile only looks for a "main.c" file. As your project expands and you add files or directories change, you MUST update the OBJS file accordingly. It is highly recommended to incorporate a wildcard type function to achieve this. 
