#write your code here

$vowels = 'aeiou'
$consonants = 'bcdfghjklmnpqrstvwxyz'

def translate(word)
  new_word = ''
  words = word.split
  
  words.each do |word|
    if $vowels.include? word[0].downcase
      new_word += ' ' + word + "ay"
    elsif word[0..1] == 'qu'
      new_word += ' ' + word.delete(word[0..1]) + word[0] + word[1] + "ay"
    elsif ($consonants.include? word[0]) && ($vowels.include? word[1])
      new_word += ' ' + word.delete(word[0]) + word[0] + "ay"
    elsif ($consonants.include? word[0]) && (word[1..2] == 'qu')
      new_word += ' ' + word.delete(word[0..2]) + word[0] + word[1] + word[2] + "ay"
    elsif $consonants.include? word[0] && word[1] && word[2]
      new_word += ' ' + word.delete(word[0..2]) + word[0]+ word[1] + word[2] + "ay"      
    elsif $consonants.include? word[0] && word[1]
      new_word += ' ' + word.delete(word[0..1]) + word[0] + word[1] + "ay"
    else
      new_word += ' ' + word.delete(word[0]) + word[0] + "ay"
    end
  end
  
  if new_word.scan(/[A=Z]/).length != 0
    l = new_word.strip.split
    p l
    l.map! { |each| each.capitalize }
    new_word.delete!(new_word)
    return new_word += l.join(" ")
  else
    return new_word.strip
  end
  
  new_word.strip 
end

#p translate("the green apple")
#p translate("square")
p translate("The Green Apple")
#p translate("Apple")
#p translate("three")
#p translate("quiet")
#p translate("banana")
#p translate("eat pie")
