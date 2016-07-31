Dir.chdir'/Users/lawrence/documents/NewPlaylist/'

def music_shuffle filenames
  filenames = filenames.sort #sorts array
  length = filenames.length #finds array length

# Now we shuffle twice.
  2.times do
    l_index = 0 # index of next card in left pile
    r_index = length/2 # index of next card in right pile
    shuf = []
    # NOTE: If we have an odd number of "cards",
    # then the right pile will be larger.

    while shuf.length < length
      if shuf.length%2 == 0
        # take card from right pile
        shuf.push(filenames[r_index])
        r_index = r_index + 1
      else
        # take card from left pile
        shuf.push(filenames[l_index])
        l_index = l_index + 1
      end
    end

    filenames = shuf
  end
  # And cut the deck.
  arr = []
  cut = rand(length) # index of card to cut at
  idx = 0

  while idx < length
    arr.push(filenames[(idx+cut)%length])
    idx = idx + 1
  end

  arr
end

track_names = (Dir['/Users/lawrence/documents/music/**/*.mp3'])

puts "What would you like to call this playlist?"
playlist_name = gets.chomp

if track_names == []
  puts "No files found in search directory"
  exit
end

puts
print "Creating #{playlist_name} playlist, comprising of #{track_names.length} files"
puts

better_shuffle = music_shuffle (track_names)

  File.open "#{playlist_name}" + ".m3u", "w" do |f|
    better_shuffle.each do |song|
      print "."
      f.write song+"\n"
    end

puts
puts "All done, #{playlist_name} playlist has been successfully created!"
end
