class School

    attr_reader :roster, :name
    attr_writer :roster, :name
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        # ||= allows for name to be pushed in to @roster when the grade is existing.
        @roster[grade] ||= []
        @roster[grade] << name
        puts @roster
    end

    def grade(student_grade)
        @roster[student_grade]
    end

    def sort
        sorted = {}
        @roster.each do |grade, students|
            sorted[grade] = students.sort
    end
    sorted
  end

end

blackwell = School.new("Blackwell Elementary")
puts blackwell
puts blackwell.name
puts blackwell.add_student("AC Slater", 9)
puts blackwell.add_student("Kelly Kapowski", 9)
puts blackwell.add_student("Screech", 11)
puts @roster
puts blackwell.grade(9)