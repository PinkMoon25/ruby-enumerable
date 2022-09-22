require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*args)
    @list = args
  end

  def each
    @list.each { |item| yield item if block_given? }
  end
end

list = MyList.new(1, 2, 3, 4)
list.each { |a| puts(a) }
puts(list.all? { |e| e > 5 })
