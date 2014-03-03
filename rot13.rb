def rot13(string)
  result = ""
  left = [*('a'..'m'),*('A'..'M')]
  right = [*('n'..'z'),*('N'..'Z')]
  string.each_char do |c|
    if left.include?(c)
      result += (c.ord+13).chr
    elsif right.include?(c)
      result += (c.ord-13).chr
    else
      result += c
    end
  end
  result
end

p rot13('grfg')
p rot13('Grfg')
p rot13('Cbqrjnef')
