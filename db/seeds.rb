
File.open("words").each do |word|
	Word.create(text: word.chomp, sorted: word.downcase.split("").sort.join)
end