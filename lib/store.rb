class Store
  attr_reader :name,
              :employees

  def initialize(name)
    @name = name
    @employees = []
  end

  def hire_employee(employee)
    @employees << employee
  end

end
