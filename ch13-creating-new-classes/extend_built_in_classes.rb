class Array
  def my_shuffle ()
    new_array = []
    self.length.times do
      new_array << self.delete(self.sample)
    end

    return new_array
  end
end
puts (["1","2","3","4","5","6","7","8","9","10"]).my_shuffle
