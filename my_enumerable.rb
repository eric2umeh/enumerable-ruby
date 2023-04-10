module MyEnumerable
  def all?
    istrue = true
    each { |val| istrue = false unless yield val }
    istrue
  end

  def any?
    istrue = false
    each { |val| istrue = true if yield val }
    istrue
  end

  def filter
    arr = []
    each { |val| arr.push val if yield val }
    arr
  end
end
