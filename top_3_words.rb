def top_3_words(text)
  result = []
  h = Hash.new(0)
  text.split(' ').each do |word|
    h[word.downcase.gsub(/[^a-z']/, "")] += 1
  end
  ['', "'"].each {|x| h.delete(x)}
  3.times do |i|
    h.each do |k, v| 
      if v == h.values.max
        result << k
        h.delete(k)
        break
      end
    end
  end
  result
end

p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")

p top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")

p top_3_words(" , e .. ")
