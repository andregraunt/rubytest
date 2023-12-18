
require 'open-uri'
require 'json'

puts "Введите ссылку на видео на YouTube, которое вы хотите загрузить: "
url = gets.chomp

# Get the video ID from the URL
video_id = URI.parse(url).path.split('/').last

# Get the video information from YouTube
video_info = JSON.parse(open("https://www.googleapis.com/youtube/v3/videos?part=snippet,contentDetails&id=#{video_id}").read)

# Get the video title
video_title = video_info['items'][0]['snippet']['title']

# Get the video thumbnail URL
video_thumbnail_url = video_info['items'][0]['snippet']['thumbnails']['default']['url']

# Get the video file size
video_file_size = video_info['items'][0]['contentDetails']['fileSize']

# Create a directory for the video
Dir.mkdir('videos') unless Dir.exist?('videos')

# Choose the video quality
puts "Какого качества видео вы хотите загрузить? 720p или 1080p?"
video_quality = gets.chomp

# Download the video
open("videos/#{video_title}.#{video_quality}.mp4", 'wb') do |file|
  file.write(open(video_info['items'][0]['contentDetails']['url'] + "?quality=#{video_quality}").read)
end

# Print a message
puts "Video downloaded successfully!"
