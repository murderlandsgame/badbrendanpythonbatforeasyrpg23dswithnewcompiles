Set /P gamespath="DRAG YOUR GAMES FOLDER WITH RPGMAKER2000/2003 GAMES IN SUBFOLDERS AND ENSURE THAT YOU HAVE PROPER 3DS FOLDERS INSIDE EACH GAME'S FOLDER"
Set /P targetpath="ENTER AN ABSOLUTE PATH IN QUOTATIONS TO YOUR DESIRED WORKING/OUTPUT FOLDER"
git clone --recursive https://github.com/msikma/Easy3DS.git %targetpath%
git clone --recursive https://github.com/benhoyt/inih.git %targetpath%\inih
git clone --recursive https://github.com/libexpat/libexpat.git %targetpath%\expat
git clone --recursive https://github.com/EasyRPG/liblcf %targetpath%\liblcf
git clone --recursive https://github.com/EasyRPG/Player %targetpath%\Player
copy inih2.sh %targetpath%
copy expat2.sh %targetpath%
copy lcf2.sh %targetpath%
copy inih.sh %targetpath%
copy expat.sh %targetpath%
copy lcf.sh %targetpath%
copy convert.sh %targetpath%
copy thingthang.txt %targetpath%\Player\CMakeLists.txt
copy buildconf.sh %targetpath%\inih
cd %targetpath%
for /F "tokens=1,3 delims=\ " %%a in (%targetpath%) do (
   %%a
)
cd %targetpath%
sh convert.sh %gamespath%
pause