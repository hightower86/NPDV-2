# coin.rb
# Сгенерим случайное число от 0 до 10 тем же методом  rand

def show_rolling_die
  100.times do
    sleep 0.01
    print "#{rand(1..7)} \r"
  end
end

show_rolling_die

if rand(6) == 5
  puts "Ребро"
else
  if rand(2) == 1
    puts "Reshka"
  else
    puts "Orel"
  end
end

