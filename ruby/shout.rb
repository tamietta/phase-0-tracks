module Shout
  def self.yell_angrily(words)
    words + "!!! " + ":("
  end

  def self.yelling_happily(words)
    words + "!!! " + ":)"
  end

end

# TEST CODE

p Shout.yell_angrily("This is so annoying")
p Shout.yelling_happily("I did")
