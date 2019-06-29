# code here!

class School 
attr_accessor :name, :roster

    
def initialize(name)
    @name = name 
    @roster = {}
    end 
    
def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name 
end 
# when adding a new student without overwriting the same grade as a key and erasing the value
# .unless already exits? ||= (i get this is or statement, but dont understand why we used it here. )

def grade(grade_level)
    roster[grade_level]
    end 

def sort
    sorted = {}
    roster.each do |grade, students|
        sorted[grade] = students.sort 
    end 
    sorted 
end 

end 





