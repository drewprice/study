class Book
	attr_reader :title

	def title=(new_title)
		array = new_title.downcase.split
		small_words = ["a", "an", "the", "at", "by", "for", "in", "of", "on", "over", "to", "up", "and", "as", "but", "it", "or", "nor"]
		array.each do |word|
			if small_words.include? (word)
				word.downcase!
			else
				word.capitalize!
			end
		end
		array[0].capitalize!
		@title = array.join(" ")
	end

end