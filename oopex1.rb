require "date"
class Person
 attr_accessor   :first_name, :last_name,:dob, :fullname
 attr_reader :emails1, :phonenums
 
 # Initialize instance variables
    def initialize(first_name='jagrit', last_name='gyawali', dob='11/11/2005')
     @dob = Date.parse(dob)
     @first_name = first_name
     @last_name = last_name
     @fullname = first_name+' '+last_name
     @emails1 = Array.new
     @phonenums= Array.new
    end
# Instance methods
  def add_email(insert)
    emails1.push(insert)
  end
  def add_phone(phone)
    phonenums.push(phone)
  end
  def remove_email(remove_email)
   emails.delete_at(remove_email) 
  end
  def remove_phone(remove_phone)
   phonenums.delete_at(remove_phone) 
  end

  def to_s
   puts "#{first_name}, #{last_name} was born on #{dob} "
   puts "Their email addresses are: #{emails1}" 
   puts "Their phone numbers: #{phonenums}"
  end

  def print_details
    puts "#{fullname}"
    puts "Date of Birth: "

    puts "#{dob}"

    10.times {print "-" }
    puts "\n"
    puts "Email Addresses: "
    puts "#{emails1}"
    puts "Phone Numbers: "
    puts "#{phonenums}"
  end
end
