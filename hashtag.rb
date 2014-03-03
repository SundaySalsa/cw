#http://www.codewars.com/dojo/katas/52ae2db783f47875d0000064/train/ruby

def get_hashtags(post)
  result = []
  post.split(' ').select{ |x| x[0] == '#' }.each do |word|
    while word[0] == '#'
      word = word[1..-1]
    end
    result << word unless word == '' or not /[a-zA-Z]/.match(word[0]) or word.include?('#')
  end
  result
end

p get_hashtags("hello #world #2")
