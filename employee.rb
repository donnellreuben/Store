# employee1 = {
#   :last_name "Carter", 
#   :first_name "Majora", 
#   :active true, 
#   :salary 80000
# }











# employee1 = Employee.new(
#   {
#   :first_name => "Majora", 
#   :last_name => "Carter", 
#   :active => true, 
#   :salary => 80000
# })

# cmd + a then cmd + / to unhash comments
#factory
class Employee 
  attr_reader :first_name, :last_name
  attr_writer :first_name, :last_name

  def initialize(input_options) #initialize runs automatically
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @active = input_options[:active]
    @salary = input_options[:salary]
  end
  
  def print_info
    p "#{@first_name} #{@last_name} makes #{@salary} per year."
  end

  def give_annual_raise
    @salary *= 1.05
  end

  def first_name
    @first_name.upcase
  end

  def last_name
    @last_name.upcase
  end

  # setter/writer
  def first_name=(new_first_name)
    @first_name = new_first_name
  end

end
employee1 = Employee.new(
  {
  :first_name => "Majora", 
  :last_name => "Carter", 
  :active => true, 
  :salary => 80000
})
#manufacturer

employee1.print_info





