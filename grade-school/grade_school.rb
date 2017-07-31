class School
  def initialize
    @grades = []
  end

  def students(grade)
    @grades[grade] ||= []
    @grades[grade].sort
  end

  def add(student, grade)
    (@grades[grade] ||= []) << student
    students(grade)
  end

  def students_by_grade
    school = []
    unless @grades.empty?
      @grades.each_with_index do |v, i|
        next if v.nil?
        school << {grade:i, students: v.sort}
      end
    end
    school
  end
end

module BookKeeping
  VERSION = 3
end
