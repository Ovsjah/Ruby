#write your code here
def echo(stuff)
  stuff
end

def shout(stuff)
  stuff.upcase
end

def repeat(stuff, mult=2)
  ("#{stuff} " * mult).strip
end

def start_of_word(stuff, pos)
  stuff[0...pos]
end

def first_word(stuff)
  words = stuff.split
  words[0]
end

def titleize(stuff)
  words = stuff.split
  caps = ""
  little_words = ['the', 'over', 'and']
  words.each do |word|
    unless little_words.include? word 
      caps +=" " + word.capitalize
    else
      caps +=" " + word
    end
  end
  caps.strip!.sub(words[0], words[0].capitalize)
end

