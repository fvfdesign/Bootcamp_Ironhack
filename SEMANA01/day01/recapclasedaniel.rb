class Employee
  attr_reader :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end
end
​
class HourlyEmployee < Employee
  def initialize(name, email, hourly_rate, hours_worked)
    @name = name
    @email = email
    @hourly_rate = hourly_rate
    @hours_worked = hours_worked
  end
​
  def calculate_salary
    #returns the hours worked * hourly_rate
    @hourly_rate * @hours_worked
  end
end
​
class SalariedEmployee < Employee
​
  def initialize(name, email, year_salary)
​
    @name = name
    @email = email
    @year_salary = year_salary
  end
​
  def calculate_salary
​
    @year_salary / 52
  end
end
​
class MultiPaymentEmployee < Employee
​
  def initialize(name, email, year_salary, extra_hour, hours_worked)
    @name = name
    @email = email
    @year_salary = year_salary
    @extra_hour = extra_hour
    @hours_worked = hours_worked
  end
​
  def calculate_salary
​
    week_year_salary = @year_salary / 52
    extra_hours = @hours_worked - 40
    week_hour_salary = extra_hours * @extra_hour
​
    week_hour_salary + week_year_salary
  end
end
​
class Payroll
  def initialize(employees)
    @employees = employees
  end
​
  def pay_employees
    # Should output how much we're paying each employee for this week and the total amount spent on payroll this week.
    @employees.each { |employer|
​
      salary_with_tax = employer.calculate_salary * 1.18
​
      puts "Name: #{employer.name} Week Salary: #{'%.2f' % salary_with_tax}"
    }
  end
​
  def notify_employee(employees)
​
    employees.each { |employer|
​
      puts "Email sendet to: #{employer.name} <#{employer.email}>"
    }
  end
end
​
​
​
josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
​
# josh.calculate_salary_hours
# nizar.calculate_salary_year
# ted.calculate_salary_multi_salary
​
employees = [josh, nizar, ted]
payroll = Payroll.new(employees)
payroll.pay_employees
payroll.notify_employee(employees)