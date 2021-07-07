# your code goes here
class Person

    # code goes here
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    
    # initialize method
    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
        happiness > 10 ? happiness = 10 : "it is less than 10!"
        happiness < 0 ? happiness = 0 : "it is more than 0!"
        @happiness = happiness
    end

    def hygiene=(hygiene)
        hygiene > 10 ? hygiene = 10 : "it is less than 10!"
        hygiene < 0 ? hygiene = 0 : "it is more than 0!"
        @hygiene = hygiene
    end

    # clean method
    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    # happy method
    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    # get_paid method
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    # take_bath method
    def take_bath

        # adds 4 points to '@hygiene_points' then stores that value in a variable
        self.hygiene += 4

        # ternary operator (for hygiene points)
        self.hygiene> 10 ? self.hygiene = 10 : "it is less than 10!"

        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    # work_out method
    def work_out

        # adds 2 points to '@happy_points' then stores that value in a variable
        self.happiness += 2

        # subtracts 3 points to '@hygiene_points' then stores that value in a variable
        self.hygiene -= 3

        # ternary operator (for happy points)
        self.happiness > 10 ? self.happiness = 10 : "it is less than 10!"

        # ternary operator (for hygiene points)
        self.hygiene < 0 ? self.hygiene = 0 : "it is more than 0!"

        "♪ another one bites the dust ♫"
    end

    # call_friend method
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3

        self.happiness > 10 ? self.happiness = 10 : "it is less than 10!"

        friend.happiness > 10 ? friend.happiness = 10 : "it is less than 10!"

        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    # start_conversation method
    def start_conversation(friend, topic)

        if topic == "politics"
            # code
            self.happiness -= 2
            friend.happiness -= 2

            self.happiness < 0 ? self.happiness = 0 : "it is more than 0!"

            friend.happiness < 0 ? friend.happiness = 0 : "it is more than 0!"

            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            # code
            self.happiness += 1
            friend.happiness += 1

            self.happiness > 10 ? self.happiness = 10 : "it is less than 10!"

            friend.happiness > 10 ? friend.happiness = 10 : "it is less than 10!"

            "blah blah sun blah rain"
        else
            # code
            "blah blah blah blah blah"
        end
    end

end