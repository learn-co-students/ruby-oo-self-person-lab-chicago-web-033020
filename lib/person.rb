require 'pry'

class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness
    if @happiness > 10
      @happiness = 10
    elsif
      @happiness < 0
      @happiness = 0
    else
      @happiness 
    end 
  end

  def hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif
      @hygiene < 0
      @hygiene = 0
    else
      @hygiene
    end 
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(name)
    self.happiness += 3
    name.happiness += 3
    return "Hi #{name.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(name, topic)
    if topic == 'politics'
      self.happiness -= 2
      name.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
      self.happiness += 1
      name.happiness += 1
      return "blah blah sun blah rain"
    else
      return 'blah blah blah blah blah'
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
  end

end

#binding.pry