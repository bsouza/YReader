require 'yaml'

class YReader

	def initialize(file)
		@params = []
		@reader = YAML.load_file(file)
	end

	def get
		raise 'No selected parameter!' if @params.size == 0
		get_config(@params)
	end

	def xget(params)
		raise 'Invalid parameter!' if params.empty?
		params = params.split('/')
		params.delete_if { |item| item.empty? }
		get_config(params)
	end

	private :psych_to_yaml

		def get_config(name=nil, params)
			reader = name.nil? ? @reader : name
			item = reader[params.shift]
			params.empty? ? item : get_config(item, params)
		end

		def method_missing(name, *block)
			@params << name.to_s
			self
		end

end