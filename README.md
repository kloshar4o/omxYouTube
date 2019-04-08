# omxYouTube
This script allows you to play 2 YouTube files at the same time. This way you can play HD (1080p) YouTube videos without any lag on your raspberry pi. 

You will need omxplayer and youtube-dl

You can play HD YouTube with terminal player [omxplayer][1]. 

    omxplayer video.file

You will need also [youtube-dl][2] for generating YouTube URL of the requested video by providing the ID of the video. The `-g` flag stands for *get url*

    omxplayer `youtube-dl -g https://www.youtube.com/watch?v=<Video ID>`

As for now by default it doesn't provide with the link for the best quality. You can set your quality by providing the -f flag and the number of the quality. To get all available quality use -F (files) flag 

    youtube-dl -F https://www.youtube.com/watch?v=<Video ID>

This will list all files related to the video. Some of the video files does not include an audio. Usually the 1080p video files are without sound, so you will need to play them both at the same time.

Download the SH script somewhere, make it executable and run it with **bash**

    bash play.sh
    
The script will ask you for the file number, it can be 1 number (for 1 video), 2 numbers (for 1 video and 1 audo), **best** for reccomended 1 video playing, and **?** to get all the files numbers. By defoult it will choose **137 140** which means:

    137          mp4        1920x1080  1080p 4346k , avc1.640028, 25fps, video only
    140          m4a        audio only DASH audio  138k , m4a_dash container, mp4a.40.2@128k

You can also play the video instantly without  parameters like this:

    bash play.sh <video id> <hd or best>

for example: 

    bash play.sh 0jDq_KAJARU hd

  [1]: https://www.raspberrypi.org/documentation/raspbian/applications/omxplayer.md
  [2]: https://ytdl-org.github.io/youtube-dl/index.html
