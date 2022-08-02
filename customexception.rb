class PermissionError < StandardError
	attr_reader :action
	def initialize(message,action)
		super(message)
		@action=action
	end	
end	
raise PermissionError.new('permission denied', :delete)
raise "oac"