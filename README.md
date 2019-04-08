# omxYouTube
This script allows you to play 2 youtube files at the same time. This way you can play HD (1080p) YouTube videos wihtout any lag on your raspberry pi. 

You will need omxplayer and youtube-dl

You can play HD YouTube with terminal player [omxplayer][1]. 

    omxplayer video.file

You will need also [youtube-dl][2] for generating youtube url of the requested video by providing the ID of the video. The `-g` flag stands for *get url*

    omxplayer `youtube-dl -g https://www.youtube.com/watch?v=<Video ID>`

As for now by default it doesn't provide with the link for the best quality. You can set your quality by providing the -f flag and the number of the quality. To get all available quality use -F (files) flag 

    youtube-dl -F https://www.youtube.com/watch?v=<Video ID>

This will list all files related to the video. Some of the video files does not include an audio. Usually the 1080p video files are without sound, so you will need to play them both at the same time.

Download the sh script somewhere, make it executuble and run it with **bash**

    bash play.sh
    
The script will ask you for the file number, it can be 1 number (for 1 video), 2 numbers (for 1 video and 1 audo), **best** for reccomended 1 video playing, and **?** to get all the files numbers.

You can also play the video instantly wihtout parameters like this:

    bash play.sh <video id> <hd or best>

for example: 

    bash playlist.sh Cg-h8TwQCgs hd

  [1]: https://www.raspberrypi.org/documentation/raspbian/applications/omxplayer.md
  [2]: https://ytdl-org.github.io/youtube-dl/index.html
