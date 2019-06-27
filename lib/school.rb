# code here! 

class School
 
attr_reader :roster, :name
    # need reader for roster

def initialize(school_name)
    @school_name = school_name
    @roster = {}
end 


## if grade isnt there then initialise and push otherwise push the name
def add_student (name,grade)
    if  @roster[grade] == nil
        @roster[grade] = []
        @roster[grade] << name
    else 
        @roster[grade] << name
    end 
end     

#retrieve students from the grade

def grade(grade)
    @roster[grade]
end 

#sort the array of student names of each grade 

#  us v.sort! to sort the array. the bang ! is destructive to the original array

def sort
@roster.each do |key,value|
    value.sort!
end 
end 

end

# baily_rd = School.new("bailyrd")
# baily_rd.grade(10)