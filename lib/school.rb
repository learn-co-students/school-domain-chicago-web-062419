# code here!
class School
    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end


    def add_student (name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
            @roster[grade] << name
        else
            @roster[grade] << name
        end
    end
    
    def grade(grade)
        @roster[grade]
    end

    def sort
    #    @roster[grade].sort
       @roster.each do |k, v|
            v.sort!
       end
    end
end
