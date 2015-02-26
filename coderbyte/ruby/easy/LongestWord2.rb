def LongestWord (sen)
	sen.scan(/\w+/).max_by(&:length)
end

# ORIGINAL SOLUTION
# def LongestWord (sen)
# 	words = sen.gsub(/[^\w\ ]/, "").split.sort_by(&:length)
# 	check = words.last.length
# 	words.each do |w|
# 		if w.length == check
# 			return w
# 		end
# 	end
# end