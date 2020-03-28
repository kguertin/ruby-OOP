module Dribble
  def dribble(times)
    print "Dribbles the ball #{times} times"
  end
end

class NBAPlayer
  include Dribble
end

kyle_lowry = NBAPlayer.new

puts kyle_lowry.dribble(5)
puts NBAPlayer.ancestors