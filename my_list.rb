require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*elements)
    @list = elements
  end

  def each(&block)
    @listeach(&block)
  end
end

p list = MyList.new(1, 2, 3, 4)
p(list.all? { |e| e < 5 })
p(list.all? { |e| e > 5 })
p(list.any? { |e| e == 2 })
p(list.any? { |e| e == 5 })
p(list.filter(&:even?))
