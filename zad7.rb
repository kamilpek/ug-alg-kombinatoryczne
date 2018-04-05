class Integer
  def partitions(n = self, max = self)
    return [[]] if n == 0
    [max, n].min.downto(1).flat_map do |i|
      partitions(n-i, i).collect{|j| [i, *j]}
    end
  end
end

p 6.partitions
