Dir.chdir'/users/lawrence/documents/NewPicsFolder'

pic_names = Dir['/users/lawrence/documents/Pictures/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp


if pic_names == []
  puts 'No files found in search directory'
  exit
end

puts
print "Downloading #{pic_names.length} files:   "

pic_number = 1

pic_names.each do |name|
  print '.'

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist? new_name
    puts
    puts "Error file ALREADY exists in destination folder"
    puts
    exit
  end


  File.rename name, new_name
  pic_number = pic_number + 1
end


puts
puts 'Done, mate!'
