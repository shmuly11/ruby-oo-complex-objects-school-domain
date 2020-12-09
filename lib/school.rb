# code here!
require 'pry'
class School
    attr_accessor :roster
    def initialize(school_name)
        @school_name = school_name
        @roster = {}

        def add_student(name, grade)
            roster[grade] ||= roster[grade] = []
            roster[grade] << name      
        end

        def grade(num)
            roster[num]
        end

        #def sort
       #     roster.select { |grade, name| name.sort}
       #     #roster[grade][name].sort
        #end

        def sort
            sorted = {}
             @roster.each do | grade, students |
            sorted[grade] = students.sort        
                end
            sorted
        end
    end
end