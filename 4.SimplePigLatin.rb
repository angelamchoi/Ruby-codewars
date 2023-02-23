# Instructions

# Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

# Examples
# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
# pig_it('Hello world !')     # elloHay orldway !

def pig_it(text)
  text.split.map do |word|
    word << word[0]
    word[0] = ""
    word += "ay" unless word =~ /[^A-Z]/i
    word
  end.join(" ")
end

# Alternative Solution
def pig_it_gsub(text)
  text.gsub(/(\w)(\w+)*/) { "#{$2}#{$1}ay" }
end
