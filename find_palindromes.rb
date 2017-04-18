def isPalindromeTwo(selectedWord)
  isP = true

  selectedWord.each_char.with_index do |x, index|
    if(x.downcase != selectedWord.downcase.reverse![index])
      isP = false
    end
  end
  isP
end

def isPalindrome(selectedWord)
  (0..selectedWord.length / 2).each do |x|
    not selectedWord.downcase[x] == selectedWord.downcase[selectedWord.length - (x + 1)]
  end.any?
end

IO.foreach('word_list.txt') do |f|
  if(isPalindrome(f.gsub(/[-,!'.?:;"()\n\s]/, '')))
    puts "Palindrome - #{f}" else puts "** Not Palindrome - #{f}"
  end
end