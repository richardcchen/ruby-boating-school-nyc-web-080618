require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

r = Student.new("rich")
n = Student.new("nat")
j = Student.new("jordan")
yar = Student.new("yaritza")
jul = Student.new("julio")

chen = Instructor.new("Chen")
ramirez = Instructor.new("Ramirez")
fernandez = Instructor.new("Fernandez")
paulino = Instructor.new("paulino")
park = Instructor.new("park")

test1 = BoatingTest.new(r, "test1", "n/a", chen)
test2 = BoatingTest.new(n, "test2", "n/a", chen)
test3 = BoatingTest.new(j, "test3", "n/a", ramirez)
test4 = BoatingTest.new(yar, "test4", "n/a", fernandez)
test5 = BoatingTest.new(jul, "test5", "n/a", paulino)
test6 = BoatingTest.new(r, "test6", "failed", park)

yar.add_boating_test("test1", "n/a", paulino)
Student.find_student("rich")
Instructor.pass_student("rich", "test1")
Instructor.fail_student("julio", "test5")





binding.pry
0#leave this here to ensure binding.pry isn't the last line
