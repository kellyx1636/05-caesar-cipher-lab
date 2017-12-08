def caesar_encode(string, offset)
  # code
  little_alphabet = [*('a'..'z')] 
  big_alphabet = [*('A'..'Z')]
  numbers = [*('0'..'9')]
  
  string.split(//).map do |letter|   #splits every letter 
    if letter == letter.downcase 
      little_alphabet[(little_alphabet.index(letter) + offset)%26]  #lowercase + wrapping back
    elsif letter == letter.upcase 
      big_alphabet[(big_alphabet.index(letter) + offset)%26]  #uppercase 
    # elsif letter == numbers 
    #   numbers[(numbers.index(letter) + offset)%10]
    else 
      put letter
    end
  end.join("")
end

# caesar_encode("y", 2)
# caesar_encode("Y", 2) 
# caesar_encode("Kelly", 2)

puts "What would you like to encode?"
string = gets.chomp
puts "What do you want the offset to be?"
offset = gets.chomp.to_i 
puts caesar_encode(string, offset) #removed 'user_' from both variables  

