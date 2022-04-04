class Athlete
  def compete
    puts "Attending a competition."
  end
end

class Soccer_player < Athlete
  def run
    puts "Running towards the ball."
  end
end


class Marathonist < Athlete
  def run
    puts "Running a marathon course."
  end
end


athlete1 = Soccer_player.new
athlete2 = Marathonist.new

puts "The soccer player is:"

athlete1.compete
athlete1.run

puts "\nThe marathon runner is:"

athlete2.compete
athlete2.run