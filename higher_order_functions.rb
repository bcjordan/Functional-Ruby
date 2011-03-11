require 'pp'

module Enumerable
  def foldr(o, m = nil)
    reverse.inject(m) {|m, i| m ? i.send(o, m) : i}
  end

  def foldl(o, m = nil)
    inject(m) {|m, i| m ? m.send(o, i) : i}
  end
end

pp [2,1,2,3].foldr(:+, 1)

pp [1,2,3,4].map{ |a| a * 3  }
pp [1,2,3,4].map{ |a| a == 4 }

pp (3 == 5)

pp 3.send(:+, 5) # apply + to 3, 5