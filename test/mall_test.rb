require "minitest/autorun"
require "minitest/pride"
require "./lib/store"
require "./lib/mall"
require "./lib/employee"

class MallTest < Minitest::Test
  attr_reader :mall,
              :store,
              :employee_1,
              :employee_2

  def setup
    @mall       = Mall.new
    @store      = Store.new("Brookstone")
    @employee_1 = Employee.new("Rachel", 92836, "$32000")
    @employee_2 = Employee.new("Sid", 17638, "$30000")
  end

  def test_it_exist
    assert_instance_of Mall, mall
  end

  def test_it_has_stores
    assert_equal [], mall.stores
  end

  def test_it_can_open_stores
    mall.open_store(store)

    assert_equal [store], mall.stores
    assert_equal 1, mall.stores.count
    assert_equal store, mall.stores.first
    assert_equal [], mall.stores.first.employees
  end

  def test_it_can_hire_employees
    mall.open_store(store)
    mall.stores.first.hire_employee(employee_1)
    mall.stores.first.hire_employee(employee_2)

    assert_equal [employee_1, employee_2], mall.stores.first.employees
    assert_equal 2, mall.stores.first.employees.count
  end

end
