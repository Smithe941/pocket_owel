
class Owel
  attr_reader :energy, :hunger, :plesure, :wee, :society, :health, :hygiene
  attr_writer :name


  def initialize
    @energy = 10
    @hunger = 10
    @plesure = 10
    @wee = 0
    @hygiene = 10
    @society = 10
    @health = 2
    @game_over = 1
  end

  def sleep
    @energy = 10
    @hunger -= 1
    @plesure -= 2
    @wee += 5
    @hygiene -= 2
    @society -= 5
  end

  def eat
    @energy -= 1
    @hunger = 10
    @plesure += 1
    @wee += 3
    @hygiene -= 1
  end

  def play
    @energy -= 3
    @hunger -= 3
    @plesure = 10
    @wee += 2
    @hygiene -= 4
    @society += 3
  end

  def toilet
    @wee = 0
    @hygiene -=2
  end

  def love
    @plesure += 2
    @society += 3
    @hunger -= 2
  end

  def bathe
    @energy -= 1
    @hunger -= 1
    @hygiene = 10
  end

  def meds
    @health = 2
  end

  # secret commands

  def wow
    p 'Во всем виновата сова'
    p ' ^  ^'
    p '(O.O)'
    p '(/ \)'
  end

  def smoke_weed
    @energy = 1
    @hunger = 1
    @plesure = 10
    @wee = 0
    @hygiene = 10
    @society = 10
    @health = 2
    info
  end

  def listen_placebo
    @energy = 10
    @hunger = 10
    @plesure = 10
    @wee = 0
    @hygiene = 10
    @society = 10
    @health = 0
    info
    p "#{@name} died happy"
    p 'See You at the Bitter End.'
  end

  # service commands

  def info
    p "Energy - #{@energy}"
    p "Hunger - #{@hunger}"
    p "Plesure - #{@plesure}"
    p "Natural need - #{@wee}"
    p "Hygiene - #{@hygiene}"
    p "Society - #{@society}"
    p "Health - #{@health}"
  end

  def help
    p 'You can use this comands: sleep, eat, play, toilet, love, bathe, meds.'
  end

  def check
    if @health.zero?
      p "#{@name} is dead.. My condolences, you should buy new Owel"
      elsif @society.zero?
        p "#{@name} fly away in search of a new friend"
        elsif @energy or @hunger or @hygiene == 0
          @health -= 1
          elsif @wee >= 10
            @hygiene -= 7
            p "#{@name} wet oneself, please bathe it"
    end
  end


end

