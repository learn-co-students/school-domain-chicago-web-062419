# code here!
class School

    attr_accessor :roster, :add_student, :grade
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
            @roster[grade] << student_name
        else
            @roster[grade] << student_name
        end
    end

    def grade (grade)
        @roster[grade]
    end

    def sort
        @roster.each do |x, y|
            y.sort!
        end
    end

end
