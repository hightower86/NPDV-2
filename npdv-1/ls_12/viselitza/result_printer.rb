class ResultPrinter

  def print_status(game)
    system "clear"

    puts "\nWord: " + get_word_for_print(game.letters, game.good_letters)

    puts "Mistakes (#{game.errors}): #{game.bad_letters.join(", ")}"

    if game.errors >= 7
      puts "You lose :("
    else
      if game.letters.uniq.size == game.good_letters.size
        puts "Congratulations! You win!!!\n\n"
      else
        puts "You have tryes: " + (7 - game.errors).to_s
      end
    end
  end

  def get_word_for_print(letters, good_letters)
    result = "" 

    for letter in letters do 
      if good_letters.include? letter
        result += letter + " "
      else
        result += "__ "
      end
    end
    result
  end

end