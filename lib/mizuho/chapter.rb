module Mizuho

class Chapter
	# This may be nil, indicating that this chapter is the preamble.
	attr_accessor :heading
	attr_accessor :filename
	attr_accessor :contents
	
	def is_preamble?
		return heading.nil?
	end
	
	def title
		if @heading
			return @heading.title
		else
			return nil
		end
	end
	
	def title_without_numbers
		if @heading
			return @heading.title_without_numbers
		else
			return nil
		end
	end
	
	def anchor
		if @heading
			return @heading.anchor
		else
			return nil
		end
	end
end

end
