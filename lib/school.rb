require "pry"

class School
    attr_reader :roster


    def initialize(name)
        @roster = {}
    end 

    def add_student(name, grade)
        
        # 1. Pass in the name of the student and the grade 
        # 2. Place the key = grade, make the student's name = value 
        # 3. Push the key and value into a hash. 
        # 4. If hash at this key exsists then shovel in the name
        # 5. If hash at this key does not exsist then create key and shovel in name.
        # 6. If key exsist then shovel in the name. If key doesn't exsist 
          

        if roster.key?(grade) 
            roster[grade] << name
        #if key "grade" exist then push the value, "name" into the empty array. 
        else #we have not seen this grade and we need to create a new one.
            roster[grade] = []
            roster[grade] << name

        #if the key doesn't exist then we should create an array and push that name into the new array. 
         end 
    end 

    def grade(grade)

        roster[grade] 
        
        #returns an array of names   
    end 

    def sort
     roster.map {|grade,name| [grade,name.sort] }.to_h
        
    end 

end 
