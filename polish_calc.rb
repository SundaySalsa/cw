#http://www.codewars.com/dojo/katas/52f78966747862fc9a0009ae/train/ruby
#Your job is to create a calculator which evaluates expressions in Reverse Polish notation.
#http://en.wikipedia.org/wiki/Reverse_Polish_notation
def calc(expr)
  arr = []
  expr.split(' ').each do |x|
    if x.to_i.to_s == x or x.to_f.to_s == x
      arr << x
    else
      a, b = arr.pop, arr.pop
      arr << eval("#{b} #{x} #{a}")
    end
  end
  arr.empty? ? 0 : eval("#{arr[-1]}")
end
