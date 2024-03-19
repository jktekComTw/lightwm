# LightWM
### Minimalist Tiling Window Manager For MS-Windows

## Building

You can build using the "x64 Native Tools Command Prompt for VS 2022" that comes with Microsoft Visual Studio Build Tools:

In the console you can run nmake to build according to the Makefile

```nmake```

I haven't tried building with a different VS version or building x86, but that may work as well.

## Todo

- Add keyboard navigation
- Add workspaces

### modified by carlos ma 3/19/2024

1. install msys64 first
2. add mysys64's usr/bin folder to windows PATH variable
3. activate the mingw64.exe
4. execute pacman -Syu, pacman -Su and pacman -S base-devel gcc vim make
5. then, execute make in the root folder of this project

