class Student
	@@osis_database = []
	attr_accessor :birth, :gender, :iep
	def initialize(first,middle,last)
		@first = first
		@middle = middle
		@last = last
	end

	def osis
		@osis
	end

	def identify_student
		puts "#{@last}, #{@first} #{@middle}"
	end

	def birthday
		puts "#{birth[:month]}/#{birth[:day]}/#{birth[:year]}"
	end

	def create_id
		if @osis == nil
			@osis = rand(0...999999)
			if @@osis_database.include?(@osis) == false
				@@osis_database << @osis
			else
				puts "Random OSIS generator dupilicated another student's OSIS. Regenerating now."
				@osis = nil
				create_id
			end
		else
			puts "This student already has an OSIS. It is #{@osis}."
		end
	end
end

######### CREATE PRACTICE STUDENT TO TEST METHODS #########
freeman_donald_timothy = Student.new("Donald","Timothy","Freeman")

freeman_donald_timothy.birth = {:month => 3, :day => 19, :year => 1986}

freeman_donald_timothy.create_id

puts freeman_donald_timothy.osis


