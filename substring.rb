def substrings(text, dictionary)
  text = text.downcase
  result = Hash.new(0)

  dictionary.each do |substring|
    substring = substring.downcase
    count = text.scan(substring).length
    result[substring] = count if count > 0
  end

  result
end

dictionary = [
  "below","down","go","going","horn","how","howdy",
  "it","i","low","own","part","partner","sit"
]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
