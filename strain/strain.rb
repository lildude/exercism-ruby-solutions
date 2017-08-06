class Array
  def keep(&block)
    select(&block)
  end

  def discard(&block)
    reject(&block)
  end
end
