# your code goes here
require "pry"
require "rspec"

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    @happiness = happiness.clamp(0, 10)
  end

  def hygiene=(hygiene)
    @hygiene = hygiene.clamp(0, 10)
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def get_paid(pay)
    @bank_account += pay
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene + 4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(@hygiene - 3)
    self.happiness=(@happiness + 2)
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = self.happiness + 3 #self.hapiness += 3
    friend.happiness = friend.happiness + 3 #friend.hapiness += 3 /simpler version
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when 'politics'
        self.happiness -= 2
        person.happiness -= 2
        return "blah blah partisan blah lobbyist"
    when 'programming'
        return "blah blah blah blah blah"
    when 'weather'
        self.happiness += 1
        person.happiness += 1
        return "blah blah sun blah rain"
    end
  end
end

