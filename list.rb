require_relative 'enumerable'
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each
    yield @list
  end
end
list1 = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list1.all? { |e| e < 5 })
puts(list1.all? { |e| e > 5 })

# Test #any?
puts(list1.any? { |e| e == 2 })
puts(list1.any? { |e| e == 5 })

# Test #filter
puts list1.filter(&:even?)
