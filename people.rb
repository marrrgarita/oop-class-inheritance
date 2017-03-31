class Person
  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}"
  end

end


class Student < Person

  def learn
    puts "I get it!"
  end

end

class Instructor < Person

  def teach
    puts "Everything in Ruby is an object!"
  end

end

chris = Instructor.new("Chris")
xtina = Student.new("Xtina")

chris.teach
xtina.learn
xtina.teach #this will not work because the teach method is only available to class Instructor, so it is not available to xtina who is an instance of a Student. If the teach method was in the Person class, it would be available to both of its child classes
