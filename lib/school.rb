require 'pry'
# code here!
class School
    def initialize(model)
        @model = model
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] =[]
            @roster[grade] << name
        else
            @roster[grade] << name
        end
    end
    
    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each {|k, v| v.sort! }
        # binding.pry
    end
end

# school = School.new("Bayside High School")
# # p school
# # puts school.roster
# school.add_student("Jimbo", 10)
# # puts school.roster
# school.add_student("Yolanda", 11)
# # puts school.roster
# school.add_student("Forest", 7)
# puts school.roster
# p school.grade(10)
# p school.sort