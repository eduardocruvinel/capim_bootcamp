require 'matrix'
 
def start_validation
  player = ""
  loop do
    player = gets.chomp
    if player.upcase == "HUMAN" || player.upcase == "MACHINE"
      break
    else 
      puts "Type a valid player name."
    end
  end
  return player
end

class Matrix 
  def print_table
    i = 0
    self.each do |j|
      if j == ""
        print "  "
      else 
        print j + " "
      end

      i+= 1
      if i == self.column_size
        print "\n"
        i = 0
      end
    end
    print "------"
  end

  def verify_win
      if self.verify_column_win || self.verify_line_win || self.verify_diagonal_win
        true
    end
  end

  def verify_line_win
    won = false
    k = 0
    while k < 3
      if (self[k, 0] == self[k, 1]) && (self[k, 1] == self[k, 2]) && !(self[k, 0] == "")
        won = true
        if self[k, 0] == "X"
          puts "\nThe #{$choice} won this match!"
        elsif self[k, 0] == "O"
          puts "\nThe #{$choice == "human" ? "machine" : "human"} won this match!"
        end
        break
      end
      k += 1
    end
    return won
  end

  def verify_column_win
    won = false
    k = 0
    while k < 3
      if (self[0, k] == self[1, k]) && (self[1, k] == self[2, k]) && !(self[0, k] == "")
        won = true
        if self[0, k] == "X"
          puts "\nThe #{$choice} won this match!"
        elsif self[0, k] == "O"
          puts "\nThe #{$choice == "human" ? "machine" : "human"} won this match!"
        end
        break
      end
      k += 1
    end
    return won
  end

  def verify_diagonal_win
    won = false
    if ((self[0, 0] == self[1, 1]) && (self[1, 1] == self[2, 2]) && !(self[0, 0] == "")) || 
        ((self[0, 2] == self[1, 1]) && (self[1, 1] == self[2, 0]) && !(self[0, 2] == ""))
        won = true
        if self[2, 2] == "X"
          puts "\nThe #{$choice} won this match!"
        elsif self[2, 2] == "O"
          puts "\nThe #{$choice == "human" ? "machine" : "human"} won this match!"
        end
    end
    return won
  end
  
  def mark_table
    mark = 0
    puts "\nThe game will begin soon!"
    puts "\n------"
    sleep(2)
    loop do
      if self[a = rand(0..2), b = rand(0..2)] == "" 
        if (mark % 2) == 0
          self[a, b] = "X"
          self.print_table
          print "\n"

          if verify_win
            break 
          end

          sleep(1.5)
        else
          self[a, b] = "O"
          self.print_table
          print "\n"

          if verify_win
            break
          end

          sleep(1.5)
        end

        mark += 1
        if mark >= 9
          puts "\nIt's a draw!"
          break
        end
      end   
    end 
  end
end