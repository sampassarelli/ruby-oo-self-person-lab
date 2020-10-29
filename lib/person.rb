# your code goes here
class Person 
    attr_accessor :bank_account, :happiness, :hygiene, :friend, :topic
    attr_reader :name

    def initialize (name)
       @name = name 
       @bank_account = 25
       @happiness = 8
       @hygiene = 8
    end

    def happiness
        if @happiness > 10 
            @happiness = 10
        else 
            @happiness
        end

        if @happiness < 0
            @happiness = 0
        else
            @happiness
        end
    end

    def hygiene
        if @hygiene > 10 
            @hygiene = 10
        else 
            @hygiene
        end

        if @hygiene < 0
            @hygiene = 0
        else
            @hygiene
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
        @salary = salary
        self.bank_account += @salary
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

    def call_friend (friend)
        @friend = friend
        self.happiness += 3
        @friend.happiness += 3
        return "Hi #{friend.name}! It's #{name}. How are you?"
    end

    def start_conversation (friend, topic)
        @topic = topic
        if @topic == "politics"
            self.happiness -= 2 
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        else if @topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
        end 
    end
    
end

