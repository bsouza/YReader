require 'test/unit'
require_relative '../yreader'

class YReaderTest < Test::Unit::TestCase

	def test_yreader_without_parameters
		assert_raise RuntimeError do
			get_reader.get
		end
	end

	def test_yreader_with_one_parameter
		assert_equal({"name" => "testing"}, get_reader.test.get)
	end

	def test_yreader_with_two_parameters
		assert_equal("testing", get_reader.test.name.get)
	end

	def test_yreader_xget_with_one_parameter
		assert_equal({"name" => "testing"}, get_reader.xget('/test'))
	end

	def test_yreader_xget_with_two_parameters
		assert_equal("testing", get_reader.xget('/test/name'))
	end

	def get_reader
		YReader.new("yreader.yml")
	end

end