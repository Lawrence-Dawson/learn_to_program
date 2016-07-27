def arr(list, new_array = nil)

  return new_array if list.size <= 0
  if new_array == nil
    new_array = []
  end
  min = list.min
  new_array << min
  list.delete(min)

  arr(list, new_array)

end

puts arr(["z","v","c","a"])
