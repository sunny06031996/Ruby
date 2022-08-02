require 'byebug'
require 'ostruct'
class User
	attr_reader :name, :number, :type

	def initialize(name:, number:, type:)
		@name = name
		@number = number
		@type = type
		@record = OpenStruct.new(name: name, number: number, type: type)
		@errors = []
 	end

	def self.validate(record, attr, checking)
		record.presence_check(attr) if checking == "presence"
		record.number_check(attr) if checking == "number"
		record.type_check(attr) if checking == "type"
		eval "record.#{checking}_check(attr)"
	end

	def validate!
		self.class.validate(self, "name", "presence")
		self.class.validate(self, "number", "number")
		self.class.validate(self, "type", "type")
		puts @errors.nil? ? true : @errors
	end

	def valid?
		puts @errors.nil? ? true : false
	end

	def presence_check(attr)
		@errors << {message: "#{attr} must be present" } if eval("@record.#{attr}") == '' || eval("@record.#{attr}").nil?
	end

	def number_check(attr)
		@errors << {message: "#{attr} should be number" } unless !!(eval("@record.#{attr}") =~ /\A\d+\Z/)
	end

	def type_check(attr)
		@errors << {message: "#{attr} type is mismatch"} if eval("@record.#{attr}") != self.class
	end
end
user = User.new(name: "shivam dubey", number: "4387684328", type: "User")
user.validate!
user.valid?