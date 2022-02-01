# your code goes here

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(i)
        if i >= 10
          @happiness = 10
        elsif i <= 0
          @happiness = 0
        else
          @happiness = i
        end
      end

      def hygiene=(i)
        if i >= 10
          @hygiene = 10
        elsif i <= 0
          @hygiene = 0
        else
          @hygiene = i
        end
      end

      def happy?
        self.happiness > 7
      end

      def clean?
        self.hygiene > 7
      end

      def get_paid(amount)
        self.bank_account = self.bank_account + amount
        "all about the benjamins"
      end   

      def take_bath
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
      end  

      def work_out
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        "♪ another one bites the dust ♫"
      end

      def call_friend(friend)
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
      end

      def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness = friend.happiness - 2
            self.happiness = self.happiness - 2
        "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness = friend.happiness + 1
            self.happiness = self.happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
      end

end