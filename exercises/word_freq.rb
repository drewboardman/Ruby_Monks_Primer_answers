def word_count(sentence, word)
	sent_arr = sentence.downcase.split
	freq = sent_arr.count(word.downcase)
end	

p word_count("A man a plan a canal Panama", "a")