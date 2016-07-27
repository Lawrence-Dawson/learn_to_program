def dictionary_sort(list)
  repeat list, []
end
  def repeat unsorted, sorted
      if unsorted.length <=0
        return sorted
    end
    min = unsorted.pop
    still_unsorted = []

    unsorted.each do |checking|
    	if checking.downcase < min.downcase
    		still_unsorted.push min
    		min = checking
    	else
    		still_unsorted.push checking
    	end
    end

    sorted.push min

    repeat(still_unsorted, sorted)

  end

  puts dictionary_sort(["z","V","c","a"])



end
