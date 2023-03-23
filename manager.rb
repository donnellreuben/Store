class Manager < Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name, :last_name, :salary, :active

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

  def send_report
    p "sending report...."
    # some logic here I'm not going to write
    p "just send all the reports"
  end

end

#Don't Edit this (TEMPLATE, Original information)
manager1 = Manager.new(
  {
  :first_name => "Manny", 
  :last_name => "Williams", 
  :active => true, 
  :salary => 100000
})

#edit Manager info here:
#   #Manager
# item2.item_name=()
# item2.color=()
# item2.price=()
# item2.flavor=()

manager1.print_info
