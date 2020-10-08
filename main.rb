dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (string = "Hello World", dictionary)

  count = Hash.new(0)
  dictionary.each { |word| count[word] += string.downcase.scan(/(?=#{word})/).count if string.downcase.include?(word)}
  p count
end

substrings("going", dictionary)