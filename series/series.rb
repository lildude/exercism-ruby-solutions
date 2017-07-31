class Series
  def initialize str
    @str = str
  end

  def slices(num)
    raise ArgumentError if num > @str.length
    @str.split(//).each_with_index.each_with_object([]) do |(_, i), k|
      r = @str[i..i+num-1]
      k << r if r.length == num
    end
  end
end
