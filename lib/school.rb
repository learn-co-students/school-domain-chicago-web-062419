require "pry"

class School

    attr_accessor :school_name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end
end

school = School.new("Liceul Teoretic Zalau")

# p school

school.add_student("Adrian", 9)
school.add_student("Mihai", 8)
school.add_student("Atty", 11)
school.add_student("Mark", 9)
school.add_student("Andreea", 12)
school.add_student("John", 9)
school.add_student("Dana", 8)
school.add_student("Mary", 11)
school.add_student("Alejandro", 9)
school.add_student("Fahreed", 12)

p school.sort
# puts school.roster
# puts school.grade(9)