class MyList 
    def initialize(*args)
        @list = args
    end
    def each
        @list.each { |item| yield item if block_given? }
    end
end

list = MyList.new(1,2,3,4)
list.each{|a| puts(a)};