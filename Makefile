AUDIO := "in.mp3"
OUT := "out.mp4"
COVER := "cover-00.mp4"

bake-video:
	ffmpeg -stream_loop -1 -i $(COVER) -i $(AUDIO) -shortest -map 0:v:0 -map 1:a:0 -y $(OUT)
