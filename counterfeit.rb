def counterfeit(coin, &spend)
  coin2 = coin.clone
  class << coin
    def self.==(other)
      true
    end
  end
  spend.(coin)
  spend.(coin2)
end

