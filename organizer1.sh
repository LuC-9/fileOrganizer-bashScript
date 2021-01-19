#!/bin/sh

vid="*.mp4 *.mkv *.flv *.avi *.webm *.wmv"
music="*.mp3 *.aac *.wma"
doc="*.htm* *.php *.txt *.css *.doc* *.pdf *.PDF *.ppt* *.js"
img="*.jp*g *.JPG *.png *.gif"
comp="*.zip *.tar.gz"
progrm="*.deb *.exe *.run"
echo "Are you sure you want to reorganize your files?"
echo "Enter 'Y' or 'y' to continue, anything else to cancel:"

read ANSWER
echo "You answered $ANSWER"



if [ $ANSWER == "Y" ] || [ $ANSWER == "y" ]; then
echo "Organizing files!"

touch organize.log
echo "Starting to organize..." > organize.log

mkdir movies
for filename in $vid
do
  mv $filename movies
  echo "$filename --> movies" >> organize.log
done

  
mkdir songs
for filename in $music
do
  mv $filename songs
  echo "$filename --> songs" >> organize.log
done
  
   
mkdir documents  
for filename in $doc
do
  mv $filename documents
  echo "$filename --> documents" >> organize.log
done

mkdir images  
for filename in $img
do
  mv $filename images
  echo "$filename --> images" >> organize.log
done

mkdir Compressed  
for filename in $comp
do
  mv $filename Compressed
  echo "$filename --> compressed" >> organize.log
done
  
mkdir programs  
for filename in $progrm
do
  mv $filename programs
  echo "$filename --> programs" >> organize.log
done


echo "Finished organizing files!"
echo "Have a nice day!"

else
  echo "User cancelled the process."
  exit
fi
  
exit
