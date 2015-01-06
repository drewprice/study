def LongestWord(sen)
	sen.gsub!(/[^0-9A-Za-z\ ]/, "")
	sen = sen.split
	words = sen.sort_by{|word| word.length}
	if words[-1] == words[-2]
		if sen.index(words[-1]) > sen.index(words[-2])
			words[-2]
		end
	else	
		words[-1]
	end
end

puts LongestWord(ARGV[0])