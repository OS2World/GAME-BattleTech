# IBM Developer's Workframe/2 Make File Creation run at 21:07:40 on 08/11/93

# Make File Creation run in directory:
#   D:\GAME\VOL1N11;

.SUFFIXES:

.SUFFIXES: .c .cpp .cxx .rc

ALL: BTECH2.EXE \
     main.RES

BTECH2.EXE:  \
  bitmap.OBJ \
  dialog.res \
  files.OBJ \
  hexes.OBJ \
  main.OBJ \
  main.RES \
  map.OBJ \
  mech.OBJ \
  menu.OBJ \
  target.OBJ \
  target0.OBJ \
  terrain.OBJ \
  window.OBJ \
  RELEASE.MAK
   ICC.EXE @<<
 /B" /de /pmtype:pm /nologo /bat"
 /Fe"btech2.exe" 
bitmap.OBJ 
files.OBJ 
hexes.OBJ 
main.OBJ 
map.OBJ 
mech.OBJ 
menu.OBJ 
target.OBJ 
target0.OBJ 
terrain.OBJ 
window.OBJ
<<
   RC dialog.res BTECH2.EXE
   RC main.RES BTECH2.EXE

{.}.rc.res:
   RC -r .\$*.RC

{.}.c.obj:
   ICC.EXE /Tdp /Q /Fi /Si /V"Volume 1, Number 11" /Ti /Gs /Gx /Ft- /C   .\$*.c

{.}.cpp.obj:
   ICC.EXE /Tdp /Q /Fi /Si /V"Volume 1, Number 11" /Ti /Gs /Gx /Ft- /C   .\$*.cpp

{.}.cxx.obj:
   ICC.EXE /Tdp /Q /Fi /Si /V"Volume 1, Number 11" /Ti /Gs /Gx /Ft- /C   .\$*.cxx

!include RELEASE.DEP
