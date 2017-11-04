class Employee
  attr_reader :name,
              :employee_id,
              :salary

  def initialize(name, employee_id, salary)
    @name = name
    @employee_id = employee_id
    @salary = salary
  end
  
end
