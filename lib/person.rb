# your code goes here


class Person

    attr_accessor :bank_account, :index, :hygiene

    def initialize(name, original_amount = 25)
        @name = name
        @index = 8
        @hygiene = 8
        @bank_account = original_amount
    end

    def name
        @name
    end

    # def bank_account
    #     @bank_account = 25
    # end

    def happiness
        # @index = 8
        return @index
    end

    def happiness=(new_index)
        @index = new_index
        if @index > 10
            @index = 10
        elsif @index < 0
            @index = 0
        end
    end

    def hygiene=(new_hygiene)
        @hygiene = new_hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    def happy?
        if @index > 7
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
        @bank_account += salary
        return 'all about the benjamins'
        
    end

    def take_bath
        @hygiene += 4
        self.hygiene = @hygiene
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        @index += 2
        self.happiness = @index
        self.hygiene = @hygiene
        return "♪ another one bites the dust ♫"
    end

    def call_friend(x)
        @index += 3
        x.happiness = x.happiness + 3
        self.happiness = @index
        # return "Hi Felix! It's Penelope. How are you?"
        return "Hi #{x.name}! It's #{name}. How are you?"
    end

    def start_conversation(x, y)
        if y == 'politics'
            @index -= 2
            x.happiness = x.happiness - 2
            self.happiness = @index
            return "blah blah partisan blah lobbyist"
        elsif y == 'weather'
            @index += 1
            x.happiness = x.happiness + 1
            self.happiness = @index
            return "blah blah sun blah rain"
        elsif y == 'programming'
            return "blah blah blah blah blah"
        end


    end





end