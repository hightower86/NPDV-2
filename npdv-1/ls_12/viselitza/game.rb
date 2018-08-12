# game.rb
class Game

  attr_reader :letters, :good_letters, :bad_letters, :status, :errors

  def initialize(word)
    @letters = get_letters(word)

    @errors = []
    @good_letters = []
    @bad_letters = []

    @status = 0 
  end

  # 1. ask letter
  # 2. check result
  def ask_next_letter 
    puts "\n Input next letter"

    letter = ""

    while letter == "" do 
      letter = STDIN.gets.chomp
    end

    next_step(letter)
  end

  # Method next_step must to check
  def next_step(letter)
    if status == -1 || status == 1
      return
    end

    if @good_letters.include?(letter) || @bad_letters.include?(letter)
      return
    end

    if @letters.include?(letter)

      @good_letters << letter 
      
      if @good_letters.size == @letters.uniq.size
        status = 1
      end   
    else 
      @bad_letters << letter

      @errors += 1

      if errors >= 7
        @status = -1 
      end 
    end
  end

  def get_letters(word)
    if word == nil || word == ""
      abort 'You don\'t input word for game'
    end
    return word.split("")
  end
  
  
end