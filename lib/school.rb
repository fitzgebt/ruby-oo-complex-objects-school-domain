require 'pry'

class School
    attr_accessor :roster, :school_name, :student_name, :grade

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
        @student_name              
    end

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else @roster[grade] = []
            @roster[grade] << student_name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.sort.to_h.each do |grade, student_name|
                student_name.sort!
        end
    end
        
end