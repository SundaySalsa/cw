class User
  def initialize
    @rank = -8
    @progress = 0
  end
  def rank
    @rank
  end
  def progress
    @progress
  end
  def inc_rank
    @rank == -1 ? @rank = 1 : @rank += 1
    @rank == 8 ? @progress = 0 : nil
  end
  def inc_progress(x)
    raise 'Invalid activity rank. It should be between -8 and 8, but not 0' unless x != 0 and x.abs <= 8
    if @rank == 8
      return nil
    elsif x > 0 and @rank < 0
      x -= 1
    elsif x < 0 and @rank > 0
      x+=1
    end
    difference = x - @rank
    if difference >= 1
      @progress += 10 * (difference**2)
    elsif difference == 0
      @progress += 3
    elsif difference == -1
      @progress += 1
    end
    while @progress >= 100 and @rank < 8
      @progress -= 100
      self.inc_rank
    end
  end
end
