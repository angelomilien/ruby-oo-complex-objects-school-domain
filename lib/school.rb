# code here!



class School

    attr_reader :name, :roster

    def initialize(name, roster={})
       @name = name
       @roster = roster
    end

    def add_student(student_name, grade)
        
    #    if @roster.has_key?(grade) == false
    #        @roster[grade] = []
    #        @roster[grade] << student_name

    #    elsif @roster.has_key?(grade) == true
    #        @roster[grade] << student_name
    #    end
    @roster[grade] ||= []
    @roster[grade] << student_name 
    
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
       @roster.collect do |k,v|
       @roster[k] = v.sort
        
       end 
       @roster
    end
end