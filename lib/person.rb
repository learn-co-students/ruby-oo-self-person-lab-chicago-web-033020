require 'pry'

class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8  
        @hygiene = 8  
    end

    def happiness=(num)
        @happiness = num
        # @happiness = 10 if @happiness > 10
        # @happiness = 0 if @happiness < 0 
        if num > 10 
            @happiness = 10
        end
        if num < 0
            @happiness = 0
        end
    end
    def hygiene=(num)
        @hygiene = num
        # @hygiene = 10 if @hygiene > 10
        # @hygiene = 0 if @hygiene < 0 
        if num > 10 
            @hygiene = 10
        end
        if num < 0
            @hygiene = 0
 
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account = @bank_account + salary
        return "all about the benjamins"
    end

    def take_bath
        # @hygiene = @hygiene + 4
        # self.hygiene = @hygiene
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        # @hygiene = @hygiene -3
        # self.hygiene = @hygiene
        # @happiness = @happiness + 2
        # self.happiness = @happiness
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        # @happiness = @happiness + 3
        # self.happiness = @happiness
        [friend, self].each do |person|
            person.happiness += 3
        end
        return"Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
       
        if topic == "politics" 
            [person, self].each do |people|
                people.happiness -= 2
            end
            return "blah blah partisan blah lobbyist"
            
        end

        if topic == "weather" 
            [person, self].each do |people|
                people.happiness += 1
            end
            return  "blah blah sun blah rain"
        end
        return "blah blah blah blah blah"

     end


end

