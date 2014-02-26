def top_3_words(text)
  result = []
  h = Hash.new(0)
  text.split(' ').each do |word|
    h[word.downcase.gsub(/[^a-z']/, "")] += 1
  end

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
