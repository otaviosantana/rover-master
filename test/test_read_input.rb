require_relative "../lib/rover"
require_relative "../lib/position"
require_relative "../lib/movement"
require_relative "../lib/read_input"
require "test/unit"
require "mocha/test_unit"

class TestReadInput < Test::Unit::TestCase

  def test_code_with_first_test_case
    readInput = ReadInput.new
    readInput.stubs(:puts)
    readInput.stubs(:gets).returns("5 5").returns("1 2 N").returns("LMLMLMLMM").returns(nil)
    result = readInput.run
    assert_equal("1 3 N - ", result)
  end

  def test_code_with_second_test_case
    readInput = ReadInput.new
    readInput.stubs(:puts)
    readInput.stubs(:gets).returns("5 5").returns("3 3 E").returns("MMRMMRMRRM").returns(nil)
    result = readInput.run
    assert_equal("5 1 E - ", result)
  end

  def test_run_all_supplied_test_case
    readInput = ReadInput.new
    readInput.stubs(:puts)
    readInput.stubs(:gets).returns("5 5").returns("1 2 N").returns("LMLMLMLMM").returns("3 3 E").returns("MMRMMRMRRM").returns(nil)
    result = readInput.run
    assert_equal("1 3 N - 5 1 E - ", result)
  end
end
