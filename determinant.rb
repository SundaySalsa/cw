#http://www.codewars.com/dojo/katas/52a382ee44408cea2500074c/train/ruby
# return the determinant of the matrix passed in
def determinant(matrix)
  if matrix.length == 1
    return matrix[0][0]
  elsif matrix.length == 2
    return (matrix[0][0]*matrix[1][1] - matrix[1][0]*matrix[0][1])
  else
    # It will fail if we'll try to calculate determinant of non-square matrix
    # [[1,2,3],[0,0,0]], for example
    # It isn't specified in tests, however
    res = []
    matrix.each_index do |col|
      newmat = []
      matrix.each_index {|i| ( i != col ? newmat << matrix[i][1..(-1)] : '' )}
      res << matrix[col][0]*determinant(newmat)
    end
    a = 0
    res.each_index {|x| x.even? ? a+= res[x] : a-=res[x]}
    return a
  end
end
