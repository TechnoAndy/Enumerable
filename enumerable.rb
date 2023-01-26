module MyEnumerable
  # all method
  def all?
    array1 = []
    @list.each { |i| array1.push(i) if yield i }
    puts array1.length == @list.length
  end

  # any method
  def any?
    @list.each do |element|
      return true if yield element
    end
    false
  end

  # filter method
  def filter
    array2 = []
    @list.each do |i|
      array2.push(i) if yield i
    end
    print array2
  end
end
