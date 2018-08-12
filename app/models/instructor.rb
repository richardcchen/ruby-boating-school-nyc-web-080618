class Instructor
attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(first_name, test_name)
    student = Student.find_student(first_name)
    BoatingTest.all.each do |boatingtest_instance|
      #binding.pry
      if boatingtest_instance.student == student && boatingtest_instance.test_name == test_name
        boatingtest_instance.test_status = "passed"
      end
    end
  end

  def self.fail_student(first_name, test_name)
    student = Student.find_student(first_name)
    BoatingTest.all.each do |boatingtest_instance|
      #binding.pry
      if boatingtest_instance.student == student && boatingtest_instance.test_name == test_name
        boatingtest_instance.test_status = "failed"
      end
    end
  end

  def self.student_grade_percentage(first_name)
    alltests = 0
    allpassed = 0
    student = Student.find_student(first_name)

    BoatingTest.all.each do |boatingtest_instance|
      if boatingtest_instance.student == student
          if boatingtest_instance.test_status == "passed" || boatingtest_instance.test_status == "failed"
            alltests += 1
            # binding.pry
            if boatingtest_instance.test_status == "passed"
              allpassed += 1
            end
          end
      end
    end
    (allpassed.to_f / alltests)
  end

end
