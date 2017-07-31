class School
  def initialize
    @grades = Hash.new { |hash, grade| hash[grade] = [] }
  end

  def add(student, grade)
    @grades[grade] << student
    @grades[grade].sort!
  end

  def students(grade_num)
    @grades[grade_num].sort
  end
  
  def students_by_grade
    @grades.sort.map { |grades, students|
      { :grade => grades, :students => students }
    }
  end
end

module BookKeeping
  VERSION = 3
end
