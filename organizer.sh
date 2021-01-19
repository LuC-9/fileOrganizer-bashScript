#!/bin/sh

folders='Compressed Documents Images Music Programs Videos'
comp="*.zip *.tar.gz"
doc="*.htm* *.php *.txt *.css *.doc* *.pdf *.PDF *.ppt* *.js"
img="*.jp*g *.JPG *.png *.gif"
music="*.mp3 *.aac *.wma *.wav"
progrm="*.deb *.exe *.run"
vid="*.mp4 *.mkv *.flv *.avi *.webm *.wmv"

for folder in $folders
do
	if [ $folder == 'Compressed' ]
	then
		mkdir -p $folder
		mv $comp $folder

	elif [ $folder == 'Documents' ]
	then
		mkdir -p $folder
		mv $doc $folder

	elif [ $folder == 'Images' ]
	then
		mkdir -p $folder
		mv $img $folder 

	elif [ $folder == 'Music' ]
	then
		mkdir -p $folder
		mv $music $folder 

	elif [ $folder == 'Programs' ]
	then
		mkdir -p $folder
		mv $progrm $folder 
	
	elif [ $folder == 'Videos' ]
	then
		mkdir -p $folder
		mv $vid $folder 

	else
		echo "Problem creating folder.."
	fi

done

echo "Successfully organized.."
