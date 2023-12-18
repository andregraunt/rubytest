
require 'open3'

print "Введите ссылку на видео: "
video_url = gets.chomp

print "Выберите качество (1080, 720, 480, 360): "
quality = gets.chomp

command = "yt-dlp -f 'bestvideo[ext=mp4][height<=#{quality}]+bestaudio[ext=m4a]/best[ext=mp4]/best' --output '%(title)s.%(ext)s' #{video_url}"

Open3.popen3(command) do |stdin, stdout, stderr, wait_thr|
  puts stdout.read
end