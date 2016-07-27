def shuffle(list)
  new_array = []
  list.length.times do
    new_array << list.delete(list.sample)
  end

  return new_array
end
puts shuffle(["1","2","3","4","5","6","7","8","9","10"])
