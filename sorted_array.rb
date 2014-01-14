class SortedArray
  
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = []
    input_arr.each do |x|
      self.add(x)
    end
  end


  def add(new_ele)
    @internal_arr.insert(first_larger_index(new_ele), new_ele)
  end


  def size
    @internal_arr.size
  end


  def [](index)
    @internal_arr[index]
  end


  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)
    
    if start_ind >= end_ind
      return 0
    end
    
    if (end_ind - start_ind) == 1
      if target < @internal_arr[start_ind]
        return start_ind
      else
        return end_ind
      end
    end

    mid_ind = (start_ind + end_ind) / 2

    if target < @internal_arr[mid_ind]
      return first_larger_index(target, start_ind, mid_ind)
    elsif target >= @internal_arr[mid_ind]
      return first_larger_index(target, mid_ind, end_ind)
    end
  end


  def index(target)
    return @internal_arr.index(target)
  end

end
