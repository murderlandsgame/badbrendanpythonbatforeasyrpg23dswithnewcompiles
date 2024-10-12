Set /P gamespath="DRAG YOUR GAMES FOLDER WITH RPGMAKER2000/2003 GAMES IN SUBFOLDERS AND ENSURE THAT YOU HAVE PROPER 3DS FOLDERS INSIDE EACH GAME'S FOLDER"
Set /P targetpath="ENTER AN ABSOLUTE PATH IN QUOTATIONS TO YOUR DESIRED WORKING/OUTPUT FOLDER"
Start /B git clone --recursive https://github.com/msikma/Easy3DS.git %targetpath%
pause
Start /B git clone --recursive https://github.com/EasyRPG/Player %targetpath%\Player
Start /B git clone --recursive https://github.com/EasyRPG/liblcf %targetpath%\Player\lib\liblcf
Start git clone --recursive https://github.com/libexpat/libexpat.git %targetpath%\Player\lib\expat
copy expat2.sh %targetpath%
copy lcf2.sh %targetpath%
copy expat.sh %targetpath%
copy lcf.sh %targetpath%
copy convert-noexpat-nolcf.sh %targetpath%
copy lib %targetpath%\Player
copy thingthang.txt %targetpath%\Player\CMakeLists.txt
git clone --recursive https://github.com/benhoyt/inih.git %targetpath%\Player\lib\inih
cd %targetpath%
pause
for /F "tokens=1,3 delims=\ " %%a in (%targetpath%) do (
   %%a
)
cd %targetpath%
pause
Start sh convert-noexpat-nolcf.sh %gamespath%
pause