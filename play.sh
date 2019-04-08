#!/bin/bash

if [ -z $1 ]
then
      videoID="0jDq_KAJARU"
else
      videoID=$1
fi

echo "Video link: https://www.youtube.com/watch?v=$videoID" 


echo "Video & Audio params: "
if [ -z $2 ]
then
	read -p "High quality [137 140] | Recomended [best] | Get options [??]: " params
	if [ $params = "??" ]; then
	
		echo "Getting file types"
		echo "youtube-dl -F https://www.youtube.com/watch?v=$videoID"
		youtube-dl -F https://www.youtube.com/watch?v=$videoID
		read -p "Video & Audionumber [137 140 or best]: " params	
	fi
else
	if [ $2 = "hd" ]; then
		videoParms=(137 140)
	fi
	
	if [ $2 = "best" ]; then
		videoParms=("best")
	fi
    
fi


declare -a videoParms=(${params:-137 140})

if [ ${#videoParms[@]} > 1 ]; then
	echo "This will load video and audo file in 2 separate terminals"
fi


declare -a youtubeDls=()
for i in "${!videoParms[@]}"; do
	
	echo "youtube-dl -g -f ${videoParms[$i]} https://www.youtube.com/watch?v=$videoID"
	youtubeDls+=("`youtube-dl -g -f ${videoParms[$i]} https://www.youtube.com/watch?v=$videoID`")
done

for url in "${youtubeDls[@]}"; do
	x-terminal-emulator -e omxplayer -o local $url
done


echo "Videos loaded"
