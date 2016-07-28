# code here!
class School

  attr_accessor :roster
  attr_reader :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name,grade)
    if roster.has_key?(grade)
       roster[grade] << student_name
    else

      roster[grade] = []
      roster[grade] << student_name
      #create a new key and value
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each { |grade, name_array| name_array.sort! }
  end


end
