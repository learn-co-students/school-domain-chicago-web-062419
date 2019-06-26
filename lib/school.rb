# code here!
class School
    attr_accessor :name, :roster
    def initialize(name = "", roster = {})
        @name = name
        @roster = roster
    end

    def add_student(student, num)
        roster[num] ||= []
    roster[num] << student
    end

    def grade(num)
        roster.each do
            |key, val| 
            if key == num
                return val
            end
        end
    end

    def sort
        hash = {}
        roster.each do |key, val| 
          hash[key] = val.sort 
        end 
        hash

    end




end