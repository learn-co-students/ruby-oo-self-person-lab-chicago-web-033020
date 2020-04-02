require "pry"
require "yaml"

class Person

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name="Stella", bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end
  
  def happiness=(happinessMeter)
    @happiness = happinessMeter
    @happiness = 0 if happinessMeter < 0
    @happiness = 10 if happinessMeter > 10
  end
  
  def hygiene=(hygieneMeter) 
    @hygiene = hygieneMeter
    @hygiene = 0 if hygieneMeter < 0
    @hygiene = 10 if hygieneMeter > 10
 end
  
  def happy?
    happiness > 7
  end
  
  def clean?
    hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
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
  
  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(initiator, topic)
    case topic
    when "politics"
      self.happiness -= 2
      initiator.happiness -= 2
      return "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      initiator.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
  # binding.pry
end