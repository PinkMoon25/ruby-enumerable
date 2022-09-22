module MyEnumerable
  def all?(&block)
    each do |element|
      return false if block.call(element) == false
    end
    true
  end
end
