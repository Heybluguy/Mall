require "minitest/autorun"
require "minitest/pride"
require "./lib/store"
require "./lib/employee"

class StoreTest < Minitest::Test
  attr_reader :store,
              :employee

  def setup
    @store    = Store.new("Brookstone")
    @employee = Employee.new("Rachel", 92836, "$32000")
  end

  def test_it_exist
    assert_instance_of Store, store
  end

  def test_case_name
    assert_equal "Brookstone", store.name
    assert_instance_of Array, store.employees
  end

  def test_can_have_employees
    store.hire_employee(employee)

    assert_equal [employee],store.employees
    assert_equal 1,store.employees.count
  end

end
