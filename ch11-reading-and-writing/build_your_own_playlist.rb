Dir.chdir'/Users/lawrence/documents/NewPlaylist/'

def shuffle(list)
  new_array = []
  list.length.times do
    new_array << list.delete(list.sample)
  end

  return new_array
end

track_names = shuffle(Dir['/Users/lawrence/documents/music/**/*.mp3'])


puts "What would you like to call this playlist?"
playlist_name = gets.chomp


if track_names == []
  puts "No files found in search directory"
  exit
end

puts
print "Creating #{playlist_name} playlist, comprising of #{track_names.length} files"
puts

#if File.exist? playlist_name
#  puts
#  puts "Error a playlist by that name ALREADY exists"
#  puts
#  exit
#end

  File.open "#{playlist_name}" + ".m3u", "w" do |f|
    track_names.each do |song|
      print "."
      f.write song+"\n"
  end

puts

end

puts "Creation of #{playlist_name} playlist was successful!"
