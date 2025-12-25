def caesar_cipher(word, num)
  word.chars.map do |char|
    if char =~ /[a-z]/
      ((char.ord - 'a'.ord + num) % 26 + 'a'.ord).chr
    elsif char =~ /[A-Z]/
      ((char.ord - 'A'.ord + num) % 26 + 'A'.ord).chr
    else
      char
    end
  end.join
end

print "Enter some text: "
word = gets.chomp

print "Enter number: "
num = gets.chomp.to_i

puts caesar_cipher(word, num)
