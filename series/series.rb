class Series
  def initialize str
    @str = str.chars
  end

  def slices(num)
    raise ArgumentError if num > @str.length
    @str.each_cons(num).map(&:join)
  end
end
