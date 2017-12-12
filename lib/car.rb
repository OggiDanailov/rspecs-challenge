class Car


attr_accessor :make, :year, :color
attr_reader :wheels
attr_writer :door 


	def initialize(options={})
		self.make = options[:make] || 'Volvo'
		self.year = (options[:year] || 2010).to_i
		self.color = options[:color] || 'nada'
		@wheels = 4
	end	

	def self.colors
		['blue', 'green','yellow']
	end

	def full_name
		"#{self.make} #{self.year.to_s} #{self.color}"
	end

end