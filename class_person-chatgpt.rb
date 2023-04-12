# Define a class Person with:

#  - An attribute first_name
#  - An attribute last_name
#  - An attribute birthdate (we just assign a string to this attribute, e.g. "April 19, 1987")
#  - An instance method, full_name, that puts first_name and last_name together
#  - An instance method, age, that calculates the number of years between today and birthdate


# Test your instance methods by adding to the end of this file:

#  new_person = Person.new
#  new_person.first_name = "Joe"
#  new_person.last_name = "Mama"
#  new_person.full_name 
# Output:
#=>  "Joe Mama"

#  other_person = Person.new
#  other_person.birthdate = "April 19, 1987"
#  other_person.age
# Output:
#=>  45


require 'date'

class Person
  attr_accessor :first_name, :last_name, :birthdate
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  def age
    birthdate_date = Date.parse(birthdate)
    days_since_birth = (Date.today - birthdate_date).to_i
    years_since_birth = days_since_birth / 365
    years_since_birth
  end
end

new_person = Person.new
new_person.first_name = "Joe"
new_person.last_name = "Mama"
p new_person.full_name  # Output: "Joe Mama"

other_person = Person.new
other_person.birthdate = "April 19, 1987"
p other_person.age  # Output: 35
