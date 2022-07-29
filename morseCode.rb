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
# function to decode words and return it (this will be used to generate words for the decode_sentence  Funciton)
def Decode_arr_word(arr)
  dic = Morse_dic
  newWord = []
  arr.each do |i|
    newLetter = dic[i]
    letterUpcase = newLetter.upcase
    newWord.push(letterUpcase)
  end
  newWord
end

# function to decode sentences and print them
def Decode_sentence(sentence)
  dic = Morse_dic
  allSentence = []
  byWord = sentence.split('   ')
  byletter = []
  byWord.each do |i|
    n =i.split(' ')
    byletter.push(n)
  end
  
  byletter.each do |l|
    allSentence.push(Decode_arr_word(l))
  end
  fullSentence = ''
  fullSentenceLength = 0;
  allSentence.each do |e|
    joinWord = e.join('')
  if fullSentenceLength > 0 
    fullSentence += (" " + joinWord)
  else
    fullSentence+= + joinWord
  end

  fullSentenceLength+=1
  end


  fullSentence
end




