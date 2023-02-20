# Complete the solution so that the function will break up camel casing, using a space between words.

# Example
# "camelCasing"  =>  "camel Casing"
# "identifier"   =>  "identifier"
# ""             =>  ""

def solution(string)
  result = ""
  string.split(//).each {|x| x == x.upcase ? result += " " + x : result += x}
  result
end

# Alternative Solution
def solution(string)
  string.gsub /([A-Z])/, ' \1'
end