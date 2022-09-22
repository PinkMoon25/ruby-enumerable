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

# test cases
# Create our list
# list = MyList.new(1, 2, 3, 4)
# <MyList: @list=[1, 2, 3, 4]>

# Test #all?
# puts(list.all? { |e| e < 5 })
# puts(list.all? { |e| e > 5 })
# puts(list.all? { |e| e.even? })

# Test #any?
# puts(list.any? { |e| e == 2 })
# puts(list.any? { |e| e == 5 })

# Test #filter
# puts(list.filter { |e| e.even? })
