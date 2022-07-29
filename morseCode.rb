# declare morse dictionary as a constant variable
Morse_dic = {
".-"=>"a",
"-..."=>"b",
"-.-."=>"c",
"-.."=>"d",
"."=>"e",
"..-."=>"f",
"--."=>"g",
"...."=>"h",
".."=>"i",
".---"=>"j",
"-.-"=>"k",
".-.."=>"l",
"--"=>"m",
"-."=>"n",
"---"=>"o",
".--."=>"p",
"--.-"=>"q",
".-."=>"r",
"..."=>"s",
"-"=>"t",
"..-"=>"u",
"...-"=>"v",
".--"=>"w",
"-..-"=>"x",
"-.--"=>"y",
"--.."=>"z",
" "=>" ",
".----"=>"1",
"..---"=>"2",
"...--"=>"3",
"....-"=>"4",
"....."=>"5",
"-...."=>"6",
"--..."=>"7",
"---.."=>"8",
"----."=>"9",
"-----"=>"0"
}

# function to decode letters
def decode_morse(morse) 
  dic = Morse_dic
  n = dic[morse]
  puts n.upcase
end

# function to decode words and prints it
def Decode_word(word)
  dic = Morse_dic
  newWord = []
  arr = word.split(' ')
  arr.each do |i|
    newLetter = dic[i]
    letterUpcase = newLetter.upcase
    newWord.push(letterUpcase)
  end
  print newWord.join('')
end




