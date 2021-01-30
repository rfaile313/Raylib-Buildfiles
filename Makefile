# Author: Rudy Faile (@rfaile313)
# Description: A simple Makefile that incorporates
# Raylib on OS: Windows && Platform: Desktop
# License: MIT

# What you need to do:
# 1. Git clone Raylib https://github.com/raysan5/raylib.git
# 2. Compile Raylib and generate the static library "libraylib.a"
# 3. Copy libraylib.a and the header only file, raylib.h to your project's directory and point to them with the Makefile below.
# 4. Run "make" in your project's dir to compile / "make clean" clears the executable & any object files

# Define default make program (on windows this is usually mingw32-make)
MAKE = mingw32-make

# Protect clean
.PHONY: all clean

# OUTPUT determines the name of the executable
OUTPUT = mygame.exe

# Local path to Raylib header-only file
# Ensure "raylib.h" is in the directory you list below
INCLUDE_PATH = include/

# Local Path to Raylib static compiled library
# Ensure "libraylib.a" is in the directory you list below
LIBRARY_PATH = lib/

# Source file(s)
# For a single file or unity build, rename source to your entry point (often main.c)
# To include all C files, use the wildcard below:
# SOURCE = $( wildcard *.c **/*.c )
SOURCE = main.c

# Compiler Flags
CFLAGS += -O1 -Wall -std=c99 -Wno-missing-braces
# Compiler flags for reference
#  -O1                  defines optimization level
#  -g                   include debug information on compilation
#  -Wall                turns on most, but not all, compiler warnings
#  -std=c99             defines C language mode (standard C from 1999 revision)
#  -Wno-missing-braces  ignore invalid warning (GCC bug 53119)

# Library Flags
LFLAGS = -lraylib -lopengl32 -lgdi32 -lwinmm
# Library Flags for Reference:
# ---- Required ----
# -lraylib     Raylib static compiled library, must be in LIBRARY_PATH
# -lopengl32   OpenGL - comes with MinGW
# -lgdi32      Graphics library - comes with MinGW
# -lwinmm      Import library for windows system file winmm.dll - comes with MinGW
# ---- Options ----
# -Wl,-subsystem,windows <--- Add these to hide the cmd console when launching game window

# Compiler (gcc == MinGW)
COMPILER = gcc

all:
	$(COMPILER) $(SOURCE) -o $(OUTPUT) $(CFLAGS) -I $(INCLUDE_PATH) -L $(LIBRARY_PATH) $(LFLAGS)

clean:
	del *.o *.exe /s
	@echo Cleaning done
