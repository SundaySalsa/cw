#http://www.codewars.com/dojo/katas/52dffa05467ee54b93000712
#Sort sentence pseudo-alphabetically:
#Lowercase words first, sorted alphabetically
#Uppercase words last, in reverse alphabetical order
#Punctuation is omitted
#Example:
#sort_sentence('A BB c, a b. C') ==> 'a b c C BB A'
def sort sentence
  sentence = sentence.gsub(/[^A-Za-z\s]/, '').split(' ')
  left = sentence.select {|x| x[0] == x[0].downcase}
  right = sentence.select {|x| x[0] == x[0].upcase}
  sentence = (left.sort {|x, y| x <=> y} + right.sort {|x, y| y <=> x}).join(' ')
end
