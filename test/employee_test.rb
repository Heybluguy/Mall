require "minitest/autorun"
require "minitest/pride"
require "./lib/employee"

class EmployeeTest < Minitest::Test
  attr_reader :employee

  def setup
    @employee = Employee.new("Rachel", 92836, "$32000")
  end

  def test_it_exist
    assert_instance_of Employee, employee
  end

  def test_it_has_attributes
    assert_equal "Rachel", employee.name
    assert_equal 92836, employee.employee_id
    assert_equal "32000", employee.salary
  end

end
