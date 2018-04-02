class Array
  def power_set
    return [[]] if empty?()
    f = pop()
    recur = power_set
    recur + recur.collect {|i| [f] + i }
  end
end

p [1,2,3,4].power_set
