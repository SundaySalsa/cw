def sort sentence
  sentence = sentence.gsub(/[^A-Za-z\s]/, '').split(' ')
  left = sentence.select {|x| x[0] == x[0].downcase}
  right = sentence.select {|x| x[0] == x[0].upcase}
  sentence = (left.sort {|x, y| x <=> y} + right.sort {|x, y| y <=> x}).join(' ')
end
